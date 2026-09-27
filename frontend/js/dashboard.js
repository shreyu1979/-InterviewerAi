/* =========================================================
   DASHBOARD.JS
   tobeHired Dashboard
========================================================= */


/* =========================================================
   1. AUTH GUARD
========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    if (typeof authService === "undefined") {

        console.error("authService is not loaded.");

        window.location.href = "auth.html";

        return;
    }

    const currentUser = authService.getCurrentUser();

    if (!currentUser) {

        window.location.href = "auth.html";

        return;
    }

    const dashboardUserName =
        document.getElementById("dashboardUserName");

    if (dashboardUserName) {

        dashboardUserName.innerText =
            currentUser.name || "User";
    }

    window.scrollTo(0, 0);

});


/* =========================================================
   2. RESUME PDF UPLOAD + ANALYSIS
========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    const resumeInput =
        document.getElementById("resumeInput");

    const resumeResults =
        document.getElementById("resumeResults");

    const invalidResumeMessage =
        document.getElementById("invalidResumeMessage");


    const uploadAgainBtn =
        document.getElementById("uploadAgainBtn");

    const API_BASE_URL =
        "http://localhost:5000/api";

    console.log("Resume upload system starting...");


    if (!resumeInput) {

        console.error("ERROR: #resumeInput was not found");

        return;
    }


    if (!resumeResults) {

        console.error("ERROR: #resumeResults was not found");

        return;
    }


    if (!invalidResumeMessage) {

        console.error(
            "ERROR: #invalidResumeMessage was not found"
        );

        return;
    }


    // IMPORTANT: Hide resume analysis until a resume is uploaded
    resumeResults.style.setProperty("display", "none", "important");

    invalidResumeMessage.style.setProperty("display", "none", "important");

    /* =========================================
       SHOW ERROR MESSAGE
    ========================================= */

    function showResumeError(title, message) {

        resumeResults.style.display = "none";

        invalidResumeMessage.style.display = "block";

        invalidResumeMessage.innerHTML = `

            <div class="invalid-icon">

                <i class="bi bi-file-earmark-x"></i>

            </div>

            <h3>${title}</h3>

            <p>${message}</p>

            <button
                type="button"
                id="uploadAgainBtn"
            >

                <i class="bi bi-arrow-repeat"></i>

                Upload Another File

            </button>

        `;


        const newUploadButton =
            document.getElementById("uploadAgainBtn");


        if (newUploadButton) {

            newUploadButton.addEventListener(
                "click",
                function () {

                    resumeInput.value = "";

                    resumeInput.click();

                }
            );

        }

    }


    /* =========================================
       DISPLAY ANALYSIS
    ========================================= */

    function displayAnalysis(analysisResponse) {

        console.log("=================================");
        console.log("DISPLAYING RESUME ANALYSIS");
        console.log("=================================");

        console.log("Raw response:", analysisResponse);


        /* =========================================
           HANDLE API RESPONSE
        ========================================= */

        let analysis = analysisResponse;

        // API may return:
        // { success: true, analysis: {...} }

        if (
            analysisResponse &&
            analysisResponse.analysis
        ) {

            analysis =
                analysisResponse.analysis;

            console.log(
                "Using nested analysis:",
                analysis
            );

        }


        if (!analysis) {

            console.error(
                "No analysis object received."
            );

            return;

        }


        /* =========================================
           SHOW ANALYSIS SECTION
        ========================================= */

        resumeResults.style.setProperty(
            "display",
            "block",
            "important"
        );

        invalidResumeMessage.style.setProperty(
            "display",
            "none",
            "important"
        );

        console.log(
            "resumeResults display:",
            window.getComputedStyle(resumeResults).display
        );

        console.log(
            "resumeResults element:",
            resumeResults
        );


        /* =========================================
           SKILLS
        ========================================= */

        const skillsList =
            resumeResults.querySelector(".skills-list");


        if (skillsList) {

            skillsList.innerHTML = "";


            let skills = analysis.skills;


            // Make sure skills is an array
            if (typeof skills === "string") {

                try {

                    skills = JSON.parse(skills);

                } catch (error) {

                    skills = [skills];

                }

            }


            if (
                Array.isArray(skills) &&
                skills.length > 0
            ) {

                console.log(
                    "Skills:",
                    skills
                );


                skills.forEach(function (skill) {

                    const skillElement =
                        document.createElement("span");

                    skillElement.innerText =
                        skill;

                    skillsList.appendChild(
                        skillElement
                    );
                    console.log(
                        "Added skill to frontend:",
                        skill
                    );

                });

            }

            else {

                const noSkills =
                    document.createElement("span");

                noSkills.innerText =
                    "No specific skills detected";

                skillsList.appendChild(
                    noSkills
                );

            }

        }


        /* =========================================
           TEST SKILLS
        ========================================= */

        const testSkills =
            resumeResults.querySelector(".test-skills");


        if (testSkills) {

            testSkills.innerHTML = "";


            let skills = analysis.skills;


            if (typeof skills === "string") {

                try {

                    skills = JSON.parse(skills);

                } catch (error) {

                    skills = [skills];

                }

            }


            if (
                Array.isArray(skills) &&
                skills.length > 0
            ) {

skills.forEach(function (skill) {

    const skillElement =
        document.createElement("span");

    skillElement.innerText =
        skill;

    skillElement.style.cursor = "pointer";

    skillElement.addEventListener(
        "click",
        function () {

            currentTestSkill =
                skill.trim();

            console.log(
                "Selected test skill:",
                currentTestSkill
            );

            const testButton =
                document.getElementById(
                    "startAptitudeTestBtn"
                );

            if (testButton) {

                testButton.innerHTML = `
                    Start ${currentTestSkill} Test
                    <i class="bi bi-arrow-right"></i>
                `;

            }

        }
    );

    skillsList.appendChild(
        skillElement
    );

    console.log(
        "Added skill to frontend:",
        skill
    );

});

            }

        }


        /* =========================================
           EDUCATION
        ========================================= */

        console.log(
            "Education:",
            analysis.education
        );


        let education =
            analysis.education;


        if (typeof education === "string") {

            try {

                education =
                    JSON.parse(education);

            } catch (error) {

                education = [education];

            }

        }


        /*
           Find an education container if your
           HTML already has one.
        */

        const educationList =
            resumeResults.querySelector(
                ".education-list"
            );


        if (educationList) {

            educationList.innerHTML = "";


            if (
                Array.isArray(education) &&
                education.length > 0
            ) {

                education.forEach(function (item) {

                    const element =
                        document.createElement("span");

                    element.innerText =
                        item;

                    educationList.appendChild(
                        element
                    );

                });

            }

            else {

                educationList.innerHTML =
                    "<span>Not detected</span>";

            }

        }


        /* =========================================
           QUALIFICATION
        ========================================= */

        console.log(
            "Qualification:",
            analysis.qualification
        );


        let qualification =
            analysis.qualification;


        if (typeof qualification === "string") {

            try {

                qualification =
                    JSON.parse(qualification);

            } catch (error) {

                qualification =
                    [qualification];

            }

        }


        const qualificationList =
            resumeResults.querySelector(
                ".qualification-list"
            );


        if (qualificationList) {

            qualificationList.innerHTML = "";


            if (
                Array.isArray(qualification) &&
                qualification.length > 0
            ) {

                qualification.forEach(
                    function (item) {

                        const element =
                            document.createElement("span");

                        element.innerText =
                            item;

                        qualificationList.appendChild(
                            element
                        );

                    }
                );

            }

            else {

                qualificationList.innerHTML =
                    "<span>Not detected</span>";

            }

        }


        /* =========================================
           MAKE SURE RESULTS ARE VISIBLE
        ========================================= */

        resumeResults.style.display =
            "block";


        /*
           Force browser to recalculate display.
        */

        void resumeResults.offsetHeight;


        /* =========================================
           SCROLL TO RESULTS
        ========================================= */

        setTimeout(function () {

            resumeResults.scrollIntoView({

                behavior: "smooth",

                block: "start"

            });

        }, 200);


        console.log(
            "Resume analysis displayed successfully."
        );

    }




    /* =========================================
       UPLOAD + ANALYZE RESUME
    ========================================= */

    async function uploadAndAnalyzeResume(file) {

        try {

            console.log(
                "Uploading resume:",
                file.name
            );


            /* -----------------------------------------
               GET CURRENT USER
            ----------------------------------------- */

            if (
                typeof authService === "undefined"
            ) {

                throw new Error(
                    "Authentication service is not available."
                );

            }


            const currentUser =
                authService.getCurrentUser();


            if (!currentUser) {

                throw new Error(
                    "Please log in before uploading your resume."
                );

            }


            console.log(
                "Uploading for user:",
                currentUser.id
            );


            /* -----------------------------------------
               CREATE FORM DATA
            ----------------------------------------- */

            const formData =
                new FormData();


            formData.append(
                "resume",
                file
            );


            formData.append(
                "user_id",
                currentUser.id
            );


            /* -----------------------------------------
               UPLOAD
            ----------------------------------------- */

            const uploadResponse =
                await fetch(`${API_BASE_URL}/resume-analysis/upload`,
                    {
                        method: "POST",
                        body: formData
                    }
                );


            const uploadData =
                await uploadResponse.json();


            console.log(
                "Upload response:",
                uploadData
            );


            if (!uploadResponse.ok) {

                throw new Error(
                    uploadData.message ||
                    "Resume upload failed."
                );

            }


            const resumeId =
                uploadData.resume_id;


            if (!resumeId) {

                throw new Error(
                    "Resume uploaded but no resume ID was returned."
                );

            }


            /* -----------------------------------------
               ANALYZE
            ----------------------------------------- */

            console.log(
                "Analyzing resume:",
                resumeId
            );


            const analyzeResponse =
                await fetch(
                    `${API_BASE_URL}/resume-analysis/analyze`,
                    {
                        method: "POST",

                        headers: {
                            "Content-Type":
                                "application/json"
                        },

                        body: JSON.stringify({

                            resume_id:
                                resumeId

                        })

                    }
                );


            const analyzeData =
                await analyzeResponse.json();


            console.log(
                "Analysis response:",
                analyzeData
            );


            if (!analyzeResponse.ok) {

                throw new Error(
                    analyzeData.message ||
                    "Resume analysis failed."
                );

            }


            /* -----------------------------------------
               IMPORTANT FIX
               
               Backend response:

               {
                   success: true,
                   message: "...",
                   analysis_id: 1,
                   resume_id: 2,
                   extracted_text_length: 1447,
                   skills: [...],
                   education: [...],
                   qualification: [...]
               }

               OR if using GET analysis response:

               {
                   success: true,
                   analysis: {
                       skills: [...],
                       education: [...],
                       qualification: [...]
                   }
               }

               The current POST /analyze response contains
               the analysis fields directly, so handle both
               response structures safely.
            ----------------------------------------- */


            if (analyzeData.analysis) {

                displayAnalysis(analyzeData.analysis);

            }

            else {

                displayAnalysis(
                    analyzeData
                );

            }


            console.log(
                "Resume uploaded and analyzed successfully."
            );


        }

        catch (error) {

            console.error(
                "RESUME UPLOAD ERROR:",
                error
            );


            showResumeError(
                "Resume Processing Failed",
                error.message ||
                "Unable to process your resume. Please try again."
            );

        }

    }


    /* =========================================
       WHEN FILE IS SELECTED
    ========================================= */

    resumeInput.addEventListener(
        "change",
        async function () {

            console.log(
                "File selection detected"
            );


            const file =
                this.files[0];


            if (!file) {

                console.log(
                    "No file selected"
                );

                return;

            }


            console.log(
                "Selected file:",
                file.name
            );


            console.log(
                "File type:",
                file.type
            );


            console.log(
                "File size:",
                file.size
            );


            /* =========================================
               ONLY PDF
            ========================================= */

            const isPDF =
                file.type === "application/pdf" ||
                file.name
                    .toLowerCase()
                    .endsWith(".pdf");


            if (!isPDF) {

                console.log(
                    "Invalid file - PDF required"
                );


                showResumeError(
                    "Invalid File",
                    "Please upload your resume in PDF format only."
                );


                this.value = "";


                return;

            }


            /* =========================================
               MAXIMUM 5 MB
            ========================================= */

            const maxSize =
                5 * 1024 * 1024;


            if (file.size > maxSize) {

                console.log(
                    "PDF is larger than 5 MB"
                );


                showResumeError(
                    "File Too Large",
                    "Please upload a PDF smaller than 5 MB."
                );


                this.value = "";


                return;

            }


            /* =========================================
               VALID PDF
            ========================================= */

            console.log(
                "VALID PDF:",
                file.name
            );


            invalidResumeMessage.style.setProperty(
                "display",
                "none",
                "important"
            );

            // Keep results hidden while backend is processing
            resumeResults.style.setProperty(
                "display",
                "none",
                "important"
            );


            /* =========================================
               SHOW PROCESSING MESSAGE
            ========================================= */

            const analysisTitle =
                resumeResults.querySelector(
                    ".analysis-title span"
                );


            if (analysisTitle) {

                analysisTitle.innerText =
                    "Analyzing Resume...";

            }


            /* =========================================
               UPLOAD AND ANALYZE
            ========================================= */

            await uploadAndAnalyzeResume(
                file
            );


            /* =========================================
               RESTORE TITLE
            ========================================= */

            if (analysisTitle) {

                analysisTitle.innerText =
                    "Resume Analysis";

            }

        }
    );


    /* =========================================
       UPLOAD AGAIN BUTTON
    ========================================= */

    if (uploadAgainBtn) {

        uploadAgainBtn.addEventListener(
            "click",
            function () {

                resumeInput.value = "";

                resumeInput.click();

            }
        );

    }

});


