const express = require("express");
const router = express.Router();
const db = require("../config/database");

// GET practice questions by skill
router.get("/practice/questions", (req, res) => {
    const { skill } = req.query;

    if (!skill) {
        return res.status(400).json({
            message: "Skill is required"
        });
    }

    const sql = `
        SELECT
            id,
            skill,
            difficulty,
            question,
            option_a,
            option_b,
            option_c,
            option_d,
            explanation
        FROM questions
        WHERE skill = ?
        LIMIT 10
    `;

    db.query(sql, [skill], (err, results) => {
        if (err) {
            console.error(err);

            return res.status(500).json({
                message: "Database error"
            });
        }

        res.json({
            success: true,
            skill: skill,
            count: results.length,
            questions: results
        });
    });
});

// POST submit answer
router.post("/questions/submit", (req, res) => {
    const { questionId, answer } = req.body;

    if (!questionId || !answer) {
        return res.status(400).json({
            success: false,
            message: "questionId and answer are required"
        });
    }

    const sql = `
        SELECT
            id,
            correct_answer,
            explanation
        FROM questions
        WHERE id = ?
    `;

    db.query(sql, [questionId], (err, results) => {
        if (err) {
            console.error(err);

            return res.status(500).json({
                success: false,
                message: "Database error"
            });
        }

        if (results.length === 0) {
            return res.status(404).json({
                success: false,
                message: "Question not found"
            });
        }

        const question = results[0];

        const isCorrect =
            question.correct_answer.toUpperCase() ===
            answer.toString().trim().toUpperCase();

        res.json({
            success: true,
            questionId: question.id,
            correct: isCorrect,
            correctAnswer: question.correct_answer,
            explanation: question.explanation
        });
    });
});

module.exports = router;