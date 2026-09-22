const express = require("express");
const router = express.Router();
const db = require("../config/database");
const authenticateToken = require("../middleware/authMiddleware");

// GET USER PROFILE
router.get("/profile/:userId", authenticateToken, (req, res) => {
    const userId = req.params.userId;

    const sql = `
        SELECT id, name, email, bio, profile_photo, created_at
        FROM users
        WHERE id = ?
    `;

    db.query(sql, [userId], (err, results) => {
        if (err) {
            console.error(err);
            return res.status(500).json({
                message: "Database error"
            });
        }

        if (results.length === 0) {
            return res.status(404).json({
                message: "User not found"
            });
        }

        res.json({
            message: "Profile fetched successfully",
            profile: results[0]
        });
    });
});


// UPDATE USER PROFILE
router.put("/profile/:userId", authenticateToken, (req, res) => {
    const userId = req.params.userId;
    const { name, email, bio } = req.body;

    if (!name || !email) {
        return res.status(400).json({
            message: "Name and email are required"
        });
    }

    const sql = `
        UPDATE users
        SET name = ?, email = ?, bio = ?
        WHERE id = ?
    `;

    db.query(sql, [name, email, bio, userId], (err, results) => {
        if (err) {
            console.error(err);

            return res.status(500).json({
                message: "Database error"
            });
        }

        if (results.affectedRows === 0) {
            return res.status(404).json({
                message: "User not found"
            });
        }

        res.json({
            message: "Profile updated successfully"
        });
    });
});

module.exports = router;