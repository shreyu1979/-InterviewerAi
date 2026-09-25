const db = require("../config/database");

const AuthSession = {
    create: (userId, jti, expiresAt) => {
        return new Promise((resolve, reject) => {
            const sql = `
                INSERT INTO auth_sessions (user_id, jti, expires_at)
                VALUES (?, ?, ?)
            `;

            db.query(
                sql,
                [userId, jti, expiresAt],
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

    findByJti: (jti) => {
        return new Promise((resolve, reject) => {
            const sql = `
                SELECT id, user_id, jti, expires_at, revoked_at, created_at
                FROM auth_sessions
                WHERE jti = ?
                LIMIT 1
            `;

            db.query(sql, [jti], (err, results) => {
                if (err) {
                    reject(err);
                    return;
                }

                resolve(results[0] || null);
            });
        });
    },

    revokeByJti: (jti) => {
        return new Promise((resolve, reject) => {
            const sql = `
                UPDATE auth_sessions
                SET revoked_at = CURRENT_TIMESTAMP
                WHERE jti = ?
                  AND revoked_at IS NULL
            `;

            db.query(sql, [jti], (err, result) => {
                if (err) {
                    reject(err);
                    return;
                }

                resolve(result);
            });
        });
    }
};

module.exports = AuthSession;
