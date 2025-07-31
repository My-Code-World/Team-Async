const express = require('express');
const router = express.Router();
const { getAllStocks, addStock } = require('../controller/stockController');

router.get('/', getAllStocks);
router.post('/', addStock);

module.exports = router;
