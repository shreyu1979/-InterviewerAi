/* =========================================
   BACKEND CONFIGURATION
========================================= */

const API_BASE_URL = "https://tobehired.onrender.com/api";


/* =========================================
   AUTH SERVICE
========================================= */

const authService = {

    /* =========================================
       REGISTER
    ========================================= */

    async signup(userData) {

        try {

            const response = await fetch(
                `${API_BASE_URL}/auth/register`,
                {
                    method: "POST",

                    headers: {
                        "Content-Type": "application/json"
                    },

                    body: JSON.stringify({
                        name: userData.name,
                        email: userData.email,
                        password: userData.password
                    })
                }
            );


            const data = await response.json();


            if (!response.ok) {

                return {
                    success: false,
                    message:
                        data.message ||
                        "Registration failed."
                };

            }


            return {
                success: true,
                message:
                    data.message ||
                    "Account created successfully.",
                userId: data.userId
            };


        } catch (error) {

            console.error(
                "Signup error:",
                error
            );

            return {
                success: false,
                message:
                    "Unable to connect to the backend."
            };

        }

    },


    /* =========================================
       LOGIN
    ========================================= */

    async login(email, password) {

        try {

            const response = await fetch(
                `${API_BASE_URL}/auth/login`,
                {
                    method: "POST",

                    headers: {
                        "Content-Type": "application/json"
                    },

                    body: JSON.stringify({
                        email: email,
                        password: password
                    })
                }
            );


            const data = await response.json();


            console.log(
                "Backend login response:",
                data
            );


            /* -------------------------------------
               Backend rejected login
            ------------------------------------- */

            if (!response.ok) {

                return {
                    success: false,
                    message:
                        data.message ||
                        "Invalid email or password."
                };

            }


            /* -------------------------------------
               Make sure JWT exists
            ------------------------------------- */

            if (!data.token) {

                console.error(
                    "Login response does not contain token:",
                    data
                );

                return {
                    success: false,
                    message:
                        "Login failed: authentication token missing."
                };

            }


            /* -------------------------------------
               Make sure user exists
            ------------------------------------- */

            if (!data.user) {

                console.error(
                    "Login response does not contain user:",
                    data
                );

                return {
                    success: false,
                    message:
                        "Login failed: user information missing."
                };

            }


            /* -------------------------------------
               Store JWT
            ------------------------------------- */

            localStorage.setItem(
                "authToken",
                data.token
            );


            /* -------------------------------------
               Store logged-in user
            ------------------------------------- */

            localStorage.setItem(
                "currentUser",
                JSON.stringify(data.user)
            );


            return {

                success: true,

                message:
                    data.message ||
                    "Login successful.",

                user: data.user,

                token: data.token

            };


        } catch (error) {

            console.error(
                "Login error:",
                error
            );

            return {
                success: false,
                message:
                    "Unable to connect to the backend."
            };

        }

    },


/* =========================================
   GOOGLE LOGIN
========================================= */

async googleLogin(credential) {

    try {

        const response = await fetch(
            `${API_BASE_URL}/auth/google`,
            {
                method: "POST",

                headers: {
                    "Content-Type": "application/json"
                },

                body: JSON.stringify({
                    credential: credential
                })
            }
        );


        const data = await response.json();


        console.log(
            "Backend Google login response:",
            data
        );


        /* -------------------------------------
           Backend rejected Google login
        ------------------------------------- */

        if (!response.ok) {

            return {
                success: false,
                message:
                    data.message ||
                    "Google login failed."
            };

        }


        /* -------------------------------------
           Make sure JWT exists
        ------------------------------------- */

        if (!data.token) {

            console.error(
                "Google login response does not contain token:",
                data
            );

            return {
                success: false,
                message:
                    "Google login failed: authentication token missing."
            };

        }


        /* -------------------------------------
           Make sure user exists
        ------------------------------------- */

        if (!data.user) {

            console.error(
                "Google login response does not contain user:",
                data
            );

            return {
                success: false,
                message:
                    "Google login failed: user information missing."
            };

        }


        /* -------------------------------------
           Store JWT
        ------------------------------------- */

        localStorage.setItem(
            "authToken",
            data.token
        );


        /* -------------------------------------
           Store logged-in user
        ------------------------------------- */

        localStorage.setItem(
            "currentUser",
            JSON.stringify(data.user)
        );


        return {

            success: true,

            message:
                data.message ||
                "Google login successful.",

            user: data.user,

            token: data.token

        };


    } catch (error) {

        console.error(
            "Google login error:",
            error
        );

        return {
            success: false,
            message:
                "Unable to connect to the backend."
        };

    }

},  

    /* =========================================
       GET CURRENT USER
    ========================================= */

    getCurrentUser() {

        const user =
            localStorage.getItem(
                "currentUser"
            );


        if (!user) {

            return null;

        }


        try {

            return JSON.parse(user);

        } catch (error) {

            console.error(
                "Invalid stored user:",
                error
            );


            /* Remove corrupted data */

            localStorage.removeItem(
                "currentUser"
            );

            return null;

        }

    },


    /* =========================================
       GET JWT TOKEN
    ========================================= */

    getToken() {

        return localStorage.getItem(
            "authToken"
        );

    },


    /* =========================================
       CHECK AUTHENTICATION
    ========================================= */

    isAuthenticated() {

        const token =
            this.getToken();

        const user =
            this.getCurrentUser();


        return !!(
            token &&
            user
        );

    },


    /* =========================================
       LOGOUT
    ========================================= */

    async logout() {

        const token =
            this.getToken();


        try {

            if (token) {

                await fetch(
                    `${API_BASE_URL}/auth/logout`,
                    {
                        method: "POST",

                        headers: {
                            "Authorization":
                                `Bearer ${token}`
                        }
                    }
                );

            }

        } catch (error) {

            console.error(
                "Logout error:",
                error
            );

        }


        /* -------------------------------------
           Always clear frontend session
        ------------------------------------- */

        localStorage.removeItem(
            "authToken"
        );

        localStorage.removeItem(
            "currentUser"
        );

    }

};


