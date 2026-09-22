require("dotenv").config();

const express = require("express");
const cors = require("cors");
const db = require("./src/config/database");
const profileRoutes = require("./src/routes/profileRoutes");
const analyticsRoutes = require("./src/routes/analyticsRoutes");
const questionsRoutes = require("./src/routes/questionsRoutes");
const questionRoutes = require("./src/routes/questionRoutes");
const authRoutes = require("./src/routes/authRoutes");

const app = express();

app.use(cors());
app.use(express.json());

app.use("/api", profileRoutes);
app.use("/api", analyticsRoutes);
app.use("/api", questionsRoutes);
app.use("/api", questionRoutes);

app.use("/api/auth", authRoutes);

app.get("/", (req, res) => {
    res.send("AI Interviewer Backend is running!");
});

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});