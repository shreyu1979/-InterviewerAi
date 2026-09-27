const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const crypto = require("crypto");


const { OAuth2Client } = require("google-auth-library");

const User = require("../models/userModel");
const AuthSession = require("../models/authSessionModel");


const googleClient = new OAuth2Client(
    "95674554000-rocduccu3347ljks8tdu84gm5udth9u4.apps.googleusercontent.com"
);

const register = async (req, res) => {
    try {
        const { name, email, password } = req.body;

        if (!name || !email || !password) {
            return res.status(400).json({
                success: false,
                message: "Name, email and password are required"
            });
        }

        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!emailRegex.test(email)) {
            return res.status(400).json({
                success: false,
                message: "Please provide a valid email address"
            });
        }

        if (password.length < 8) {
            return res.status(400).json({
                success: false,
                message: "Password must be at least 8 characters long"
            });
        }

        const existingUser = await User.findByEmail(
            email.trim().toLowerCase()
        );

        if (existingUser) {
            return res.status(409).json({
                success: false,
                message: "Email is already registered"
            });
        }

        const hashedPassword = await bcrypt.hash(password, 12);

        const result = await User.create(
            name.trim(),
            email.trim().toLowerCase(),
            hashedPassword
        );

        return res.status(201).json({
            success: true,
            message: "User registered successfully",
            userId: result.insertId
        });

    } catch (error) {
        console.error("Registration error:", error);

        return res.status(500).json({
            success: false,
            message: "Internal server error"
        });
    }
};


const login = async (req, res) => {
    try {
        const { email, password } = req.body;

        if (!email || !password) {
            return res.status(400).json({
                success: false,
                message: "Email and password are required"
            });
        }

        const user = await User.findByEmail(
            email.trim().toLowerCase()
        );

        if (!user) {
            return res.status(401).json({
                success: false,
                message: "Invalid email or password"
            });
        }

        const passwordMatch = await bcrypt.compare(
            password,
            user.password
        );

        if (!passwordMatch) {
            return res.status(401).json({
                success: false,
                message: "Invalid email or password"
            });
        }

        const jti = crypto.randomUUID();

        const expiresAt = new Date(
            Date.now() + 60 * 60 * 1000
        );

        await AuthSession.create(
            user.id,
            jti,
            expiresAt
        );

        const token = jwt.sign(
            {
                userId: user.id,
                email: user.email,
                jti: jti
            },
            process.env.JWT_SECRET,
            {
                expiresIn: "1h"
            }
        );

        return res.status(200).json({
            success: true,
            message: "Login successful",
            token,
            user: {
                id: user.id,
                name: user.name,
                email: user.email
            }
        });

    } catch (error) {
        console.error("Login error:", error);

        return res.status(500).json({
            success: false,
            message: "Internal server error"
        });
    }
};


const logout = async (req, res) => {
    try {
        await AuthSession.revokeByJti(req.user.jti);

        return res.status(200).json({
            success: true,
            message: "Logout successful"
        });

    } catch (error) {
        console.error("Logout error:", error);

        return res.status(500).json({
            success: false,
            message: "Internal server error"
        });
    }
};


const googleLogin = async (req, res) => {
    try {
        const { credential } = req.body;

        if (!credential) {
            return res.status(400).json({
                success: false,
                message: "Google credential is required"
            });
        }

        // Verify Google ID token
        const ticket = await googleClient.verifyIdToken({
            idToken: credential,
            audience:
                "95674554000-rocduccu3347ljks8tdu84gm5udth9u4.apps.googleusercontent.com"
        });

        const payload = ticket.getPayload();

        const googleEmail = payload.email;
        const googleName =
            payload.name ||
            payload.given_name ||
            "Google User";

        if (!googleEmail) {
            return res.status(400).json({
                success: false,
                message: "Google account email not available"
            });
        }

        // Check whether user already exists
        let user = await User.findByEmail(
            googleEmail.trim().toLowerCase()
        );

        // Create account if user doesn't exist
        if (!user) {

            // Google users don't set a normal password.
            // Create a random password hash so the account
            // cannot be logged into using a guessed password.
            const googlePasswordHash = await bcrypt.hash(
                crypto.randomBytes(32).toString("hex"),
                12
            );

            await User.create(
                googleName.trim(),
                googleEmail.trim().toLowerCase(),
                googlePasswordHash
            );

            user = await User.findByEmail(
                googleEmail.trim().toLowerCase()
            );
        }

        // Create authentication session
        const jti = crypto.randomUUID();

        const expiresAt = new Date(
            Date.now() + 60 * 60 * 1000
        );

        await AuthSession.create(
            user.id,
            jti,
            expiresAt
        );

        // Create JWT
        const token = jwt.sign(
            {
                userId: user.id,
                email: user.email,
                jti: jti
            },
            process.env.JWT_SECRET,
            {
                expiresIn: "1h"
            }
        );

        return res.status(200).json({
            success: true,
            message: "Google login successful",
            token,
            user: {
                id: user.id,
                name: user.name,
                email: user.email
            }
        });

    } catch (error) {

        console.error(
            "Google login error:",
            error
        );

        return res.status(401).json({
            success: false,
            message: "Google authentication failed"
        });
    }
};

module.exports = {
    register,
    login,
    logout,
    googleLogin
};