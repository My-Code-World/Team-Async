const { db } = require('../db');

// Get all stocks
const getAllStocks = (req, res) => {
  db.query('SELECT * FROM stocks', (err, results) => {
    console.log('Fetching all stocks');
    if (err) {
      console.error('Query error:', err);
      return res.status(500).send('Error fetching stocks');
    }
    res.json(results);
    console.log('Fetched all stocks');
  });
};

// Add a new stock
const addStock = (req, res) => {
  const { stock_ticker, company_name, sector, industry } = req.body;
  db.query(
    'INSERT INTO stocks (stock_ticker, company_name, sector, industry) VALUES (?, ?, ?, ?)',
    [stock_ticker, company_name, sector, industry],
    (err, result) => {
      if (err) {
        console.error(err);
        return res.status(500).send('Error saving stock');
      }
      res.status(201).json({ id: result.insertId, stock_ticker, company_name, sector, industry })
      console.log('stock added');
    }
  );
};

module.exports = { getAllStocks, addStock };
