const express = require("express");
const router = express.Router();
const db = require("../../../config/db");

// ==========================================
// GET ALL QUESTIONS
// ==========================================
router.get("/questions", (req, res) => {
    const { skill, difficulty } = req.query;

    const conditions = [];
    const values = [];

    if (skill) {
        conditions.push("skill = ?");
        values.push(skill);
    }

    if (difficulty) {
        conditions.push("difficulty = ?");
        values.push(difficulty);
    }

    const sql = `
        SELECT 
            id,
            skill,
            question,
            option_a,
            option_b,
            option_c,
            option_d,
            difficulty
        FROM questions
        ${conditions.length ? "WHERE " + conditions.join(" AND ") : ""}
        ORDER BY id
    `;

    db.query(sql, values, (err, results) => {
        if (err) {
            console.error("GET ALL QUESTIONS ERROR:", err);

            return res.status(500).json({
                success: false,
                message: "Database error"
            });
        }

        res.json({
            success: true,
            total: results.length,
            questions: results
        });
    });
});


// ==========================================
// GET RANDOM QUESTIONS
// ==========================================
router.get("/questions/random", (req, res) => {
    const {
        skill,
        difficulty,
        limit = 10
    } = req.query;

    const conditions = [];
    const values = [];

    if (skill) {
        conditions.push("skill = ?");
        values.push(skill);
    }

    if (difficulty) {
        conditions.push("difficulty = ?");
        values.push(difficulty);
    }

    // Minimum = 1
    // Maximum = 50
    const questionLimit = Math.min(
        Math.max(parseInt(limit) || 10, 1),
        50
    );

    const sql = `
        SELECT 
            id,
            skill,
            question,
            option_a,
            option_b,
            option_c,
            option_d,
            difficulty
        FROM questions
        ${conditions.length ? "WHERE " + conditions.join(" AND ") : ""}
        ORDER BY RAND()
        LIMIT ?
    `;

    values.push(questionLimit);

    db.query(sql, values, (err, results) => {
        if (err) {
            console.error("GET RANDOM QUESTIONS ERROR:", err);

            return res.status(500).json({
                success: false,
                message: "Database error"
            });
        }

        res.json({
            success: true,
            total: results.length,
            questions: results
        });
    });
});


// ==========================================
// SUBMIT ANSWER
// ==========================================
router.post("/questions/submit", (req, res) => {

    const {
        questionId,
        answer
    } = req.body;


    // Validate input
    if (!questionId || !answer) {

        return res.status(400).json({
            success: false,
            message: "questionId and answer are required"
        });

    }


    const sql = `
        SELECT
            id,
            question,
            option_a,
            option_b,
            option_c,
            option_d,
            correct_answer,
            explanation
        FROM questions
        WHERE id = ?
    `;


    db.query(sql, [questionId], (err, results) => {

        if (err) {

            console.error(
                "SUBMIT ANSWER ERROR:",
                err
            );

            return res.status(500).json({
                success: false,
                message: "Database error"
            });

        }


        // Question not found
        if (results.length === 0) {

            return res.status(404).json({
                success: false,
                message: "Question not found"
            });

        }


        const question = results[0];


        // User answer
        const userAnswer =
            String(answer)
                .trim()
                .toUpperCase();


        // Correct answer
        const correctAnswer =
            String(question.correct_answer)
                .trim()
                .toUpperCase();


        // Check answer
        const isCorrect =
            userAnswer === correctAnswer;


        // Get correct answer text
        let correctAnswerText = "";


        switch (correctAnswer) {

            case "A":
                correctAnswerText =
                    question.option_a;
                break;

            case "B":
                correctAnswerText =
                    question.option_b;
                break;

            case "C":
                correctAnswerText =
                    question.option_c;
                break;

            case "D":
                correctAnswerText =
                    question.option_d;
                break;

        }


        // Send result
        res.json({

            success: true,

            questionId:
                question.id,

            question:
                question.question,

            userAnswer:
                userAnswer,

            correct:
                isCorrect,

            correctAnswer:
                correctAnswer,

            correctAnswerText:
                correctAnswerText,

            explanation:
                question.explanation ||
                "No explanation available."

        });

    });

});

// ==========================================
// EXPORT ROUTER
// ==========================================
module.exports = router;