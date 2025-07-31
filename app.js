const express = require('express');
const mysql = require('mysql');
const app = express();
app.use(express.json());

// MySQL Connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'n3u3da!', // Change this to your MySQL password
  database: 'stock'       // Make sure this DB is already created
});

db.connect(err => {
  if (err) {
    console.error('❌ MySQL connection failed:', err);
    return;
  }
  console.log('✅ Connected to MySQL');
});

// GET all posts
app.get('/posts', (req, res) => {
  db.query('SELECT * FROM stocks', (err, results) => {
    if (err) {
      console.error('Query error:', err);
      res.status(500).send('Error fetching posts');
    } else {
      res.json(results);
    }
  });
});

// POST a new post
app.post('/stocks', (req, res) => {
    const { stock_ticker, company_name, sector, industry } = req.body;
    db.query(
      'INSERT INTO stocks (stock_ticker, company_name, sector, industry) VALUES (?, ?, ?, ?)',
      [stock_ticker, company_name, sector, industry],
      (err, result) => {
        if (err) {
          res.status(500).send('Error saving stock');
        } else {
          res.status(201).json({ id: result.insertId, stock_ticker, company_name, sector, industry });
        }
      }
    );
  });
  
// Start server
app.listen(3000, () => {
  console.log('🚀 Server running on port 3000');
});
