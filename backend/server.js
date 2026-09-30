require("dotenv").config({
    path: "./backend/.env"
});

const express = require("express");
const cors = require("cors");
const db = require("./config/db");

const resumeAnalysisRoutes =
    require("./routes/resumeAnalysis");

const authRoutes =
    require("./backend/src/routes/auth");

const questionsRoutes =
    require("./backend/src/routes/questionsRoutes");

const questionRoutes =
    require("./backend/src/routes/questionRoutes");

const profileRoutes =
    require("./backend/src/routes/profileRoutes");

const feedbackRoutes =
    require("./backend/src/routes/feedbackRoutes");


const app = express();


/* =========================================================
   MIDDLEWARE
========================================================= */

app.use(cors());

app.use(express.json());


/* =========================================================
   ROUTES
========================================================= */

/* Resume Analysis */

app.use(
    "/api/resume-analysis",
    resumeAnalysisRoutes
);


/* Authentication */

app.use(
    "/api/auth",
    authRoutes
);


/* Skill Test / Questions */

app.use(
    "/api",
    questionsRoutes
);


/* Existing Question Routes */

app.use(
    "/api",
    questionRoutes
);


/* Profile + My Progress */

app.use(
    "/api",
    profileRoutes
);


/* Feedback */

app.use(
    "/api/feedback",
    feedbackRoutes
);


/* =========================================================
   ROOT
========================================================= */

app.get("/", (req, res) => {

    res.send(
        "AI Interviewer Backend is Running!"
    );

});


/* =========================================================
   API TEST
========================================================= */

app.get("/api/test", (req, res) => {

    res.json({

        success: true,

        message:
            "API is working successfully!"

    });

});


/* =========================================================
   SERVER
========================================================= */

const PORT =
    process.env.PORT || 5000;


app.listen(PORT, () => {

    console.log(
        `Server running on http://localhost:${PORT}`
    );

});


/* =========================================================
   SERVER STATUS
========================================================= */

console.log("=================================");
console.log("ACTIVE SERVER: PROJECT/SERVER.JS");
console.log("AUTH ROUTE REGISTERED");
console.log("QUESTIONS ROUTE REGISTERED");
console.log("PROFILE ROUTE REGISTERED");
console.log("FEEDBACK ROUTE REGISTERED");
console.log("RESUME ANALYSIS ROUTE REGISTERED");
console.log("=================================");