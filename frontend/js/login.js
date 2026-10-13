/* =========================================
   LOGIN / SIGNUP SWITCH
========================================= */

function showSignup() {
    document.getElementById("loginForm").style.display = "none";
    document.getElementById("signupForm").style.display = "block";
}


function showLogin() {
    document.getElementById("signupForm").style.display = "none";
    document.getElementById("loginForm").style.display = "block";
}


/* =========================================
   BACK TO HOME
========================================= */

function goHome() {
    window.location.href = "index.html";
}


/* =========================================
   SIGNUP
========================================= */

document
    .getElementById("signupFormElement")
    .addEventListener("submit", async function (event) {

        event.preventDefault();

        const name =
            document
                .getElementById("signupName")
                .value
                .trim();

        const email =
            document
                .getElementById("signupEmail")
                .value
                .trim()
                .toLowerCase();

        const password =
            document
                .getElementById("signupPassword")
                .value;

        const confirmPassword =
            document
                .getElementById("confirmPassword")
                .value;


        /* -----------------------------------------
           Basic validation
        ----------------------------------------- */

        if (!name || !email || !password || !confirmPassword) {

            alert("Please fill in all fields.");

            return;
        }


        /* -----------------------------------------
           Password confirmation
        ----------------------------------------- */

        if (password !== confirmPassword) {

            alert("Passwords do not match!");

            return;
        }


        /* -----------------------------------------
           Password length
           Backend also validates this.
        ----------------------------------------- */

        if (password.length < 8) {

            alert("Password must be at least 8 characters.");

            return;
        }


        /* -----------------------------------------
           Call backend registration
        ----------------------------------------- */

        const signupButton = document.querySelector('#signupFormElement button[type="submit"]');
        const originalSignupButtonHTML = signupButton ? signupButton.innerHTML : "";
        if (signupButton) { signupButton.disabled = true; signupButton.innerHTML = '<span class="auth-inline-spinner" aria-hidden="true"></span> Creating account…'; }
        if (window.showAppLoading) window.showAppLoading("Creating your account…", "Please keep this page open while we securely register you.");

        try {

            const result =
                await authService.signup({
                    name: name,
                    email: email,
                    password: password
                });


            console.log("SIGNUP RESULT:", result);


            if (!result || !result.success) {

                alert(
                    result?.message ||
                    "Registration failed."
                );

                return;
            }


            /* -----------------------------------------
               Registration successful
            ----------------------------------------- */

            alert(
                "Account created successfully! Please login."
            );


            document
                .getElementById("signupFormElement")
                .reset();


            showLogin();

        } catch (error) {

            console.error(
                "Signup error:",
                error
            );

            alert(
                "Unable to connect to the server."
            );
        } finally {
            if (window.hideAppLoading) window.hideAppLoading();
            if (signupButton) { signupButton.disabled = false; signupButton.innerHTML = originalSignupButtonHTML; }
        }

    });


/* =========================================
   LOGIN
========================================= */

document
    .getElementById("loginFormElement")
    .addEventListener("submit", async function (event) {

        event.preventDefault();


        const email =
            document
                .getElementById("loginEmail")
                .value
                .trim()
                .toLowerCase();

        const password =
            document
                .getElementById("loginPassword")
                .value;


        /* -----------------------------------------
           Basic validation
        ----------------------------------------- */

        if (!email || !password) {

            alert(
                "Email and password are required."
            );

            return;
        }


        /* -----------------------------------------
           Call backend login
        ----------------------------------------- */

        const loginButton = document.querySelector('#loginFormElement button[type="submit"]');
        const originalLoginButtonHTML = loginButton ? loginButton.innerHTML : "";
        if (loginButton) { loginButton.disabled = true; loginButton.innerHTML = '<span class="auth-inline-spinner" aria-hidden="true"></span> Signing in…'; }
        if (window.showAppLoading) window.showAppLoading("Signing you in…", "Verifying your account. Please wait.");

        try {

            const result =
                await authService.login(
                    email,
                    password
                );


            console.log(
                "LOGIN RESULT:",
                result
            );


            /* -----------------------------------------
               Backend rejected login
            ----------------------------------------- */

            if (
                !result ||
                result.success !== true
            ) {

                alert(
                    result?.message ||
                    "Invalid email or password."
                );

                return;
            }


            /* -----------------------------------------
               Make sure backend returned
               authentication data
            ----------------------------------------- */

            if (
                !result.token ||
                !result.user
            ) {

                console.error(
                    "Invalid login response:",
                    result
                );

                alert(
                    "Login failed: invalid server response."
                );

                return;
            }


            /* -----------------------------------------
               Login successful
            ----------------------------------------- */

            document
                .getElementById("loginFormElement")
                .reset();


            window.location.href =
                "home.html";

        } catch (error) {

            console.error(
                "Login error:",
                error
            );

            alert(
                "Unable to connect to the server."
            );
        } finally {
            if (window.hideAppLoading) window.hideAppLoading();
            if (loginButton) { loginButton.disabled = false; loginButton.innerHTML = originalLoginButtonHTML; }
        }

    });


/* =========================================
   GOOGLE AUTHENTICATION
========================================= */

function showGoogleMessage() {

    alert(
        "Google authentication will be connected with the backend."
    );

}


/* =========================================
   INITIAL PAGE SETUP
========================================= */

document.addEventListener(
    "DOMContentLoaded",
    function () {

        /*
         * Check whether a valid frontend
         * session already exists.
         */

        const currentUser =
            authService.getCurrentUser();


        if (currentUser) {

            window.location.href =
                "home.html";

            return;
        }


        /*
         * Check URL parameter:
         *
         * auth.html?mode=signup
         */

        const params =
            new URLSearchParams(
                window.location.search
            );


        if (
            params.get("mode") === "signup"
        ) {

            showSignup();

        } else {

            showLogin();

        }

    }
);


    async function handleGoogleLogin(response) {

        if (window.showAppLoading) window.showAppLoading("Signing in with Google…", "Waiting for Google authentication to finish.");
        try {

            const result =
                await authService.googleLogin(
                    response.credential
                );


            if (!result.success) {

                alert(
                    result.message ||
                    "Google login failed."
                );

                return;

            }


            window.location.href =
                "home.html";


        } catch (error) {

            console.error(
                "Google login error:",
                error
            );

            alert(
                "Unable to complete Google login."
            );

        } finally {
            if (window.hideAppLoading) window.hideAppLoading();
        }

    }