/* =========================================================
   3. JAVASCRIPT LIVE TEST
========================================================= */


/* -----------------------------------------
   QUESTIONS
----------------------------------------- */

let javascriptQuestions = [];

let currentTestSkill = null;
/* =========================================================
   4. TEST VARIABLES
========================================================= */

let currentQuestion = 0;

let selectedAnswer = null;

let userAnswers = [];


/* =========================================================
   5. GET TEST ELEMENTS
========================================================= */

const questionText =
    document.getElementById("questionText");

const liveOptions =
    document.getElementById("liveOptions");

const questionNumber =
    document.getElementById("questionNumber");

const liveProgress =
    document.getElementById("liveProgress");

const nextQuestionBtn =
    document.getElementById("nextQuestionBtn");

const answerMessage =
    document.getElementById("answerMessage");

const liveTestBox =
    document.getElementById("liveTestBox");

const liveResultBox =
    document.getElementById("liveResultBox");


/* =========================================================
   6. SHOW QUESTION
========================================================= */

function showQuestion() {

    if (
        !questionText ||
        !liveOptions ||
        !questionNumber ||
        !liveProgress
    ) {

        console.warn(
            "Live test elements were not found."
        );

        return;
    }


    const current =
        javascriptQuestions[currentQuestion];


    questionText.innerText =
        current.question;


    questionNumber.innerText =
        currentQuestion + 1;


    liveProgress.style.width =
        (
            ((currentQuestion + 1) /
                javascriptQuestions.length) * 100
        ) + "%";


    liveOptions.innerHTML = "";


    selectedAnswer = null;


    if (answerMessage) {

        answerMessage.innerText =
            "Select an answer to continue";

    }


    const letters = [
        "A",
        "B",
        "C",
        "D"
    ];


    current.options.forEach(
        function (option, index) {

            const optionElement =
                document.createElement("div");


            optionElement.classList.add(
                "live-option"
            );


            optionElement.innerHTML = `

                <span class="live-option-letter">

                    ${letters[index]}

                </span>

                <span>

                    ${option}

                </span>

            `;


            optionElement.addEventListener(
                "click",
                function () {


                    document
                        .querySelectorAll(
                            ".live-option"
                        )
                        .forEach(
                            function (item) {

                                item.classList.remove(
                                    "selected"
                                );

                            }
                        );


                    optionElement.classList.add(
                        "selected"
                    );


                    selectedAnswer =
                        index;


                    if (answerMessage) {

                        answerMessage.innerText =
                            "Answer selected";

                    }

                }
            );


            liveOptions.appendChild(
                optionElement
            );

        }
    );


    if (nextQuestionBtn) {

        if (
            currentQuestion ===
            javascriptQuestions.length - 1
        ) {

            nextQuestionBtn.innerHTML = `

                Submit Test

                <i class="bi bi-check-lg"></i>

            `;

        }

        else {

            nextQuestionBtn.innerHTML = `

                Next Question

                <i class="bi bi-arrow-right"></i>

            `;

        }

    }

}

