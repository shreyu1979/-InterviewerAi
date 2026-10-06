/* =========================================================
   DASHBOARD.JS
   tobeHired Dashboard
   FLASHING FIXED
========================================================= */

console.log("🔥 DASHBOARD.JS LOADED");


/* =========================================================
   GLOBAL TEST VARIABLES
========================================================= */

let javascriptQuestions = [];
let currentTestSkill = null;
let currentQuestion = 0;
let selectedAnswer = null;
let userAnswers = [];


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

  const API_BASE_URL =
    "https://tobehired.onrender.com/api";


    console.log("Resume upload system starting...");


    /* =====================================================
       REQUIRED ELEMENT CHECK
    ===================================================== */

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


    /* =====================================================
       INITIAL RESUME STATE

       IMPORTANT:
       Do NOT use setInterval.
       Do NOT continuously force display.
    ===================================================== */

    resumeResults.dataset.analysisShown =
        "false";

    resumeResults.classList.add(
        "resume-results-hidden"
    );

    resumeResults.classList.remove(
        "resume-results-visible"
    );

    resumeResults.style.removeProperty(
        "display"
    );

    resumeResults.style.removeProperty(
        "visibility"
    );

    resumeResults.style.removeProperty(
        "opacity"
    );


    invalidResumeMessage.style.setProperty(
        "display",
        "none",
        "important"
    );


    /* =====================================================
       RESUME FORM PROTECTION
    ===================================================== */

    const resumeForm =
        resumeInput.closest("form");


    if (resumeForm) {

        resumeForm.addEventListener(
            "submit",
            function (event) {

                event.preventDefault();
                event.stopImmediatePropagation();

                console.log(
                    "🛑 RESUME FORM SUBMIT BLOCKED"
                );

            },
            true
        );


        resumeForm.addEventListener(
            "keydown",
            function (event) {

                if (event.key === "Enter") {

                    event.preventDefault();

                }

            },
            true
        );

    }


    /* =====================================================
       SHOW RESUME RESULTS

       Only called AFTER analysis content is rendered.
    ===================================================== */

    function showResumeResults() {

        if (!resumeResults) {
            return;
        }


        /*
         * Remove hidden state.
         */

        resumeResults.classList.remove(
            "resume-results-hidden"
        );


        /*
         * Add visible state.
         */

        resumeResults.classList.add(
            "resume-results-visible"
        );


        /*
         * Mark analysis as successfully shown.
         */

        resumeResults.dataset.analysisShown =
            "true";


        /*
         * These are applied ONCE.
         * No interval.
         */

        resumeResults.style.setProperty(
            "display",
            "block",
            "important"
        );


        resumeResults.style.setProperty(
            "visibility",
            "visible",
            "important"
        );


        resumeResults.style.setProperty(
            "opacity",
            "1",
            "important"
        );


        console.log(
            "✅ Resume results shown ONCE"
        );

    }


    /* =====================================================
       HIDE RESUME RESULTS
    ===================================================== */

    function hideResumeResults() {

        if (!resumeResults) {
            return;
        }


        resumeResults.dataset.analysisShown =
            "false";


        resumeResults.classList.remove(
            "resume-results-visible"
        );


        resumeResults.classList.add(
            "resume-results-hidden"
        );


        resumeResults.style.setProperty(
            "display",
            "none",
            "important"
        );


        resumeResults.style.setProperty(
            "visibility",
            "hidden",
            "important"
        );


        resumeResults.style.setProperty(
            "opacity",
            "0",
            "important"
        );

    }


    /* =====================================================
       SHOW RESUME ERROR
    ===================================================== */

    function showResumeError(
        title,
        message
    ) {

        console.warn(
            "Showing resume error:",
            title,
            message
        );


        hideResumeResults();


        invalidResumeMessage.style.setProperty(
            "display",
            "block",
            "important"
        );


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
                function (event) {

                    event.preventDefault();
                    event.stopPropagation();


                    resumeInput.value = "";


                    setTimeout(
                        function () {

                            resumeInput.click();

                        },
                        50
                    );

                }
            );

        }

    }


    /* =====================================================
       NORMALIZE SKILLS
    ===================================================== */

    function normalizeSkills(value) {

        const result = [];


        function collect(item) {

            if (
                item === null ||
                item === undefined
            ) {

                return;

            }


            if (Array.isArray(item)) {

                item.forEach(collect);

                return;

            }


            if (typeof item === "string") {

                const text =
                    item.trim();


                if (!text) {

                    return;

                }


                /*
                 * Backend may return JSON string.
                 */

                if (
                    (
                        text.startsWith("[") &&
                        text.endsWith("]")
                    ) ||
                    (
                        text.startsWith("{") &&
                        text.endsWith("}")
                    )
                ) {

                    try {

                        collect(
                            JSON.parse(text)
                        );

                        return;

                    }

                    catch (error) {

                        console.warn(
                            "Could not parse skill JSON:",
                            error
                        );

                    }

                }


                text
                    .split(/[,;\n|]+/)
                    .forEach(
                        function (part) {

                            const clean =
                                part.trim();


                            if (clean) {

                                result.push(
                                    clean
                                );

                            }

                        }
                    );


                return;

            }


            if (typeof item === "number") {

                result.push(
                    String(item)
                );

                return;

            }


            if (typeof item === "object") {

                const name =
                    item.name ||
                    item.skill ||
                    item.label ||
                    item.title;


                if (typeof name === "string") {

                    collect(name);

                    return;

                }


                Object.keys(item).forEach(
                    function (key) {

                        collect(
                            item[key]
                        );

                    }
                );

            }

        }


        collect(value);


        /*
         * Remove duplicates.
         */

        return result.filter(
            function (skill, index) {

                return (
                    result.findIndex(
                        function (other) {

                            return (
                                other.toLowerCase() ===
                                skill.toLowerCase()
                            );

                        }
                    ) === index
                );

            }
        );

    }


    /* =====================================================
       NORMALIZE LIST DATA
    ===================================================== */

    function normalizeList(value) {

        if (
            value === null ||
            value === undefined
        ) {

            return [];

        }


        if (Array.isArray(value)) {

            return value;

        }


        if (typeof value === "string") {

            const text =
                value.trim();


            if (!text) {

                return [];

            }


            try {

                const parsed =
                    JSON.parse(text);


                if (Array.isArray(parsed)) {

                    return parsed;

                }


                return [parsed];

            }

            catch (error) {

                return [text];

            }

        }


        return [value];

    }


    /* =====================================================
       DISPLAY RESUME ANALYSIS
    ===================================================== */

    function displayAnalysis(
        analysisResponse
    ) {

        console.log(
            "🔥🔥 displayAnalysis() STARTED"
        );


        console.log(
            "🔥 ANALYSIS RESPONSE:",
            analysisResponse
        );


        /* =================================================
           UNWRAP BACKEND RESPONSE
        ================================================= */

        let analysis =
            analysisResponse;


        const wrapperKeys = [
            "analysis",
            "data",
            "result",
            "resume_analysis",
            "resumeAnalysis"
        ];


        for (let i = 0; i < 5; i++) {

            if (
                !analysis ||
                typeof analysis !== "object" ||
                Array.isArray(analysis)
            ) {

                break;

            }


            const wrapperKey =
                wrapperKeys.find(
                    function (key) {

                        return (
                            analysis[key] &&
                            typeof analysis[key] === "object"
                        );

                    }
                );


            if (!wrapperKey) {

                break;

            }


            analysis =
                analysis[wrapperKey];

        }


        if (
            !analysis ||
            typeof analysis !== "object"
        ) {

            throw new Error(
                "No valid analysis object received."
            );

        }


        console.log(
            "🔥 FINAL ANALYSIS OBJECT:",
            analysis
        );


        /* =================================================
           GET SKILLS
        ================================================= */

        const rawSkills =
            analysis.skills !== undefined

                ? analysis.skills

                : (
                    analysis.detected_skills !== undefined

                        ? analysis.detected_skills

                        : (
                            analysis.detectedSkills !== undefined

                                ? analysis.detectedSkills

                                : analysis.skill_list
                        )
                );


        const skills =
            normalizeSkills(
                rawSkills
            );


        console.log(
            "Detected skills:",
            skills
        );


        /* =================================================
           DISPLAY DETECTED SKILLS
        ================================================= */

        const skillsList =
            resumeResults.querySelector(
                "#detectedSkills"
            );


        if (skillsList) {

            skillsList.innerHTML = "";


            if (skills.length > 0) {

                skills.forEach(
                    function (skill) {

                        const skillElement =
                            document.createElement(
                                "span"
                            );


                        skillElement.innerText =
                            String(skill);


                        skillsList.appendChild(
                            skillElement
                        );

                    }
                );

            }

            else {

                const noSkills =
                    document.createElement(
                        "span"
                    );


                noSkills.innerText =
                    "No specific skills detected";


                skillsList.appendChild(
                    noSkills
                );

            }

        }

        else {

            console.warn(
                "#detectedSkills was not found."
            );

        }


        console.log(
            "🔥 AFTER SKILLS RENDER:",
            skillsList
                ? skillsList.innerHTML
                : "NOT FOUND"
        );


        /* =================================================
           DISPLAY TEST SKILLS
        ================================================= */

        const testSkills =
            resumeResults.querySelector(
                ".test-skills"
            );


        if (testSkills) {

            testSkills.innerHTML = "";


            skills.forEach(
                function (skill) {

                    const skillElement =
                        document.createElement(
                            "span"
                        );


                    skillElement.innerText =
                        skill;


                    skillElement.style.cursor =
                        "pointer";


                    skillElement.classList.add(
                        "test-skill-card"
                    );


                    skillElement.dataset.skill =
                        skill.trim();


                    skillElement.addEventListener(
                        "click",
                        function (event) {

                            event.preventDefault();
                            event.stopPropagation();


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

                }
            );

        }


        /* =================================================
           EDUCATION
        ================================================= */

        const education =
            normalizeList(
                analysis.education
            );


        const educationList =
            resumeResults.querySelector(
                ".education-list"
            );


        if (educationList) {

            educationList.innerHTML = "";


            if (education.length > 0) {

                education.forEach(
                    function (item) {

                        const element =
                            document.createElement(
                                "span"
                            );


                        element.innerText =
                            typeof item === "object"

                                ? (
                                    item.name ||
                                    item.degree ||
                                    item.title ||
                                    JSON.stringify(item)
                                )

                                : String(item);


                        educationList.appendChild(
                            element
                        );

                    }
                );

            }

            else {

                educationList.innerHTML =
                    "<span>Not detected</span>";

            }

        }


        /* =================================================
           QUALIFICATION
        ================================================= */

        const qualification =
            normalizeList(
                analysis.qualification
            );


        const qualificationList =
            resumeResults.querySelector(
                ".qualification-list"
            );


        if (qualificationList) {

            qualificationList.innerHTML = "";


            if (qualification.length > 0) {

                qualification.forEach(
                    function (item) {

                        const element =
                            document.createElement(
                                "span"
                            );


                        element.innerText =
                            typeof item === "object"

                                ? (
                                    item.name ||
                                    item.degree ||
                                    item.title ||
                                    JSON.stringify(item)
                                )

                                : String(item);


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
           SHOW RESULTS ONLY AFTER EVERYTHING
           HAS BEEN RENDERED
        ================================================= */

        showResumeResults();


        console.log(
            "✅ Resume analysis forced visible ONCE"
        );


        /* =================================================
           FINAL VERIFICATION
        ================================================= */

        console.log(
            "🟢 SHOWING resumeResults"
        );


        console.log(
            "resumeResults classes:",
            resumeResults.className
        );


        console.log(
            "resumeResults style:",
            resumeResults.getAttribute(
                "style"
            )
        );


        console.log(
            "resumeResults computed display:",
            getComputedStyle(
                resumeResults
            ).display
        );


        console.log(
            "resumeResults computed visibility:",
            getComputedStyle(
                resumeResults
            ).visibility
        );


        console.log(
            "skills currently rendered:",
            resumeResults.querySelectorAll(
                "#detectedSkills span"
            ).length
        );


        console.log(
            "Resume analysis displayed successfully."
        );


        console.log(
            "🚨 RESUME DISPLAY COMPLETE"
        );

    }


    /* =====================================================
       UPLOAD + ANALYZE RESUME
    ===================================================== */

    async function uploadAndAnalyzeResume(file) {

        let analysisDisplayed =
            false;


        try {

            console.log(
                "Uploading resume:",
                file.name
            );


            /* =================================================
               AUTH
            ================================================= */

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


            /* =================================================
               FORM DATA
            ================================================= */

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


            /* =================================================
               UPLOAD
            ================================================= */

            console.log(
                "📤 Sending resume to upload API..."
            );


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


            console.log(
                "✅ Resume ID:",
                resumeId
            );


            /* =================================================
               ANALYZE
            ================================================= */

            console.log(
                "🤖 Sending resume for AI analysis..."
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


            console.log(
                "🔥 FRONTEND ANALYZE RESPONSE:",
                analyzeData
            );


            /* =================================================
               DISPLAY ANALYSIS
            ================================================= */

            displayAnalysis(
                analyzeData
            );


            analysisDisplayed =
                true;


            console.log(
                "✅ displayAnalysis FINISHED"
            );


            console.log(
                "🎉 Resume uploaded and analyzed successfully."
            );

        }


        catch (error) {

            console.error(
                "❌ RESUME UPLOAD ERROR:",
                error
            );


            /*
             * Never replace successful analysis
             * with an error.
             */

            if (!analysisDisplayed) {

                if (
                    resumeResults.dataset.analysisShown !==
                    "true"
                ) {

                    showResumeError(
                        "Resume Processing Failed",
                        error.message ||
                        "Unable to process your resume. Please try again."
                    );

                }

            }

        }

    }


    /* =====================================================
       FILE SELECTED
    ===================================================== */

    resumeInput.addEventListener(
        "change",
        async function (event) {

            console.log(
                "🔥🔥 RESUME INPUT CHANGE EVENT FIRED 🔥🔥"
            );


            event.stopPropagation();


            const file =
                this.files &&
                this.files[0];


            if (!file) {

                console.log(
                    "No file selected."
                );

                return;

            }


            console.log(
                "🔥 FILE SELECTED:",
                file.name
            );


            console.log(
                "🔥 FILE SIZE:",
                file.size
            );


            console.log(
                "🔥 FILE TYPE:",
                file.type
            );


            /* =================================================
               RESET PREVIOUS RESULT STATE
            ================================================= */

            resumeResults.dataset.analysisShown =
                "false";


            invalidResumeMessage.style.setProperty(
                "display",
                "none",
                "important"
            );


            hideResumeResults();


            /* =================================================
               PDF VALIDATION
            ================================================= */

            const isPDF =
                file.type === "application/pdf" ||
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


            /* =================================================
               5 MB LIMIT
            ================================================= */

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


            /* =================================================
               PROCESS
            ================================================= */

            console.log(
                "🚀 Starting resume processing..."
            );


            await uploadAndAnalyzeResume(
                file
            );

        }
    );


    /* =========================================================
       3. TEST ELEMENTS
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
       4. SHOW QUESTION
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


        const options =
            Array.isArray(current.options)
                ? current.options
                : [];


        options.forEach(
            function (option, index) {

                const optionElement =
                    document.createElement(
                        "div"
                    );


                optionElement.classList.add(
                    "live-option"
                );


                optionElement.innerHTML = `

                    <span class="live-option-letter">
                        ${letters[index]}
                    </span>

                    <span>
                        ${option ?? ""}
                    </span>

                `;


                optionElement.addEventListener(
                    "click",
                    function (event) {

                        event.preventDefault();
                        event.stopPropagation();


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
       5. START TEST FOR ANY SKILL
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
                    `${API_BASE_URL}/questions/random?skill=${encodeURIComponent(currentTestSkill)}&limit=20`
                );


            const data =
                await response.json();


            console.log(
                "Questions API response:",
                data
            );


            if (
                !data.success ||
                !Array.isArray(data.questions) ||
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
                                [
                                    "A",
                                    "B",
                                    "C",
                                    "D"
                                ].indexOf(
                                    String(
                                        question.correct_answer
                                    )
                                        .trim()
                                        .toUpperCase()
                                )

                        };

                    }
                );


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


            if (liveTestBox) {

                liveTestBox.scrollIntoView({

                    behavior:
                        "smooth",

                    block:
                        "start"

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
       6. SKILL CARD CLICK
    ========================================================= */

    function attachSkillCardListeners() {

        const skillCards =
            document.querySelectorAll(
                ".test-skill-card"
            );


        skillCards.forEach(
            function (card) {

                if (
                    card.dataset.testListenerAttached ===
                    "true"
                ) {

                    return;

                }


                card.dataset.testListenerAttached =
                    "true";


                card.addEventListener(
                    "click",
                    function (event) {

                        event.preventDefault();
                        event.stopPropagation();


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

    }


    attachSkillCardListeners();


    /* =========================================================
       7. START APTITUDE TEST
    ========================================================= */

    const startAptitudeTestBtn =
        document.getElementById(
            "startAptitudeTestBtn"
        );


    if (startAptitudeTestBtn) {

        startAptitudeTestBtn.addEventListener(
            "click",
            async function (event) {

                event.preventDefault();
                event.stopPropagation();


                console.log(
                    "Starting Aptitude Test..."
                );


                await startSkillTest(
                    "Aptitude"
                );

            }
        );

    }


    /* =========================================================
       8. NEXT QUESTION
    ========================================================= */

    if (nextQuestionBtn) {

        nextQuestionBtn.addEventListener(
            "click",
            function (event) {

                event.preventDefault();
                event.stopPropagation();


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
       9. SHOW TEST RESULTS
    ========================================================= */

    async function showResults() {

        console.log(
            "================================="
        );


        console.log(
            "TEST COMPLETED"
        );


        console.log(
            "================================="
        );


        let correctAnswers =
            0;


        const answerReviewList =
            document.getElementById(
                "answerReviewList"
            );


        if (answerReviewList) {

            answerReviewList.innerHTML =
                "<p>Loading your results...</p>";

        }


        const results =
            [];


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


                const answerLetters = [
                    "A",
                    "B",
                    "C",
                    "D"
                ];


                const userAnswer =
                    selectedAnswerIndex !== undefined
                        ? answerLetters[
                            selectedAnswerIndex
                        ]
                        : "";


                console.log(
                    "Submitting question:",
                    question.id,
                    "Answer:",
                    userAnswer
                );


                const response =
                    await fetch(
                        `${API_BASE_URL}/questions/submit`,
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


                if (
                    !response.ok ||
                    !data.success
                ) {

                    throw new Error(
                        data.message ||
                        "Unable to check answer."
                    );

                }


                results.push(
                    data
                );


                if (data.correct) {

                    correctAnswers++;

                }

            }


            const wrongAnswers =
                javascriptQuestions.length -
                correctAnswers;


            const scorePercentage =
                javascriptQuestions.length > 0

                    ? Math.round(
                        (
                            correctAnswers /
                            javascriptQuestions.length
                        ) * 100
                    )

                    : 0;


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


            if (answerReviewList) {

                answerReviewList.innerHTML =
                    "";

            }


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


                    reviewItem.innerHTML = `

                        <div class="review-question">

                            ${index + 1}.
                            ${result.question || ""}

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

                            ${result.correctAnswerText || ""}

                            <br><br>

                            <strong>
                                Explanation:
                            </strong>

                            <p>
                                ${result.explanation || ""}
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


            if (liveTestBox) {

                liveTestBox.style.display =
                    "none";

            }


            if (liveResultBox) {

                liveResultBox.style.display =
                    "block";


                liveResultBox.scrollIntoView({

                    behavior:
                        "smooth",

                    block:
                        "start"

                });

            }


            /*
             * Update resume aptitude score.
             */

            const resumeScoreCircle =
                document.querySelector(
                    "#resume .score-circle strong"
                );


            if (resumeScoreCircle) {

                resumeScoreCircle.innerText =
                    scorePercentage + "%";

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
       10. RESTART TEST
    ========================================================= */

    const restartTestBtn =
        document.getElementById(
            "restartTestBtn"
        );


    if (restartTestBtn) {

        restartTestBtn.addEventListener(
            "click",
            function (event) {

                event.preventDefault();
                event.stopPropagation();


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
       11. TEST UI READY
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
       12. LOGOUT
    ========================================================= */

    function logout() {

        console.log(
            "Logging out..."
        );


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


    window.logout =
        logout;


    /* =========================================================
       13. FEEDBACK FORM
    ========================================================= */

    console.log(
        "Feedback form starting..."
    );


    const feedbackForm =
        document.getElementById(
            "feedbackForm"
        );


    const nameInput =
        document.getElementById(
            "name"
        );


    const emailInput =
        document.getElementById(
            "email"
        );


    const typeInput =
        document.getElementById(
            "type"
        );


    const subjectInput =
        document.getElementById(
            "subject"
        );


    const messageInput =
        document.getElementById(
            "message"
        );


    const feedbackStatus =
        document.getElementById(
            "feedbackStatus"
        );


    if (feedbackForm) {

        /* =====================================================
           AUTO-FILL USER
        ===================================================== */

        if (
            typeof authService !==
                "undefined" &&
            typeof authService.getCurrentUser ===
                "function"
        ) {

            const currentUser =
                authService.getCurrentUser();


            console.log(
                "🔐 AUTH CHECK:",
                currentUser
            );


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


        /* =====================================================
           SUBMIT FEEDBACK
        ===================================================== */

        feedbackForm.addEventListener(
            "submit",
            async function (event) {

                event.preventDefault();
                event.stopPropagation();


                const name =
                    nameInput
                        ? nameInput.value.trim()
                        : "";


                const email =
                    emailInput
                        ? emailInput.value.trim()
                        : "";


                const type =
                    typeInput
                        ? typeInput.value
                        : "";


                const subject =
                    subjectInput
                        ? subjectInput.value.trim()
                        : "";


                const message =
                    messageInput
                        ? messageInput.value.trim()
                        : "";


                if (
                    !name ||
                    !email ||
                    !type ||
                    !subject ||
                    !message
                ) {

                    if (feedbackStatus) {

                        feedbackStatus.textContent =
                            "Please fill in all fields.";


                        feedbackStatus.style.color =
                            "red";

                    }


                    return;

                }


                if (feedbackStatus) {

                    feedbackStatus.textContent =
                        "Submitting feedback...";


                    feedbackStatus.style.color =
                        "";

                }


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


                try {

                    const response =
                        await fetch(
                            `${API_BASE_URL}/feedback`,
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


                    if (!response.ok) {

                        throw new Error(
                            data.message ||
                            "Failed to submit feedback."
                        );

                    }


                    if (feedbackStatus) {

                        feedbackStatus.textContent =
                            data.message ||
                            "Thank you! Your feedback has been submitted successfully.";


                        feedbackStatus.style.color =
                            "green";

                    }


                    feedbackForm.reset();


                    /* =================================================
                       RESTORE USER INFORMATION
                    ================================================= */

                    if (
                        typeof authService !==
                            "undefined" &&
                        typeof authService.getCurrentUser ===
                            "function"
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


                    if (feedbackStatus) {

                        feedbackStatus.textContent =
                            error.message ||
                            "Unable to submit feedback. Please try again.";


                        feedbackStatus.style.color =
                            "red";

                    }

                }

                finally {

                    if (submitButton) {

                        submitButton.disabled =
                            false;


                        submitButton.textContent =
                            "Submit Report";

                    }

                }

            }
        );

    }

    else {

        console.warn(
            "Feedback form not found."
        );

    }


    console.log(
        "Feedback form ready."
    );


    console.log(
        "✅ DASHBOARD INITIALIZATION COMPLETE"
    );

});
