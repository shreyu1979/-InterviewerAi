const express = require("express");
const {
    register,
    login
} = require("../controllers/authController");

const authenticateToken = require("../middleware/authMiddleware");

const router = express.Router();

// Registration
router.post("/register", register);

// Login
router.post("/login", login);

// Protected profile route
router.get("/profile", authenticateToken, (req, res) => {
    res.status(200).json({
        success: true,
        message: "You are authenticated",
        user: req.user
    });
});

module.exports = router;