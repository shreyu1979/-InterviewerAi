const express = require("express");
const multer = require("multer");
const path = require("path");
const db = require("../config/db");
const extractTextFromPDF = require("../utils/pdfExtractor");

const router = express.Router();

// ===============================
// MULTER STORAGE CONFIGURATION
// ===============================

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "uploads/");
    },

    filename: (req, file, cb) => {
        const uniqueName = Date.now() + "-" + file.originalname;
        cb(null, uniqueName);
    }
});

// ===============================
// FILE TYPE VALIDATION
// ===============================

const upload = multer({
    storage: storage,

    fileFilter: (req, file, cb) => {
        const allowedTypes = [".pdf", ".doc", ".docx"];
        const extension = path.extname(file.originalname).toLowerCase();

        if (allowedTypes.includes(extension)) {
            cb(null, true);
        } else {
            cb(new Error("Only PDF, DOC, and DOCX files are allowed"));
        }
    }
});

// ===============================
// TEST ROUTE
// ===============================

router.get("/test", (req, res) => {
    res.json({
        success: true,
        message: "Resume Analysis API is working!"
    });
});

// ===============================
// RESUME UPLOAD ROUTE
// ===============================

router.post("/upload", upload.single("resume"), (req, res) => {

    if (!req.file) {
        return res.status(400).json({
            success: false,
            message: "Resume file is required"
        });
    }

    const userId = req.body.user_id;

    if (!userId) {
        return res.status(400).json({
            success: false,
            message: "user_id is required"
        });
    }

    const sql = `
        INSERT INTO resumes
        (user_id, file_name, file_path, file_size)
        VALUES (?, ?, ?, ?)
    `;

    const values = [
        userId,
        req.file.originalname,
        req.file.path,
        req.file.size
    ];

    db.query(sql, values, (err, result) => {

        if (err) {
            console.error(
                "Resume upload database error:",
                err.message
            );

            return res.status(500).json({
                success: false,
                message: "Failed to save resume information"
            });
        }

        res.status(201).json({
            success: true,
            message: "Resume uploaded successfully",
            resume_id: result.insertId,
            filename: req.file.filename
        });
    });
});

// ===============================
// RESUME ANALYSIS ROUTE
// ===============================

router.post("/analyze", async (req, res) => {

    const { resume_id } = req.body;

    if (!resume_id) {
        return res.status(400).json({
            success: false,
            message: "resume_id is required"
        });
    }

    const checkSql = `
        SELECT id, file_path, file_name
        FROM resumes
        WHERE id = ?
    `;

    db.query(checkSql, [resume_id], async (err, rows) => {

        if (err) {
            console.error(
                "Resume check error:",
                err.message
            );

            return res.status(500).json({
                success: false,
                message: "Database error"
            });
        }

        if (rows.length === 0) {
            return res.status(404).json({
                success: false,
                message: "Resume not found"
            });
        }

        const resume = rows[0];

        try {

            // ===============================
            // EXTRACT TEXT FROM PDF
            // ===============================

            const resumeText = await extractTextFromPDF(
                resume.file_path
            );

            console.log("Resume text extracted successfully");

            // ===============================
            // BASIC RESUME ANALYSIS
            // ===============================

            const skills = [];
            const education = [];
            const qualification = [];

            const text = resumeText.toLowerCase();

            // ===============================
            // DETECT SKILLS
            // ===============================

            const possibleSkills = [
                "javascript",
                "java",
                "python",
                "react",
                "node.js",
                "node",
                "express",
                "mysql",
                "mongodb",
                "html",
                "css",
                "git",
                "github",
                "sql"
            ];

            possibleSkills.forEach((skill) => {

                if (text.includes(skill.toLowerCase())) {
                    skills.push(skill);
                }

            });

            // ===============================
            // DETECT EDUCATION
            // ===============================

            const educationKeywords = [
                "bachelor",
                "b.tech",
                "btech",
                "b.e",
                "be",
                "master",
                "m.tech",
                "mtech",
                "mca",
                "bca",
                "degree",
                "diploma"
            ];

            educationKeywords.forEach((item) => {

                if (text.includes(item.toLowerCase())) {
                    education.push(item);
                }

            });

            // ===============================
            // DETECT QUALIFICATION
            // ===============================

            const qualificationKeywords = [
                "computer science",
                "information technology",
                "engineering",
                "software engineering",
                "computer engineering"
            ];

            qualificationKeywords.forEach((item) => {

                if (text.includes(item.toLowerCase())) {
                    qualification.push(item);
                }

            });

            // ===============================
            // SAVE ANALYSIS
            // ===============================

            const insertSql = `
                INSERT INTO resume_analysis
                (resume_id, skills, education, qualification)
                VALUES (?, ?, ?, ?)
            `;

            const values = [
                resume_id,
                JSON.stringify(skills),
                JSON.stringify(education),
                JSON.stringify(qualification)
            ];

            db.query(insertSql, values, (err, result) => {

                if (err) {
                    console.error(
                        "Resume analysis database error:",
                        err.message
                    );

                    return res.status(500).json({
                        success: false,
                        message: "Failed to save resume analysis"
                    });
                }

                res.status(201).json({
                    success: true,
                    message: "Resume analyzed successfully",
                    analysis_id: result.insertId,
                    resume_id: resume_id,
                    extracted_text_length: resumeText.length,
                    skills: skills,
                    education: education,
                    qualification: qualification
                });

            });

        } catch (error) {

            console.error(
                "Resume processing error:",
                error.message
            );

            return res.status(500).json({
                success: false,
                message: "Failed to read resume PDF"
            });

        }

    });

});

// ===============================
// GET RESUME ANALYSIS
// ===============================

router.get("/analysis/:resume_id", (req, res) => {

    const resumeId = req.params.resume_id;

    const sql = `
        SELECT *
        FROM resume_analysis
        WHERE resume_id = ?
        ORDER BY id DESC
        LIMIT 1
    `;

    db.query(sql, [resumeId], (err, rows) => {

        if (err) {
            console.error(
                "Get resume analysis error:",
                err.message
            );

            return res.status(500).json({
                success: false,
                message: "Failed to fetch resume analysis"
            });
        }

        if (rows.length === 0) {
            return res.status(404).json({
                success: false,
                message: "Resume analysis not found"
            });
        }

        res.status(200).json({
            success: true,
            message: "Resume analysis fetched successfully",
            analysis: rows[0]
        });
    });
});

// ===============================
// EXPORT ROUTER
// ===============================

module.exports = router;