// ==========================================
// START SKILL CARD TEST
// ==========================================

async function startSkillTest(skill) {

    try {

        currentTestSkill = skill;

        const response = await fetch(
            `http://localhost:5000/api/questions/random?skill=${encodeURIComponent(skill)}&limit=20`
        );

        const data = await response.json();

        if (!data.success || !data.questions || data.questions.length === 0) {

            alert(`No questions found for ${skill}.`);
            return;
        }

        // Convert API questions into existing test format
        javascriptQuestions = data.questions.map(function (question) {

            return {
                id: question.id,

                question: question.question,

                options: [
                    question.option_a,
                    question.option_b,
                    question.option_c,
                    question.option_d
                ],

                correct: ["A", "B", "C", "D"].indexOf(
                    question.correct_answer
                )
            };

        });

        // Reset test
        currentQuestion = 0;
        selectedAnswer = null;
        userAnswers = [];

        // Hide previous result
        if (liveResultBox) {
            liveResultBox.style.display = "none";
        }

        // Show existing question block
        if (liveTestBox) {
            liveTestBox.style.display = "block";
        }

        // Show first question
        showQuestion();

        // Scroll to existing question block
        liveTestBox.scrollIntoView({
            behavior: "smooth",
            block: "start"
        });

    } catch (error) {

        console.error("Skill test error:", error);

        alert("Unable to load questions. Please try again.");

    }
}

