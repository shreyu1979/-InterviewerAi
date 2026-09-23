const express = require("express");
const router = express.Router();

const db = require("../config/database");
const authenticateToken = require("../middleware/authMiddleware");


router.get("/analytics/:userId", authenticateToken, (req, res) => {

    const userId = Number(req.params.userId);

    // Make sure the logged-in user can only access their own analytics
    if (userId !== req.user.userId) {
        return res.status(403).json({
            success: false,
            message: "You are not authorized to access these analytics"
        });
    }

    const sql = `
        SELECT
            COUNT(tr.id) AS tests_completed,
            COALESCE(AVG(tr.percentage), 0) AS average_score,
            COALESCE(MAX(tr.percentage), 0) AS highest_score,
            CASE
                WHEN COUNT(tr.id) > 0 THEN 100
                ELSE 0
            END AS completion
        FROM tests t
        LEFT JOIN test_results tr
            ON t.id = tr.test_id
        WHERE t.user_id = ?
    `;

    db.query(sql, [userId], (err, results) => {

        if (err) {
            console.error("Analytics error:", err);

            return res.status(500).json({
                success: false,
                message: "Database error"
            });
        }

        return res.status(200).json({
            success: true,
            message: "Analytics fetched successfully",
            analytics: results[0]
        });
    });
});


module.exports = router;