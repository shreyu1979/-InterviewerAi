const express = require("express");
const multer = require("multer");
const path = require("path");
const fs = require("fs");

const db = require("../config/db");

const extractTextFromPDF = require("../utils/pdfExtractor");

const router = express.Router();


/* =========================================================
   UPLOAD DIRECTORY
========================================================= */

const uploadDir = path.join(__dirname, "..", "uploads");

if (!fs.existsSync(uploadDir)) {
    fs.mkdirSync(uploadDir, { recursive: true });
}


/* =========================================================
   MULTER STORAGE
========================================================= */

const storage = multer.diskStorage({

    destination: function (req, file, cb) {

        cb(null, uploadDir);

    },

    filename: function (req, file, cb) {

        const uniqueName =
            Date.now() +
            "-" +
            file.originalname.replace(/\s+/g, "_");

        cb(null, uniqueName);

    }

});


/* =========================================================
   PDF ONLY VALIDATION
========================================================= */

const upload = multer({

    storage: storage,

    limits: {
        fileSize: 5 * 1024 * 1024
    },

    fileFilter: function (req, file, cb) {

        const isPDF =
            file.mimetype === "application/pdf" ||
            path.extname(file.originalname).toLowerCase() === ".pdf";

        if (!isPDF) {

            return cb(
                new Error("Only PDF files are allowed.")
            );

        }

        cb(null, true);

    }

});


/* =========================================================
   PDF TEXT EXTRACTION
========================================================= */

// async function extractTextFromPDF(filePath) {

//     console.log("=================================");
//     console.log("PDF TEXT EXTRACTION");
//     console.log("=================================");

//     try {

//         const absolutePath = path.isAbsolute(filePath)
//             ? filePath
//             : path.join(__dirname, "..", filePath);

//         console.log("PDF path:", absolutePath);

//         if (!fs.existsSync(absolutePath)) {

//             throw new Error(
//                 "PDF file does not exist."
//             );

//         }

//         const dataBuffer =
//             fs.readFileSync(absolutePath);

//         console.log(
//             "PDF buffer size:",
//             dataBuffer.length
//         );

//         const data =
//             await pdfParse(dataBuffer);

//         console.log(
//             "PDF pages:",
//             data.numpages
//         );

//         const extractedText =
//             data.text || "";

//         console.log(
//             "PDF extracted text length:",
//             extractedText.length
//         );

//         console.log(
//             "PDF text preview:",
//             extractedText.substring(0, 500)
//         );

//         return extractedText.trim();

//     }
//     catch (error) {

//         console.error(
//             "PDF extraction error:",
//             error
//         );

//         throw error;
//     }
// }


/* =========================================================
   SKILL DETECTION HELPER
========================================================= */

/*
    IMPORTANT:

    We DO NOT use text.includes(skill)

    because:

    "c"  -> matches communication, computer, etc.
    "r"  -> matches almost every word
    "ai" -> can match unrelated text
    "go" -> can match words containing "go"

    Instead we use word-boundary matching.
*/

function containsSkill(text, skill) {

    const escapedSkill =
        skill.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

    const pattern =
        new RegExp(
            "(^|[^a-zA-Z0-9+#.])" +
            escapedSkill +
            "($|[^a-zA-Z0-9+#.])",
            "i"
        );

    return pattern.test(text);

}


/* =========================================================
   UPLOAD RESUME
========================================================= */

router.post(
    "/upload",
    upload.single("resume"),
    function (req, res) {

        try {

            if (!req.file) {

                return res.status(400).json({

                    success: false,

                    message:
                        "Please upload a PDF resume."

                });

            }


            const filePath =
                req.file.path;


            /*
                If your resumes table has these columns:

                id
                file_name
                file_path
                file_size

                this will work directly.
            */

            const sql = `
    INSERT INTO resumes
    (
        user_id,
        file_name,
        file_path,
        file_size
    )
    VALUES (?, ?, ?, ?)
`;


            db.query(

                sql,

                [
                    req.body.user_id,
                    req.file.originalname,
                    filePath,
                    req.file.size
                ],

                function (error, result) {

                    if (error) {

                        console.error(
                            "Database insert error:",
                            error
                        );

                        return res.status(500).json({

                            success: false,

                            message:
                                "Failed to save resume information.",

                            error:
                                error.message

                        });

                    }


                    res.json({

                        success: true,

                        message:
                            "Resume uploaded successfully.",

                        resume_id:
                            result.insertId,

                        file_name:
                            req.file.originalname,

                        file_size:
                            req.file.size

                    });

                }

            );

        }

        catch (error) {

            console.error(
                "Resume upload error:",
                error
            );


            res.status(500).json({

                success: false,

                message:
                    "Resume upload failed.",

                error:
                    error.message

            });

        }

    }
);


