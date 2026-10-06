const mysql = require("mysql2");

const db = mysql.createPool({
    host: process.env.DB_HOST || "localhost",
    user: process.env.DB_USER || "root",
    password: process.env.DB_PASSWORD || "root",
    database: process.env.DB_NAME,
    port: Number(process.env.DB_PORT) || 3306,

    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

db.getConnection((err, connection) => {

    if (err) {

        console.error("❌ MySQL connection failed");
        console.error("Error code:", err.code);
        console.error("Error message:", err.message);
        console.error("DB host:", process.env.DB_HOST);
        console.error("DB user:", process.env.DB_USER);
        console.error("DB name:", process.env.DB_NAME);
        console.error("DB port:", process.env.DB_PORT);

        return;
    }

    console.log(
        "✅ MySQL connected successfully!"
    );

    connection.release();
});

module.exports = db;