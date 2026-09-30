const express = require("express");

const router = express.Router();

const db = require("../config/database");


/* =========================================================
   GET PRACTICE QUESTIONS BY SKILL

   GET /api/practice/questions?skill=CSS
========================================================= */

router.get("/practice/questions", (req, res) => {

    const { skill } = req.query;


    if (!skill) {

        return res.status(400).json({

            success: false,

            message:
                "Skill is required"

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


    db.query(
        sql,
        [skill],
        (err, results) => {

            if (err) {

                console.error(
                    "Practice questions error:",
                    err
                );


                return res.status(500).json({

                    success: false,

                    message:
                        "Database error"

                });

            }


            return res.json({

                success: true,

                skill: skill,

                count:
                    results.length,

                questions:
                    results

            });

        }
    );

});


/* =========================================================
   GET RANDOM QUESTIONS BY SKILL

   GET /api/questions/random?skill=CSS&limit=20
========================================================= */

router.get("/questions/random", (req, res) => {

    const skill =
        req.query.skill;


    const requestedLimit =
        parseInt(
            req.query.limit,
            10
        );


    if (!skill) {

        return res.status(400).json({

            success: false,

            message:
                "Skill is required"

        });

    }


    /*
     * Keep the limit safe.
     *
     * Default = 20
     * Maximum = 100
     */

    const limit =
        Number.isInteger(requestedLimit) &&
        requestedLimit > 0 &&
        requestedLimit <= 100

            ? requestedLimit

            : 20;


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

        ORDER BY RAND()

        LIMIT ${limit}
    `;


    db.query(
        sql,
        [skill],
        (err, results) => {

            if (err) {

                console.error(
                    "Random questions error:",
                    err
                );


                return res.status(500).json({

                    success: false,

                    message:
                        "Database error"

                });

            }


            return res.json({

                success: true,

                skill: skill,

                count:
                    results.length,

                questions:
                    results

            });

        }
    );

});


/* =========================================================
   POST SUBMIT ANSWER

   POST /api/questions/submit
========================================================= */

router.post(
    "/questions/submit",
    (req, res) => {

        const {
            questionId,
            answer
        } = req.body;


        if (
            !questionId ||
            !answer
        ) {

            return res.status(400).json({

                success: false,

                message:
                    "questionId and answer are required"

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


        db.query(
            sql,
            [questionId],
            (err, results) => {

                if (err) {

                    console.error(
                        "Question submit error:",
                        err
                    );


                    return res.status(500).json({

                        success: false,

                        message:
                            "Database error"

                    });

                }


                if (
                    results.length === 0
                ) {

                    return res.status(404).json({

                        success: false,

                        message:
                            "Question not found"

                    });

                }


                const question =
                    results[0];


                const correctAnswer =
                    question.correct_answer
                        ?.toString()
                        .trim()
                        .toUpperCase();


                const userAnswer =
                    answer
                        .toString()
                        .trim()
                        .toUpperCase();


                const isCorrect =
                    correctAnswer ===
                    userAnswer;


                return res.json({

                    success: true,

                    questionId:
                        question.id,

                    correct:
                        isCorrect,

                    correctAnswer:
                        question.correct_answer,

                    explanation:
                        question.explanation

                });

            }
        );

    }
);


/* =========================================================
   EXPORT ROUTER
========================================================= */

module.exports = router;