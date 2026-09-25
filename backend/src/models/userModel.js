const db = require("../config/database");

const User = {
    create: (name, email, hashedPassword) => {
        return new Promise((resolve, reject) => {
            const sql = `
                INSERT INTO users (name, email, password)
                VALUES (?, ?, ?)
            `;

            db.query(
                sql,
                [name, email, hashedPassword],
                (err, result) => {
                    if (err) {
                        reject(err);
                        return;
                    }

                    resolve(result);
                }
            );
        });
    },

    findByEmail: (email) => {
        return new Promise((resolve, reject) => {
           const sql = `
             SELECT id, name, email, password, profile_photo, bio, created_at
             FROM users
             WHERE email = ?
             LIMIT 1
`;

            db.query(sql, [email], (err, results) => {
                if (err) {
                    reject(err);
                    return;
                }

                resolve(results[0] || null);
            });
        });
    }
};

module.exports = User;
