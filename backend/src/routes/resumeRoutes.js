const express = require("express");
const multer = require("multer");
const path = require("path");
const fs = require("fs");
const { PDFParse } = require("pdf-parse");

const db = require("../config/database");

const router = express.Router();

const uploadDir = path.join(__dirname, "../../uploads");

if (!fs.existsSync(uploadDir)) {
    fs.mkdirSync(uploadDir, { recursive: true });
}

const storage = multer.memoryStorage();

const upload = multer({
    storage,
    limits: {
        fileSize: 5 * 1024 * 1024
    },
    fileFilter: (req, file, cb) => {
        const extension = path.extname(file.originalname).toLowerCase();

        if (extension !== ".pdf") {
            return cb(new Error("Only PDF files are allowed."));
        }

        cb(null, true);
    }
});

function isResume(text) {
    const resumeKeywords = [
        "education",
        "skills",
        "experience",
        "projects",
        "certifications",
        "summary",
        "linkedin",
        "resume",
        "objective"
    ];

    const lowerText = text.toLowerCase();

    const matches = resumeKeywords.filter(keyword =>
        lowerText.includes(keyword)
    );

    return matches.length >= 2;
}

function extractResumeData(text) {
    const emailMatch = text.match(
        /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}/i
    );

    const linkedinMatch = text.match(
        /https?:\/\/(?:www\.)?linkedin\.com\/[^\s]+/i
    );

    const lines = text
        .split(/\r?\n/)
        .map(line => line.trim())
        .filter(Boolean);

    const name =
        lines.find(line =>
            /^[A-Za-z][A-Za-z .'-]{2,60}$/.test(line)
        ) || null;

    const education = [];
    const skills = [];
    const experience = [];
    const projects = [];
    const certifications = [];

    let currentSection = "";

    for (const line of lines) {
        const lower = line.toLowerCase();

        if (lower.includes("education")) {
            currentSection = "education";
            continue;
        }

        if (
            lower.includes("skill") &&
            !lower.includes("technical skill")
        ) {
            currentSection = "skills";
            continue;
        }

        if (lower.includes("experience")) {
            currentSection = "experience";
            continue;
        }

        if (lower.includes("project")) {
            currentSection = "projects";
            continue;
        }

        if (lower.includes("certification")) {
            currentSection = "certifications";
            continue;
        }

        if (
            lower.includes("summary") ||
            lower.includes("objective") ||
            lower.includes("profile")
        ) {
            currentSection = "summary";
            continue;
        }

        if (currentSection === "education") {
            education.push(line);
        } else if (currentSection === "skills") {
            skills.push(line);
        } else if (currentSection === "experience") {
            experience.push(line);
        } else if (currentSection === "projects") {
            projects.push(line);
        } else if (currentSection === "certifications") {
            certifications.push(line);
        }
    }

    return {
        name,
        email: emailMatch ? emailMatch[0] : null,
        linkedin: linkedinMatch ? linkedinMatch[0] : null,
        education,
        skills,
        experience,
        projects,
        certifications,
        summary: text.slice(0, 1000)
    };
}

router.post("/resume/upload/:userId", upload.single("resume"), async (req, res) => {
    let savedFilePath = null;

    try {
        const userId = req.params.userId;

        if (!req.file) {
            return res.status(400).json({
                success: false,
                message: "Resume PDF is required."
            });
        }

        const userSql = `
            SELECT id
            FROM users
            WHERE id = ?
        `;

        const [users] = await db.promise().query(userSql, [userId]);

        if (users.length === 0) {
            return res.status(404).json({
                success: false,
                message: "User not found."
            });
        }

        const pdfBuffer = req.file.buffer;

        const pdfHeader = pdfBuffer
            .subarray(0, 4)
            .toString();

        if (pdfHeader !== "%PDF") {
            return res.status(400).json({
                success: false,
                message: "Invalid PDF file."
            });
        }

        const parser = new PDFParse({
            data: pdfBuffer
        });

        const parsed = await parser.getText();

        await parser.destroy();

        const extractedText = parsed.text || "";

        if (!isResume(extractedText)) {
            return res.status(400).json({
                success: false,
                message: "The uploaded PDF does not appear to be a resume."
            });
        }

        const resumeData = extractResumeData(extractedText);

        const uniqueFileName =
            `${Date.now()}-${Math.random().toString(36).substring(2, 10)}.pdf`;

        savedFilePath = path.join(uploadDir, uniqueFileName);

        fs.writeFileSync(savedFilePath, pdfBuffer);

        const insertSql = `
            INSERT INTO resumes
            (
                user_id,
                file_name,
                original_name,
                linkedin,
                education,
                skills,
                experience,
                projects,
                certifications,
                summary,
                extracted_text
            )
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `;

        const values = [
            userId,
            uniqueFileName,
            req.file.originalname,
            resumeData.linkedin,
            JSON.stringify(resumeData.education),
            JSON.stringify(resumeData.skills),
            JSON.stringify(resumeData.experience),
            JSON.stringify(resumeData.projects),
            JSON.stringify(resumeData.certifications),
            resumeData.summary,
            extractedText
        ];

        const [result] = await db.promise().query(insertSql, values);

        return res.status(201).json({
            success: true,
            message: "Resume uploaded and processed successfully.",
            resumeId: result.insertId,
            resume: resumeData
        });

    } catch (error) {
        console.error("RESUME UPLOAD ERROR:", error);

        if (savedFilePath && fs.existsSync(savedFilePath)) {
            fs.unlinkSync(savedFilePath);
        }

        return res.status(500).json({
            success: false,
            message: "Failed to upload and process resume."
        });
    }
});

router.get("/resume/:userId", async (req, res) => {
    try {
        const userId = req.params.userId;

        const sql = `
            SELECT
                id,
                user_id,
                file_name,
                original_name,
                linkedin,
                education,
                skills,
                experience,
                projects,
                certifications,
                summary,
                extracted_text,
                created_at
            FROM resumes
            WHERE user_id = ?
            ORDER BY created_at DESC
            LIMIT 1
        `;

        const [results] = await db.promise().query(sql, [userId]);

        if (results.length === 0) {
            return res.status(404).json({
                success: false,
                message: "Resume not found."
            });
        }

        const resume = results[0];

        const jsonFields = [
            "education",
            "skills",
            "experience",
            "projects",
            "certifications"
        ];

        for (const field of jsonFields) {
            if (typeof resume[field] === "string") {
                try {
                    resume[field] = JSON.parse(resume[field]);
                } catch {
                    resume[field] = [];
                }
            }
        }

        return res.json({
            success: true,
            message: "Resume fetched successfully.",
            resume
        });

    } catch (error) {
        console.error("GET RESUME ERROR:", error);

        return res.status(500).json({
            success: false,
            message: "Failed to fetch resume."
        });
    }
});

router.use((error, req, res, next) => {
    if (error instanceof multer.MulterError) {
        if (error.code === "LIMIT_FILE_SIZE") {
            return res.status(400).json({
                success: false,
                message: "File size must be less than 5 MB."
            });
        }

        return res.status(400).json({
            success: false,
            message: error.message
        });
    }

    if (error) {
        return res.status(400).json({
            success: false,
            message: error.message
        });
    }

    next();
});

module.exports = router;