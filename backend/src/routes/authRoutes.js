const express = require("express");

const {
    register,
    login,
    logout
} = require("../controllers/authController");

const authenticateToken = require("../middleware/authMiddleware");

const router = express.Router();


// Registration
router.post("/register", register);


// Login
router.post("/login", login);


// Logout
router.post("/logout", authenticateToken, logout);


// Protected profile route
router.get("/profile", authenticateToken, (req, res) => {
    res.status(200).json({
        success: true,
        message: "You are authenticated",
        user: req.user
    });
});


module.exports = router;
