const express = require("express");
const router = express.Router();
const db = require("../config/database");

router.get("/analytics/:userId", (req, res) => {
    const userId = req.params.userId;

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