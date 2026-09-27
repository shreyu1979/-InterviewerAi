/* =========================================
   BACKEND CONFIGURATION
========================================= */

const API_BASE_URL = "http://localhost:5000/api";


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