// ==========================================
// SKILL CARD CLICK
// ==========================================

const skillCards = document.querySelectorAll(".test-skill-card");

skillCards.forEach(function (card) {

    card.addEventListener("click", function () {

        const skill = card.dataset.skill;

        if (!skill) {
            return;
        }

        startSkillTest(skill);

    });

});

/* =========================================================
   START SELECTED SKILL TEST
========================================================= */

const startAptitudeTestBtn =
    document.getElementById("startAptitudeTestBtn");

if (startAptitudeTestBtn) {

    startAptitudeTestBtn.addEventListener(
        "click",
        async function () {

            if (!currentTestSkill) {

                alert("Please select a skill first.");

                return;
            }

            console.log(
                "Starting test for skill:",
                currentTestSkill
            );

            try {

                const response = await fetch(
                    `http://localhost:5000/api/questions/random?skill=${encodeURIComponent(currentTestSkill)}&limit=20`
                );

                const data =
                    await response.json();

                console.log(
                    "Questions API response:",
                    data
                );

                if (
                    !data.success ||
                    !data.questions ||
                    data.questions.length === 0
                ) {

                    alert(
                        `No questions found for ${currentTestSkill}.`
                    );

                    return;
                }

                javascriptQuestions =
                    data.questions.map(
                        function (question) {

                            return {

                                id:
                                    question.id,

                                question:
                                    question.question,

                                options: [

                                    question.option_a,

                                    question.option_b,

                                    question.option_c,

                                    question.option_d

                                ],

                                correct:
                                    ["A", "B", "C", "D"]
                                        .indexOf(
                                            question.correct_answer
                                        )

                            };

                        }
                    );


                currentQuestion = 0;

                selectedAnswer = null;

                userAnswers = [];


                if (liveResultBox) {

                    liveResultBox.style.display =
                        "none";

                }


                if (liveTestBox) {

                    liveTestBox.style.display =
                        "block";

                }


                showQuestion();


                liveTestBox.scrollIntoView({
                    behavior: "smooth",
                    block: "start"
                });


            } catch (error) {

                console.error(
                    "Test loading error:",
                    error
                );

                alert(
                    "Unable to connect to the test server."
                );

            }

        }
    );

}


