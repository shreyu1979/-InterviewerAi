const express = require("express");
const nodemailer = require("nodemailer");

const router = express.Router();

const db = require("../config/database");


/* =========================================================
   GMAIL TRANSPORTER
========================================================= */

const transporter = nodemailer.createTransport({

    service: "gmail",

    auth: {

        user:
            process.env.GMAIL_USER,

        pass:
            process.env.GMAIL_APP_PASSWORD

    }

});


/* =========================================================
   POST FEEDBACK
   POST /api/feedback
========================================================= */

router.post("/", async (req, res) => {

    try {

        const {
            name,
            email,
            type,
            subject,
            message
        } = req.body;


        /* =====================================================
           VALIDATION
        ===================================================== */

        if (
            !name ||
            !email ||
            !type ||
            !subject ||
            !message
        ) {

            return res.status(400).json({

                success: false,

                message:
                    "All feedback fields are required."

            });

        }


        /* =====================================================
           INSERT INTO DATABASE
        ===================================================== */

        const sql = `

            INSERT INTO feedback
            (
                name,
                email,
                type,
                subject,
                message
            )

            VALUES (?, ?, ?, ?, ?)

        `;


        db.query(

            sql,

            [
                name,
                email,
                type,
                subject,
                message
            ],

            async (error, result) => {

                /* =================================================
                   DATABASE ERROR
                ================================================= */

                if (error) {

                    console.error(
                        "Feedback database error:",
                        error
                    );


                    return res.status(500).json({

                        success: false,

                        message:
                            "Failed to save feedback."

                    });

                }


                /* =================================================
                   DATABASE SUCCESS
                ================================================= */

                console.log(
                    "Feedback saved successfully."
                );

                console.log(
                    "Feedback ID:",
                    result.insertId
                );


                /* =================================================
                   SEND EMAIL
                ================================================= */

                try {

                    await transporter.sendMail({

                        from:
                            process.env.GMAIL_USER,

                        to:
                            process.env.GMAIL_USER,

                        replyTo:
                            email,

                        subject:
                            `New ${type} - ${subject}`,

                        html: `

                            <div
                                style="
                                    font-family: Arial, sans-serif;
                                    line-height: 1.6;
                                    max-width: 700px;
                                    margin: auto;
                                    padding: 20px;
                                "
                            >

                                <h2>
                                    New Feedback Received
                                </h2>

                                <hr>

                                <p>
                                    <strong>Feedback ID:</strong>
                                    ${result.insertId}
                                </p>

                                <p>
                                    <strong>Type:</strong>
                                    ${type}
                                </p>

                                <p>
                                    <strong>Name:</strong>
                                    ${name}
                                </p>

                                <p>
                                    <strong>Email:</strong>
                                    ${email}
                                </p>

                                <p>
                                    <strong>Subject:</strong>
                                    ${subject}
                                </p>

                                <p>
                                    <strong>Description:</strong>
                                </p>

                                <div
                                    style="
                                        background: #f5f5f5;
                                        padding: 15px;
                                        border-radius: 8px;
                                    "
                                >
                                    ${message}
                                </div>

                                <hr>

                                <p>
                                    This feedback was submitted
                                    from the tobeHired dashboard.
                                </p>

                            </div>

                        `

                    });


                    /* =============================================
                       EMAIL SUCCESS
                    ============================================= */

                    console.log(
                        "Feedback email sent successfully."
                    );


                    return res.status(201).json({

                        success: true,

                        message:
                            "Feedback submitted successfully.",

                        feedbackId:
                            result.insertId,

                        emailSent:
                            true

                    });

                }


                /* =================================================
                   EMAIL ERROR
                ================================================= */

                catch (emailError) {

                    console.error(
                        "Feedback email error:",
                        emailError
                    );


                    /*
                        The feedback was already saved
                        in the database, so we still return
                        success to the frontend.
                    */

                    return res.status(201).json({

                        success: true,

                        message:
                            "Feedback submitted successfully, but email notification could not be sent.",

                        feedbackId:
                            result.insertId,

                        emailSent:
                            false

                    });

                }

            }

        );

    }


    /* =========================================================
       GENERAL SERVER ERROR
    ========================================================= */

    catch (error) {

        console.error(
            "Feedback API error:",
            error
        );


        return res.status(500).json({

            success: false,

            message:
                "Something went wrong while submitting feedback."

        });

    }

});


/* =========================================================
   EXPORT ROUTER
========================================================= */

module.exports = router;
