const express = require('express');
const app = express();
const stockRoutes = require('../project/src/routes/stockroutes');
const { connectDB } = require('./src/db');

app.use(express.json());

// Connect to MySQL
connectDB();

// Routes
app.use('/api/stocks', stockRoutes);

// Root route
app.get('/', (req, res) => {
  res.send("Hello World HSBC");
});

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`🚀 Server running on port ${PORT}`);
});