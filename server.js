const express = require("express");
const db = require("./config/db");
const resumeAnalysisRoutes = require("./routes/resumeAnalysis");
const authRoutes = require("./routes/auth");

const app = express();

app.use(express.json());
app.use("/api/resume-analysis", resumeAnalysisRoutes);
app.use("/api/auth", authRoutes);

const PORT = 5000;

app.get("/", (req, res) => {
    res.send("AI Interviewer Backend is Running!");
});

app.get("/api/test", (req, res) => {
    res.json({
        success: true,
        message: "API is working successfully!"
    });
});

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});