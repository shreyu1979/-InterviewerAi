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

    const currentUser =
        authService.getCurrentUser();

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


    console.log(
        "Resume upload system starting..."
    );


    if (!resumeInput) {

        console.error(
            "ERROR: #resumeInput was not found"
        );

        return;
    }


    if (!resumeResults) {

        console.error(
            "ERROR: #resumeResults was not found"
        );

        return;
    }


    if (!invalidResumeMessage) {

        console.error(
            "ERROR: #invalidResumeMessage was not found"
        );

        return;
    }


    /* -----------------------------------------
       INITIAL STATE
    ----------------------------------------- */

    resumeResults.style.setProperty(
        "display",
        "none",
        "important"
    );

    invalidResumeMessage.style.setProperty(
        "display",
        "none",
        "important"
    );


    /* =====================================================
       SHOW RESUME ERROR
    ===================================================== */

    function showResumeError(title, message) {

        resumeResults.style.display =
            "none";

        invalidResumeMessage.style.display =
            "block";


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
            document.getElementById(
                "uploadAgainBtn"
            );


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


    /* =====================================================
       DISPLAY RESUME ANALYSIS
    ===================================================== */

    function displayAnalysis(analysisResponse) {

        console.log(
            "================================="
        );

        console.log(
            "DISPLAYING RESUME ANALYSIS"
        );

        console.log(
            "================================="
        );

        console.log(
            "Raw response:",
            analysisResponse
        );


        let analysis =
            analysisResponse;


        /*
            Backend can return:

            {
                success: true,
                analysis: {...}
            }

            OR

            {
                success: true,
                skills: [...]
            }
        */

        if (
            analysisResponse &&
            analysisResponse.analysis
        ) {

            analysis =
                analysisResponse.analysis;

        }


        if (!analysis) {

            console.error(
                "No analysis object received."
            );

            return;

        }


        /* -----------------------------------------
           SHOW RESULT
        ----------------------------------------- */

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


        /* =================================================
           GET SKILLS
        ================================================= */

        let skills =
            analysis.skills;


        if (typeof skills === "string") {

            try {

                skills =
                    JSON.parse(skills);

            } catch (error) {

                skills =
                    [skills];

            }

        }


        if (!Array.isArray(skills)) {

            skills = [];

        }


        console.log(
            "Detected skills:",
            skills
        );


        /* =================================================
           DISPLAY DETECTED SKILLS
        ================================================= */

        const skillsList =
            resumeResults.querySelector(
                ".skills-list"
            );


        if (skillsList) {

            skillsList.innerHTML = "";


            if (skills.length > 0) {

                skills.forEach(function (skill) {

                    const skillElement =
                        document.createElement("span");

                    skillElement.innerText =
                        skill;

                    skillsList.appendChild(
                        skillElement
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


        /* =================================================
           DISPLAY TEST SKILLS
        ================================================= */

        const testSkills =
            resumeResults.querySelector(
                ".test-skills"
            );


        if (testSkills) {

            testSkills.innerHTML = "";


            if (skills.length > 0) {

                skills.forEach(function (skill) {

                    const skillElement =
                        document.createElement("span");


                    skillElement.innerText =
                        skill;


                    skillElement.style.cursor =
                        "pointer";


                    skillElement.classList.add(
                        "test-skill-card"
                    );


                    skillElement.dataset.skill =
                        skill.trim();


                    /*
                        Clicking detected skill
                        selects that skill.
                    */

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

                                    Start
                                    ${currentTestSkill}
                                    Test

                                    <i class="bi bi-arrow-right"></i>

                                `;

                            }

                        }
                    );


                    testSkills.appendChild(
                        skillElement
                    );

                });

            }

        }


        /* =================================================
           EDUCATION
        ================================================= */

        let education =
            analysis.education;


        if (typeof education === "string") {

            try {

                education =
                    JSON.parse(education);

            } catch (error) {

                education =
                    [education];

            }

        }


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


        /* =================================================
           QUALIFICATION
        ================================================= */

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


        /* =================================================
           FINAL DISPLAY
        ================================================= */

        resumeResults.style.display =
            "block";


        void resumeResults.offsetHeight;


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


    /* =====================================================
       UPLOAD + ANALYZE RESUME
    ===================================================== */

    async function uploadAndAnalyzeResume(file) {

        try {

            console.log(
                "Uploading resume:",
                file.name
            );


            if (
                typeof authService ===
                "undefined"
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
                await fetch(
                    `${API_BASE_URL}/resume-analysis/upload`,
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


            if (analyzeData.analysis) {

                displayAnalysis(
                    analyzeData.analysis
                );

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


    /* =====================================================
       FILE SELECTED
    ===================================================== */

    resumeInput.addEventListener(
        "change",
        async function () {

            const file =
                this.files[0];


            if (!file) {

                return;

            }


            console.log(
                "Selected file:",
                file.name
            );


            /* -----------------------------------------
               PDF VALIDATION
            ----------------------------------------- */

            const isPDF =
                file.type ===
                "application/pdf" ||
                file.name
                    .toLowerCase()
                    .endsWith(".pdf");


            if (!isPDF) {

                showResumeError(
                    "Invalid File",
                    "Please upload your resume in PDF format only."
                );


                this.value = "";


                return;

            }


            /* -----------------------------------------
               5 MB LIMIT
            ----------------------------------------- */

            const maxSize =
                5 * 1024 * 1024;


            if (file.size > maxSize) {

                showResumeError(
                    "File Too Large",
                    "Please upload a PDF smaller than 5 MB."
                );


                this.value = "";


                return;

            }


            /* -----------------------------------------
               HIDE OLD RESULT
            ----------------------------------------- */

            invalidResumeMessage.style.setProperty(
                "display",
                "none",
                "important"
            );


            resumeResults.style.setProperty(
                "display",
                "none",
                "important"
            );


            /* -----------------------------------------
               PROCESS
            ----------------------------------------- */

            await uploadAndAnalyzeResume(
                file
            );

        }
    );


    /* =====================================================
       UPLOAD AGAIN
    ===================================================== */

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
   3. TEST VARIABLES
========================================================= */

let javascriptQuestions = [];

let currentTestSkill = null;

let currentQuestion = 0;

let selectedAnswer = null;

let userAnswers = [];


/* =========================================================
   4. TEST ELEMENTS
========================================================= */

const questionText =
    document.getElementById(
        "questionText"
    );

const liveOptions =
    document.getElementById(
        "liveOptions"
    );

const questionNumber =
    document.getElementById(
        "questionNumber"
    );

const liveProgress =
    document.getElementById(
        "liveProgress"
    );

const nextQuestionBtn =
    document.getElementById(
        "nextQuestionBtn"
    );

const answerMessage =
    document.getElementById(
        "answerMessage"
    );

const liveTestBox =
    document.getElementById(
        "liveTestBox"
    );

const liveResultBox =
    document.getElementById(
        "liveResultBox"
    );


/* =========================================================
   5. SHOW QUESTION
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


    if (
        !javascriptQuestions ||
        javascriptQuestions.length === 0
    ) {

        console.warn(
            "No questions available."
        );

        return;

    }

    


    const current =
        javascriptQuestions[
        currentQuestion
        ];


    if (!current) {

        return;

    }


    questionText.innerText =
        current.question;


    questionNumber.innerText =
        currentQuestion + 1;


    liveProgress.style.width =
        (
            (
                (currentQuestion + 1) /
                javascriptQuestions.length
            ) * 100
        ) + "%";


    liveOptions.innerHTML =
        "";


    selectedAnswer =
        null;


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


/* =========================================================
   6. START TEST FOR ANY SKILL
========================================================= */

async function startSkillTest(skill) {

    if (!skill) {

        console.error(
            "No skill supplied."
        );

        return;

    }


    try {

        currentTestSkill =
            skill.trim();


        console.log(
            "Starting test for:",
            currentTestSkill
        );


        const response =
            await fetch(
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


        /* -----------------------------------------
           CONVERT QUESTIONS
        ----------------------------------------- */

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
                            [
                                "A",
                                "B",
                                "C",
                                "D"
                            ].indexOf(
                                String(
                                    question.correct_answer
                                ).trim().toUpperCase()
                            )

                    };

                }
            );


        /* -----------------------------------------
           RESET TEST
        ----------------------------------------- */

        currentQuestion =
            0;

        selectedAnswer =
            null;

        userAnswers =
            [];


        /* -----------------------------------------
           HIDE RESULT
        ----------------------------------------- */

        if (liveResultBox) {

            liveResultBox.style.display =
                "none";

        }


        /* -----------------------------------------
           SHOW TEST
        ----------------------------------------- */

        if (liveTestBox) {

            liveTestBox.style.display =
                "block";

        }


        /* -----------------------------------------
           SHOW QUESTION
        ----------------------------------------- */

        showQuestion();


        /* -----------------------------------------
           SCROLL
        ----------------------------------------- */

        if (liveTestBox) {

            liveTestBox.scrollIntoView({

                behavior: "smooth",

                block: "start"

            });

        }

    }

    catch (error) {

        console.error(
            "Skill test error:",
            error
        );


        alert(
            "Unable to load questions. Please try again."
        );

    }

}


/* =========================================================
   7. SKILL CARD CLICK
========================================================= */

const skillCards =
    document.querySelectorAll(
        ".test-skill-card"
    );


skillCards.forEach(
    function (card) {

        card.addEventListener(
            "click",
            function () {

                const skill =
                    card.dataset.skill;


                if (!skill) {

                    return;

                }


                startSkillTest(
                    skill
                );

            }
        );

    }
);


/* =========================================================
   8. START APTITUDE TEST
========================================================= */

/*
    IMPORTANT FIX:

    The Aptitude button does NOT require
    currentTestSkill.

    It directly loads:

        skill=Aptitude

    from the questions API.
*/

const startAptitudeTestBtn =
    document.getElementById(
        "startAptitudeTestBtn"
    );


if (startAptitudeTestBtn) {

    startAptitudeTestBtn.addEventListener(
        "click",
        async function () {

            console.log(
                "Starting Aptitude Test..."
            );


            /*
                Always use Aptitude here.

                Do NOT check currentTestSkill.
            */

            await startSkillTest(
                "Aptitude"
            );

        }
    );

}


/* =========================================================
   9. NEXT QUESTION
========================================================= */

if (nextQuestionBtn) {

    nextQuestionBtn.addEventListener(
        "click",
        function () {


            if (
                selectedAnswer === null
            ) {

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
   10. SHOW TEST RESULTS
========================================================= */

async function showResults() {

    console.log("=================================");
    console.log("TEST COMPLETED");
    console.log("=================================");

    console.log("Questions:", javascriptQuestions);
    console.log("User answers:", userAnswers);


    let correctAnswers = 0;


    const answerReviewList =
        document.getElementById(
            "answerReviewList"
        );


    if (answerReviewList) {

        answerReviewList.innerHTML =
            "<p>Loading your results...</p>";

    }


    /*
        Get result for every question
    */

    const results = [];


    try {

        for (
            let index = 0;
            index < javascriptQuestions.length;
            index++
        ) {

            const question =
                javascriptQuestions[index];


            const selectedAnswerIndex =
                userAnswers[index];


            /*
                Convert selected option index
                into A / B / C / D
            */

            const answerLetters = [
                "A",
                "B",
                "C",
                "D"
            ];


            const userAnswer =
                selectedAnswerIndex !== undefined
                    ? answerLetters[selectedAnswerIndex]
                    : "";


            console.log(
                "Submitting question:",
                question.id,
                "Answer:",
                userAnswer
            );


            const response =
                await fetch(
                    "http://localhost:5000/api/questions/submit",
                    {
                        method: "POST",

                        headers: {
                            "Content-Type":
                                "application/json"
                        },

                        body: JSON.stringify({

                            questionId:
                                question.id,

                            answer:
                                userAnswer

                        })

                    }
                );


            const data =
                await response.json();


            console.log(
                "Result response:",
                data
            );


            if (!response.ok || !data.success) {

                throw new Error(
                    data.message ||
                    "Unable to check answer."
                );

            }


            results.push(data);


            if (data.correct) {

                correctAnswers++;

            }

        }


        console.log(
            "All answers checked:",
            results
        );


        /*
            Calculate wrong answers
        */

        const wrongAnswers =
            javascriptQuestions.length -
            correctAnswers;

        const scorePercentage =
            Math.round(
                (correctAnswers /
                    javascriptQuestions.length) *
                100
            );
        /*
            Display score
        */

        const finalScore =
            document.getElementById(
                "finalScore"
            );

        const scoreCircle =
            document.querySelector(
                ".score-circle strong"
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

        if (scoreCircle) {

            scoreCircle.innerText =
                scorePercentage + "%";

        }


        if (correctCount) {

            correctCount.innerText =
                correctAnswers;

        }


        if (wrongCount) {

            wrongCount.innerText =
                wrongAnswers;

        }


        /*
            Clear old review
        */

        if (answerReviewList) {

            answerReviewList.innerHTML =
                "";

        }


        /*
            Create answer review
        */

        results.forEach(
            function (result, index) {

                const reviewItem =
                    document.createElement(
                        "div"
                    );


                reviewItem.classList.add(
                    "review-item"
                );


                if (result.correct) {

                    reviewItem.classList.add(
                        "correct"
                    );

                }

                else {

                    reviewItem.classList.add(
                        "wrong"
                    );

                }


                /*
                    Create result content
                */

                reviewItem.innerHTML = `

                    <div class="review-question">

                        ${index + 1}.
                        ${result.question}

                    </div>


                    <div class="review-answer">

                        <strong>
                            Your Answer:
                        </strong>

                        ${result.userAnswer || "Not answered"}

                        <br>


                        <strong>
                            Correct Answer:
                        </strong>

                        ${result.correctAnswerText}


                        <br><br>


                        <strong>
                            Explanation:
                        </strong>

                        <p>
                            ${result.explanation}
                        </p>

                    </div>

                `;


                if (answerReviewList) {

                    answerReviewList.appendChild(
                        reviewItem
                    );

                }

            }
        );


        /*
            Hide test
        */

        if (liveTestBox) {

            liveTestBox.style.display =
                "none";

        }


        /*
            Show result
        */

        if (liveResultBox) {

            liveResultBox.style.display =
                "block";


            liveResultBox.scrollIntoView({

                behavior: "smooth",

                block: "start"

            });

        }


        console.log(
            "Test results displayed successfully."
        );


    }

    catch (error) {

        console.error(
            "RESULT PROCESSING ERROR:",
            error
        );


        if (answerReviewList) {

            answerReviewList.innerHTML = `

                <p>
                    Unable to load your test results.
                </p>

            `;

        }

    }

}



/* =========================================================
   11. RESTART TEST
========================================================= */

const restartTestBtn =
    document.getElementById(
        "restartTestBtn"
    );


if (restartTestBtn) {

    restartTestBtn.addEventListener(
        "click",
        function () {

            currentQuestion =
                0;

            selectedAnswer =
                null;

            userAnswers =
                [];


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
   12. TEST UI READY
========================================================= */

if (
    questionText &&
    liveOptions &&
    questionNumber &&
    liveProgress
) {

    console.log(
        "Test UI ready."
    );

}


/* =========================================================
   13. LOGOUT
========================================================= */

function logout() {

    if (
        typeof authService !==
        "undefined" &&
        typeof authService.logout ===
        "function"
    ) {

        authService.logout();

    }

    else {

        localStorage.removeItem(
            "currentUser"
        );

        localStorage.removeItem(
            "user"
        );

        localStorage.removeItem(
            "token"
        );

    }


    window.location.href =
        "auth.html";

}



/* =========================================================
   FEEDBACK FORM
========================================================= */

document.addEventListener("DOMContentLoaded", function () {

    console.log("Feedback form starting...");


    /* =====================================================
       GET FORM ELEMENTS
    ===================================================== */

    const feedbackForm =
        document.getElementById("feedbackForm");

    const nameInput =
        document.getElementById("name");

    const emailInput =
        document.getElementById("email");

    const typeInput =
        document.getElementById("type");

    const subjectInput =
        document.getElementById("subject");

    const messageInput =
        document.getElementById("message");

    const feedbackStatus =
        document.getElementById("feedbackStatus");


    /* =====================================================
       CHECK FORM
    ===================================================== */

    if (!feedbackForm) {

        console.warn(
            "Feedback form not found."
        );

        return;
    }


    /* =====================================================
       GET LOGGED-IN USER
    ===================================================== */

    if (
        typeof authService !== "undefined" &&
        typeof authService.getCurrentUser === "function"
    ) {

        const currentUser =
            authService.getCurrentUser();


        if (currentUser) {

            console.log(
                "Logged-in user:",
                currentUser
            );


            /* ---------------------------------------------
               AUTO-FILL NAME
            --------------------------------------------- */

            if (
                nameInput &&
                currentUser.name
            ) {

                nameInput.value =
                    currentUser.name;

            }


            /* ---------------------------------------------
               AUTO-FILL EMAIL
            --------------------------------------------- */

            if (
                emailInput &&
                currentUser.email
            ) {

                emailInput.value =
                    currentUser.email;

            }

        }

        else {

            console.warn(
                "No logged-in user found."
            );

        }

    }

    else {

        console.warn(
            "authService is not available."
        );

    }


    /* =====================================================
       SUBMIT FEEDBACK
    ===================================================== */

    feedbackForm.addEventListener(
        "submit",
        async function (event) {

            event.preventDefault();


            /* ---------------------------------------------
               READ FORM VALUES
            --------------------------------------------- */

            const name =
                nameInput.value.trim();

            const email =
                emailInput.value.trim();

            const type =
                typeInput.value;

            const subject =
                subjectInput.value.trim();

            const message =
                messageInput.value.trim();


            /* ---------------------------------------------
               VALIDATION
            --------------------------------------------- */

            if (
                !name ||
                !email ||
                !type ||
                !subject ||
                !message
            ) {

                feedbackStatus.textContent =
                    "Please fill in all fields.";

                feedbackStatus.style.color =
                    "red";

                return;

            }


            /* ---------------------------------------------
               SHOW SUBMITTING STATUS
            --------------------------------------------- */

            feedbackStatus.textContent =
                "Submitting feedback...";

            feedbackStatus.style.color =
                "";


            /* Disable button while submitting */

            const submitButton =
                feedbackForm.querySelector(
                    ".feedback-submit"
                );


            if (submitButton) {

                submitButton.disabled =
                    true;

                submitButton.textContent =
                    "Submitting...";

            }


            /* =================================================
               SEND TO BACKEND
            ================================================= */

            try {

                const response =
                    await fetch(
                        "http://localhost:5000/api/feedback",
                        {
                            method: "POST",

                            headers: {
                                "Content-Type":
                                    "application/json"
                            },

                            body: JSON.stringify({

                                name:
                                    name,

                                email:
                                    email,

                                type:
                                    type,

                                subject:
                                    subject,

                                message:
                                    message

                            })

                        }
                    );


                const data =
                    await response.json();


                console.log(
                    "Feedback API response:",
                    data
                );


                /* ---------------------------------------------
                   HANDLE ERROR
                --------------------------------------------- */

                if (!response.ok) {

                    throw new Error(
                        data.message ||
                        "Failed to submit feedback."
                    );

                }


                /* ---------------------------------------------
                   SUCCESS
                --------------------------------------------- */

                feedbackStatus.textContent =
                    data.message ||
                    "Thank you! Your feedback has been submitted successfully.";

                feedbackStatus.style.color =
                    "green";


                /* Clear form */

                feedbackForm.reset();


                /* ---------------------------------------------
                   RESTORE USER INFORMATION
                   AFTER RESET
                --------------------------------------------- */

                if (
                    typeof authService !== "undefined" &&
                    typeof authService.getCurrentUser === "function"
                ) {

                    const currentUser =
                        authService.getCurrentUser();


                    if (currentUser) {

                        if (
                            nameInput &&
                            currentUser.name
                        ) {

                            nameInput.value =
                                currentUser.name;

                        }


                        if (
                            emailInput &&
                            currentUser.email
                        ) {

                            emailInput.value =
                                currentUser.email;

                        }

                    }

                }

            }

            catch (error) {

                console.error(
                    "Feedback submission error:",
                    error
                );


                feedbackStatus.textContent =
                    error.message ||
                    "Unable to submit feedback. Please try again.";

                feedbackStatus.style.color =
                    "red";

            }

            finally {

                /* ---------------------------------------------
                   ENABLE BUTTON AGAIN
                --------------------------------------------- */

                if (submitButton) {

                    submitButton.disabled =
                        false;

                    submitButton.textContent =
                        "Submit Report";

                }

            }

        }
    );


    console.log(
        "Feedback form ready."
    );

});

