const express = require('express');
const router = express.Router();
const { Pool } = require('pg');

const pool = new Pool({
    host: process.env.DB_HOST || 'localhost',
    port: process.env.DB_PORT || 5432,
    user: process.env.DB_USER || 'admin',
    password: process.env.DB_PASSWORD || 'admin123',
    database: process.env.DB_NAME || 'nginxproxy_db',
});



router.get('/hello', (req, res) => {
    res.send('Hello from Backend API!');
});

router.get('/users', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM users');
        res.json(result.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'DB error' });
    }
});



module.exports = router;