/* =========================================
   GLOBAL LOGOUT
========================================= */

async function logout() {

    await authService.logout();

    window.location.href =
        "auth.html";

}


/* =========================================
   PASSWORD SHOW / HIDE
========================================= */

function togglePassword(id, icon) {

    const input =
        document.getElementById(id);


    if (!input) {

        return;

    }


    if (input.type === "password") {

        input.type = "text";

        icon.classList.remove(
            "bi-eye"
        );

        icon.classList.add(
            "bi-eye-slash"
        );

    } else {

        input.type = "password";

        icon.classList.remove(
            "bi-eye-slash"
        );

        icon.classList.add(
            "bi-eye"
        );

    }

}

/* =========================================
   SHARED LOADING FEEDBACK
   Used by authentication and long-running actions.
========================================= */
(function installAppLoader() {
    if (document.getElementById("appLoadingOverlay")) return;
    const style = document.createElement("style");
    style.textContent = `
      #appLoadingOverlay { position:fixed; inset:0; z-index:99999; display:none;
        align-items:center; justify-content:center; padding:24px; background:rgba(10,18,35,.48);
        backdrop-filter:blur(3px); -webkit-backdrop-filter:blur(3px); }
      #appLoadingOverlay .app-loading-card { width:min(100%,320px); text-align:center; padding:26px 22px;
        border-radius:18px; background:#fff; color:#172033; box-shadow:0 18px 55px rgba(0,0,0,.22); }
      #appLoadingOverlay .app-loading-spinner { width:42px; height:42px; margin:0 auto 16px;
        border:4px solid #dbeafe; border-top-color:#2563eb; border-radius:50%;
        animation:appLoaderSpin .75s linear infinite; }
      #appLoadingOverlay .app-loading-title { font-size:17px; font-weight:700; margin-bottom:7px; }
      #appLoadingOverlay .app-loading-detail { font-size:13px; line-height:1.45; color:#64748b; }
      @keyframes appLoaderSpin { to { transform:rotate(360deg); } }
      @media (prefers-reduced-motion: reduce) { #appLoadingOverlay .app-loading-spinner { animation-duration:1.8s; } }
    `;
    document.head.appendChild(style);
    const overlay = document.createElement("div");
    overlay.id = "appLoadingOverlay";
    overlay.setAttribute("role", "status");
    overlay.setAttribute("aria-live", "polite");
    overlay.innerHTML = '<div class="app-loading-card"><div class="app-loading-spinner" aria-hidden="true"></div><div class="app-loading-title" id="appLoadingTitle">Please wait…</div><div class="app-loading-detail" id="appLoadingDetail">This may take a few seconds.</div></div>';
    document.body.appendChild(overlay);
    window.showAppLoading = function(title, detail) {
      document.getElementById("appLoadingTitle").textContent = title || "Please wait…";
      document.getElementById("appLoadingDetail").textContent = detail || "This may take a few seconds.";
      overlay.style.display = "flex";
      document.body.setAttribute("aria-busy", "true");
    };
    window.hideAppLoading = function() {
      overlay.style.display = "none";
      document.body.removeAttribute("aria-busy");
    };
})();