/* =========================================================
   7. NEXT QUESTION
========================================================= */

if (nextQuestionBtn) {

    nextQuestionBtn.addEventListener(
        "click",
        function () {


            if (selectedAnswer === null) {

                if (answerMessage) {

                    answerMessage.innerText =
                        "Please select an answer first";

                }

                return;
            }


            userAnswers.push(
                selectedAnswer
            );


            if (
                currentQuestion <
                javascriptQuestions.length - 1
            ) {

                currentQuestion++;

                showQuestion();

            }

            else {

                showResults();

            }

        }
    );

}


/* =========================================================
   8. SHOW TEST RESULTS
========================================================= */

function showResults() {

    let correctAnswers = 0;


    const answerReviewList =
        document.getElementById(
            "answerReviewList"
        );


    if (answerReviewList) {

        answerReviewList.innerHTML = "";

    }


    javascriptQuestions.forEach(
        function (question, index) {


            const isCorrect =
                userAnswers[index] ===
                question.correct;


            if (isCorrect) {

                correctAnswers++;

            }


            const reviewItem =
                document.createElement("div");


            reviewItem.classList.add(
                "review-item"
            );


            if (isCorrect) {

                reviewItem.classList.add(
                    "correct"
                );

            }

            else {

                reviewItem.classList.add(
                    "wrong"
                );

            }


            const userAnswer =
                userAnswers[index] !== undefined
                    ? question.options[
                    userAnswers[index]
                    ]
                    : "Not answered";


            reviewItem.innerHTML = `

                <div class="review-question">

                    ${index + 1}.
                    ${question.question}

                </div>

                <div class="review-answer">

                    Your Answer:
                    ${userAnswer}

                    <br>

                    Correct Answer:
                    ${question.options[
                question.correct
                ]}

                </div>

            `;


            if (answerReviewList) {

                answerReviewList.appendChild(
                    reviewItem
                );

            }

        }
    );


    const wrongAnswers =
        javascriptQuestions.length -
        correctAnswers;


    const finalScore =
        document.getElementById(
            "finalScore"
        );


    const correctCount =
        document.getElementById(
            "correctCount"
        );


    const wrongCount =
        document.getElementById(
            "wrongCount"
        );


    if (finalScore) {

        finalScore.innerText =
            correctAnswers +
            " / " +
            javascriptQuestions.length;

    }


    if (correctCount) {

        correctCount.innerText =
            correctAnswers;

    }


    if (wrongCount) {

        wrongCount.innerText =
            wrongAnswers;

    }


    if (liveTestBox) {

        liveTestBox.style.display =
            "none";

    }


    if (liveResultBox) {

        liveResultBox.style.display =
            "block";


        liveResultBox.scrollIntoView({

            behavior: "smooth",

            block: "start"

        });

    }

}


/* =========================================================
   9. RESTART TEST
========================================================= */

const restartTestBtn =
    document.getElementById(
        "restartTestBtn"
    );


if (restartTestBtn) {

    restartTestBtn.addEventListener(
        "click",
        function () {


            currentQuestion = 0;

            selectedAnswer = null;

            userAnswers = [];


            if (liveResultBox) {

                liveResultBox.style.display =
                    "none";

            }


            if (liveTestBox) {

                liveTestBox.style.display =
                    "block";

            }


            showQuestion();

        }
    );

}


/* =========================================================
   10. START LIVE TEST
========================================================= */

if (
    questionText &&
    liveOptions &&
    questionNumber &&
    liveProgress
) {
    console.log(
        "Test UI ready. Waiting for Aptitude Test to start."
    );
}



/* =========================================================
   11. LOGOUT
========================================================= */

function logout() {

    if (
        typeof authService !== "undefined" &&
        typeof authService.logout === "function"
    ) {

        authService.logout();

    }

    else {

        localStorage.removeItem("currentUser");

        localStorage.removeItem("user");

        localStorage.removeItem("token");

    }


    window.location.href =
        "auth.html";

}

