/* =========================================
   WELCOME PAGE FUNCTIONS
   (index.html)
========================================= */

function openLogin() {

    window.location.href = "auth.html";

}


function openSignup() {

    window.location.href = "auth.html?mode=signup";

}


function scrollToFeatures() {

    document.getElementById(
        "features"
    ).scrollIntoView({

        behavior: "smooth"

    });

}


/* =========================================
   INITIAL AUTH CHECK

   If the user is already logged in,
   send them straight to the dashboard.
========================================= */

document.addEventListener(
    "DOMContentLoaded",
    function () {

        const currentUser =
            authService.getCurrentUser();

        if (currentUser) {

            window.location.href = "home.html";

        }

    }
);
