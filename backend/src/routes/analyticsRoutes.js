const express = require("express");
const router = express.Router();
const db = require("../config/database");

router.get("/analytics/:userId", (req, res) => {
    const userId = req.params.userId;

    const sql = `
        SELECT
            COUNT(*) AS total_tests,
            COALESCE(AVG(tr.percentage), 0) AS average_score,
            COALESCE(MAX(tr.percentage), 0) AS highest_score
        FROM tests t
        LEFT JOIN test_results tr ON t.id = tr.test_id
        WHERE t.user_id = ?
    `;

    db.query(sql, [userId], (err, results) => {
        if (err) {
            console.error(err);
            return res.status(500).json({
                message: "Database error"
            });
        }

        res.json({
            message: "Analytics fetched successfully",
            analytics: results[0]
        });
    });
});

module.exports = router;