/* =========================================================
   ANALYZE RESUME
========================================================= */

router.post(
    "/analyze",
    async function (req, res) {

        try {

            const resume_id =
                req.body.resume_id;


            if (!resume_id) {

                return res.status(400).json({

                    success: false,

                    message:
                        "resume_id is required."

                });

            }


            console.log(
                "================================="
            );

            console.log(
                "STARTING RESUME ANALYSIS"
            );

            console.log(
                "Resume ID:",
                resume_id
            );

            console.log(
                "================================="
            );


            /* =================================================
               GET RESUME FROM DATABASE
            ================================================= */

            const resumeRows =
                await new Promise(
                    function (resolve, reject) {

                        db.query(

                            `
                            SELECT *
                            FROM resumes
                            WHERE id = ?
                            `,

                            [resume_id],

                            function (
                                error,
                                results
                            ) {

                                if (error) {

                                    reject(error);

                                }

                                else {

                                    resolve(results);

                                }

                            }

                        );

                    }
                );


            if (
                !resumeRows ||
                resumeRows.length === 0
            ) {

                return res.status(404).json({

                    success: false,

                    message:
                        "Resume not found."

                });

            }


            const resume =
                resumeRows[0];


            /* =================================================
               EXTRACT PDF TEXT
            ================================================= */

            console.log(
                "================================="
            );

            console.log(
                "EXTRACTING PDF TEXT"
            );

            console.log(
                "================================="
            );


            const resumeText =
                await extractTextFromPDF(
                    resume.file_path
                );


            console.log(
                "Extracted text length:",
                resumeText.length
            );


            if (!resumeText.trim()) {

                return res.status(400).json({

                    success: false,

                    message:
                        "Could not extract text from this PDF."

                });

            }


            /* =================================================
               NORMALIZE TEXT
            ================================================= */

            const text =
                resumeText
                    .toLowerCase()
                    .replace(/\s+/g, " ")
                    .trim();


            console.log(
                "Resume text preview:"
            );

            console.log(
                resumeText.substring(0, 1000)
            );


            /* =================================================
               PROGRAMMING LANGUAGES
            ================================================= */

            const programmingLanguages = [

                "JavaScript",
                "TypeScript",
                "Python",
                "Java",
                "Core Java",
                "C++",
                "C#",
                "C",
                "R",
                "PHP",
                "Ruby",
                "Go",
                "Golang",
                "Kotlin",
                "Swift",
                "Dart",
                "Scala",
                "Rust",
                "MATLAB",
                "Perl",
                "Shell Scripting",
                "Bash"

            ];


            /* =================================================
               WEB DEVELOPMENT
            ================================================= */

            const webSkills = [

                "HTML",
                "HTML5",
                "CSS",
                "CSS3",
                "Bootstrap",
                "Tailwind",
                "Tailwind CSS",
                "React",
                "React.js",
                "Angular",
                "Vue",
                "Vue.js",
                "Next.js",
                "Node.js",
                "Node",
                "Express",
                "Express.js",
                "jQuery",
                "AJAX",
                "REST API",
                "RESTful API",
                "API Development"

            ];


            /* =================================================
               DATABASE
            ================================================= */

            const databaseSkills = [

                "SQL",
                "MySQL",
                "PostgreSQL",
                "Postgres",
                "MongoDB",
                "Oracle",
                "SQLite",
                "Redis",
                "Firebase",
                "Database Management",
                "Database Design"

            ];


            /* =================================================
               DATA SKILLS
            ================================================= */

            const dataSkills = [

                "Data Analysis",
                "Data Analytics",
                "Data Visualization",
                "Data Science",
                "Pandas",
                "NumPy",
                "Matplotlib",
                "Seaborn",
                "Excel",
                "Microsoft Excel",
                "Power BI",
                "Tableau",
                "Statistics",
                "Machine Learning",
                "Deep Learning"

            ];


            /* =================================================
               AI SKILLS
            ================================================= */

            const aiSkills = [

                "Artificial Intelligence",
                "AI",
                "Machine Learning",
                "Deep Learning",
                "NLP",
                "Natural Language Processing",
                "Computer Vision",
                "TensorFlow",
                "Keras",
                "PyTorch",
                "Scikit-learn",
                "Sklearn",
                "Jupyter",
                "Jupyter Notebook",
                "Google Colab"

            ];


            /* =================================================
               DEVELOPMENT TOOLS
            ================================================= */

            const developmentTools = [

                "Git",
                "GitHub",
                "GitLab",
                "Bitbucket",
                "Docker",
                "Kubernetes",
                "Postman",
                "VS Code",
                "Visual Studio Code",
                "Visual Studio",
                "IntelliJ IDEA",
                "Eclipse",
                "PyCharm",
                "NPM",
                "Yarn",
                "Android Studio"

            ];


            /* =================================================
               CLOUD
            ================================================= */

            const cloudSkills = [

                "AWS",
                "Amazon Web Services",
                "Azure",
                "Microsoft Azure",
                "Google Cloud",
                "GCP",
                "Cloud Computing",
                "DevOps",
                "CI/CD",
                "Jenkins",
                "Terraform"

            ];


            /* =================================================
               ENGINEERING
            ================================================= */

            const engineeringSkills = [

                "Software Development",
                "Software Engineering",
                "Web Development",
                "Full Stack Development",
                "Frontend Development",
                "Backend Development",
                "Object Oriented Programming",
                "OOPS",
                "Data Structures",
                "Algorithms",
                "Problem Solving",
                "Debugging",
                "Testing",
                "Unit Testing",
                "API",
                "Version Control",
                "Database Management",
                "Database Design"

            ];


            /* =================================================
               ADDITIONAL TECHNOLOGIES
            ================================================= */

            const additionalSkills = [

                "hibernate",
                "springboot",
                "spring boot",
                "spring framework",

                "python",
                "core java",

                "android",
                "android studio"

            ];


            /* =================================================
               COMBINE ALL SKILLS
            ================================================= */

            const allSkills = [

                ...programmingLanguages,
                ...webSkills,
                ...databaseSkills,
                ...dataSkills,
                ...aiSkills,
                ...developmentTools,
                ...cloudSkills,
                ...engineeringSkills,
                ...additionalSkills

            ];


            /* =====================================
               DETECT SKILLS
            ===================================== */

            const detectedSkills = new Set();

            function skillExists(text, skill) {

                const normalizedSkill = skill
                    .toLowerCase()
                    .trim();

                /*
                 * Special handling for C, C++ and C#
                 */
                if (
                    normalizedSkill === "c" ||
                    normalizedSkill === "c++" ||
                    normalizedSkill === "c#"
                ) {

                    const escapedSkill = normalizedSkill.replace(
                        /[.*+?^${}()|[\]\\]/g,
                        "\\$&"
                    );

                    const regex = new RegExp(
                        `(^|[^a-zA-Z0-9])${escapedSkill}(?=$|[^a-zA-Z0-9])`,
                        "i"
                    );

                    return regex.test(text);
                }

                /*
                 * Normal skill matching
                 */
                const escapedSkill = normalizedSkill.replace(
                    /[.*+?^${}()|[\]\\]/g,
                    "\\$&"
                );

                const regex = new RegExp(
                    `(^|[^a-zA-Z0-9])${escapedSkill}(?=$|[^a-zA-Z0-9])`,
                    "i"
                );

                return regex.test(text);
            }


            allSkills.forEach((skill) => {

                if (skillExists(resumeText, skill)) {

                    detectedSkills.add(skill);

                }

            });


            const skills = Array.from(detectedSkills);

            console.log(
                "Detected skills:",
                skills
            );

            /* =================================================
               EDUCATION
            ================================================= */

            const educationKeywords = [

                "bachelor",
                "b.tech",
                "btech",
                "b.e",
                "b.e.",
                "be",
                "bca",
                "bsc",
                "b.sc",
                "master",
                "m.tech",
                "mtech",
                "mca",
                "msc",
                "m.sc",
                "degree",
                "diploma",
                "phd",
                "ph.d",
                "10th",
                "12th"

            ];


            const education =
                educationKeywords.filter(
                    function (item) {

                        return containsSkill(
                            text,
                            item
                        );

                    }
                );


            /* =================================================
               QUALIFICATION
            ================================================= */

            const qualificationKeywords = [

                "computer science",
                "computer engineering",
                "information technology",
                "information science",
                "software engineering",
                "electronics engineering",
                "electrical engineering",
                "mechanical engineering",
                "civil engineering",
                "artificial intelligence",
                "data science",
                "business administration"

            ];


            const qualification =
                qualificationKeywords.filter(
                    function (item) {

                        return containsSkill(
                            text,
                            item
                        );

                    }
                );


            console.log(
                "Education:",
                education
            );


            console.log(
                "Qualification:",
                qualification
            );


            /* =================================================
               CONVERT TO JSON
            ================================================= */

            const skillsJSON =
                JSON.stringify(skills);

            const educationJSON =
                JSON.stringify(education);

            const qualificationJSON =
                JSON.stringify(qualification);


            /* =================================================
               CHECK EXISTING ANALYSIS
            ================================================= */

            const existingAnalysis =
                await new Promise(
                    function (resolve, reject) {

                        db.query(

                            `
                            SELECT id
                            FROM resume_analysis
                            WHERE resume_id = ?
                            `,

                            [resume_id],

                            function (
                                error,
                                results
                            ) {

                                if (error) {

                                    reject(error);

                                }

                                else {

                                    resolve(results);

                                }

                            }

                        );

                    }
                );


            /* =================================================
               UPDATE EXISTING ANALYSIS
            ================================================= */

            if (
                existingAnalysis.length > 0
            ) {

                await new Promise(
                    function (resolve, reject) {

                        db.query(

                            `
                            UPDATE resume_analysis
                            SET
                                skills = ?,
                                education = ?,
                                qualification = ?
                            WHERE resume_id = ?
                            `,

                            [
                                skillsJSON,
                                educationJSON,
                                qualificationJSON,
                                resume_id
                            ],

                            function (error) {

                                if (error) {

                                    reject(error);

                                }

                                else {

                                    resolve();

                                }

                            }

                        );

                    }
                );

            }


            /* =================================================
               INSERT NEW ANALYSIS
            ================================================= */

            else {

                await new Promise(
                    function (resolve, reject) {

                        db.query(

                            `
                            INSERT INTO resume_analysis
                            (
                                resume_id,
                                skills,
                                education,
                                qualification
                            )
                            VALUES (?, ?, ?, ?)
                            `,

                            [
                                resume_id,
                                skillsJSON,
                                educationJSON,
                                qualificationJSON
                            ],

                            function (error) {

                                if (error) {

                                    reject(error);

                                }

                                else {

                                    resolve();

                                }

                            }

                        );

                    }
                );

            }


            /* =================================================
               RESPONSE
            ================================================= */

            res.json({

                success: true,

                message:
                    "Resume analyzed successfully.",

                resume_id:
                    resume_id,

                extracted_text_length:
                    resumeText.length,

                analysis: {

                    skills:
                        skills,

                    education:
                        education,

                    qualification:
                        qualification

                }

            });

        }

        catch (error) {

            console.error(
                "Resume analysis error:",
                error
            );


            res.status(500).json({

                success: false,

                message:
                    "Resume analysis failed.",

                error:
                    error.message

            });

        }

    }
);


