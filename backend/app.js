const express = require('express');
require('dotenv').config();
const apiRoutes = require('./routes/apiRoutes');

const app = express();
app.use('/api', apiRoutes); // Префікс тільки для цієї групи



app.get('/', (req, res) => {
  res.send('Hello from Backend!');
});

app.listen(4000, () => {
  console.log('Backend server is running on port 4000');
});
