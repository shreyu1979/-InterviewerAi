const jwt = require("jsonwebtoken");
const AuthSession = require("../models/authSessionModel");

const authenticateToken = async (req, res, next) => {
    try {
        const authHeader = req.headers.authorization;

        if (!authHeader) {
            return res.status(401).json({
                success: false,
                message: "Authorization header is required"
            });
        }

        const parts = authHeader.split(" ");

        if (parts.length !== 2 || parts[0] !== "Bearer") {
            return res.status(401).json({
                success: false,
                message: "Invalid authorization format"
            });
        }

        const token = parts[1];

        const decoded = jwt.verify(
            token,
            process.env.JWT_SECRET
        );

        if (!decoded.jti) {
            return res.status(401).json({
                success: false,
                message: "Invalid token"
            });
        }

        const session = await AuthSession.findByJti(
            decoded.jti
        );

        if (!session) {
            return res.status(401).json({
                success: false,
                message: "Session not found"
            });
        }

        if (session.revoked_at) {
            return res.status(401).json({
                success: false,
                message: "Session has been revoked"
            });
        }

        if (new Date(session.expires_at) <= new Date()) {
            return res.status(401).json({
                success: false,
                message: "Session has expired"
            });
        }

        if (session.user_id !== decoded.userId) {
            return res.status(401).json({
                success: false,
                message: "Invalid session"
            });
        }

        req.user = decoded;

        next();

    } catch (error) {
        if (error.name === "TokenExpiredError") {
            return res.status(401).json({
                success: false,
                message: "Token has expired"
            });
        }

        return res.status(401).json({
            success: false,
            message: "Invalid token"
        });
    }
};

module.exports = authenticateToken;