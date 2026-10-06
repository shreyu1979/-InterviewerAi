const mysql = require("mysql2");

const db = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: Number(process.env.DB_PORT),

    ssl: {
        rejectUnauthorized: false
    },

    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Test the pool connection only.
// Do NOT store this connection for later queries.
db.getConnection((err, connection) => {
    if (err) {
        console.error("❌ MySQL connection failed");
        console.error("Error code:", err.code);
        console.error("Error message:", err.message);
        return;
    }

    console.log("✅ MySQL connected successfully!");

    connection.release();
});

module.exports = db;