/* =========================================================
   GET SAVED ANALYSIS
========================================================= */

router.get(
    "/analysis/:resume_id",
    function (req, res) {

        try {

            const resumeId =
                req.params.resume_id;


            db.query(

                `
                SELECT *
                FROM resume_analysis
                WHERE resume_id = ?
                `,

                [resumeId],

                function (
                    error,
                    results
                ) {

                    if (error) {

                        console.error(
                            "Analysis fetch error:",
                            error
                        );

                        return res.status(500).json({

                            success: false,

                            message:
                                "Failed to fetch analysis.",

                            error:
                                error.message

                        });

                    }


                    if (
                        results.length === 0
                    ) {

                        return res.status(404).json({

                            success: false,

                            message:
                                "Resume analysis not found."

                        });

                    }


                    const analysis =
                        results[0];


                    /* =========================================
                       PARSE JSON FIELDS
                    ========================================= */

                    try {

                        if (
                            typeof analysis.skills ===
                            "string"
                        ) {

                            analysis.skills =
                                JSON.parse(
                                    analysis.skills
                                );

                        }


                        if (
                            typeof analysis.education ===
                            "string"
                        ) {

                            analysis.education =
                                JSON.parse(
                                    analysis.education
                                );

                        }


                        if (
                            typeof analysis.qualification ===
                            "string"
                        ) {

                            analysis.qualification =
                                JSON.parse(
                                    analysis.qualification
                                );

                        }

                    }

                    catch (parseError) {

                        console.error(
                            "JSON parse error:",
                            parseError
                        );

                    }


                    res.json({

                        success: true,

                        analysis:
                            analysis

                    });

                }

            );

        }

        catch (error) {

            console.error(
                "Get analysis error:",
                error
            );


            res.status(500).json({

                success: false,

                message:
                    "Failed to retrieve resume analysis.",

                error:
                    error.message

            });

        }

    }
);


/* =========================================================
   MULTER ERROR HANDLER
========================================================= */

router.use(
    function (
        error,
        req,
        res,
        next
    ) {

        if (
            error instanceof multer.MulterError
        ) {

            if (
                error.code ===
                "LIMIT_FILE_SIZE"
            ) {

                return res.status(400).json({

                    success: false,

                    message:
                        "File size must be less than 5 MB."

                });

            }

        }


        if (
            error &&
            error.message ===
            "Only PDF files are allowed."
        ) {

            return res.status(400).json({

                success: false,

                message:
                    "Only PDF files are allowed."

            });

        }


        console.error(
            "Resume route error:",
            error
        );


        res.status(500).json({

            success: false,

            message:
                "Something went wrong.",

            error:
                error
                    ? error.message
                    : "Unknown error"

        });

    }
);


/* =========================================================
   EXPORT ROUTER
========================================================= */

module.exports = router;