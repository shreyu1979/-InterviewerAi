const express = require("express");
const router = express.Router();
const db = require("../config/database");

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
            correct_answer
        FROM questions
        WHERE id = ?
    `;

    db.query(sql, [questionId], (err, results) => {
        if (err) {
            console.error("SUBMIT ANSWER ERROR:", err);

            return res.status(500).json({
                success: false,
                message: "Database error"
            });
        }

        // Question does not exist
        if (results.length === 0) {
            return res.status(404).json({
                success: false,
                message: "Question not found"
            });
        }

        const question = results[0];

        // Compare answers safely
        const userAnswer = String(answer).trim().toUpperCase();
        const correctAnswer = String(question.correct_answer)
            .trim()
            .toUpperCase();

        const isCorrect = userAnswer === correctAnswer;

        res.json({
            success: true,
            questionId: question.id,
            correct: isCorrect,
            correctAnswer: question.correct_answer
        });
    });
});


// ==========================================
// EXPORT ROUTER
// ==========================================
module.exports = router;