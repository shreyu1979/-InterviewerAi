const express = require("express");
const router = express.Router();

const db = require("../config/database");


// =========================================================
// GET USER PROFILE + PROGRESS
// =========================================================

router.get("/profile/:userId", (req, res) => {

    const userId = req.params.userId;

    // Make sure userId is actually a number
    if (!userId || isNaN(Number(userId))) {

        return res.status(400).json({
            success: false,
            message: "Invalid user ID"
        });

    }


    const sql = `
        SELECT

            u.id,
            u.name,
            u.email,
            u.bio,
            u.profile_photo,
            u.created_at,

            /* =========================================
               TESTS COMPLETED
            ========================================= */

            (
                SELECT COUNT(*)
                FROM test_results tr
                WHERE tr.user_id = u.id
            ) AS testsCompleted,


            /* =========================================
               AVERAGE SCORE
            ========================================= */

            (
                SELECT COALESCE(
                    ROUND(AVG(tr.percentage), 2),
                    0
                )
                FROM test_results tr
                WHERE tr.user_id = u.id
            ) AS averageScore,


            /* =========================================
               HIGHEST SCORE
            ========================================= */

            (
                SELECT COALESCE(
                    MAX(tr.percentage),
                    0
                )
                FROM test_results tr
                WHERE tr.user_id = u.id
            ) AS highestScore,


            /* =========================================
               COMPLETION
               
               completed tests / started tests * 100
            ========================================= */

           (
    CASE

        WHEN (
            SELECT COUNT(*)
            FROM tests t
            WHERE t.user_id = u.id
        ) = 0

        THEN 0

        ELSE LEAST(
            100,
            ROUND(
                (
                    (
                        SELECT COUNT(*)
                        FROM test_results tr2
                        WHERE tr2.user_id = u.id
                    )
                    /
                    (
                        SELECT COUNT(*)
                        FROM tests t2
                        WHERE t2.user_id = u.id
                    )
                ) * 100,
                2
            )
        )

    END
) AS completion


        FROM users u

        WHERE u.id = ?
    `;


    db.query(sql, [userId], (err, results) => {

        if (err) {

            console.error(
                "Profile fetch error:",
                err
            );

            return res.status(500).json({

                success: false,

                message: "Database error"

            });

        }


        if (results.length === 0) {

            return res.status(404).json({

                success: false,

                message: "User not found"

            });

        }


        const row = results[0];


        res.json({

            success: true,

            message:
                "Profile fetched successfully",

            profile: {

                id: row.id,

                name: row.name,

                email: row.email,

                bio: row.bio,

                profile_photo:
                    row.profile_photo,

                created_at:
                    row.created_at

            },

            progress: {

                testsCompleted:
                    Number(row.testsCompleted || 0),

                averageScore:
                    Number(row.averageScore || 0),

                highestScore:
                    Number(row.highestScore || 0),

                completion:
                    Number(row.completion || 0)

            }

        });

    });

});



// =========================================================
// UPDATE USER PROFILE
// =========================================================

router.put("/profile/:userId", (req, res) => {

    const userId = req.params.userId;

    const {
        name,
        email,
        bio
    } = req.body;


    if (!userId || isNaN(Number(userId))) {

        return res.status(400).json({

            success: false,

            message: "Invalid user ID"

        });

    }


    if (!name || !email) {

        return res.status(400).json({

            success: false,

            message:
                "Name and email are required"

        });

    }


    const sql = `
        UPDATE users

        SET
            name = ?,
            email = ?,
            bio = ?

        WHERE id = ?
    `;


    db.query(
        sql,
        [
            name.trim(),
            email.trim().toLowerCase(),
            bio || "",
            userId
        ],
        (err, results) => {

            if (err) {

                console.error(
                    "Profile update error:",
                    err
                );

                return res.status(500).json({

                    success: false,

                    message:
                        "Database error"

                });

            }


            if (results.affectedRows === 0) {

                return res.status(404).json({

                    success: false,

                    message:
                        "User not found"

                });

            }


            res.json({

                success: true,

                message:
                    "Profile updated successfully"

            });

        }
    );

});


module.exports = router;    