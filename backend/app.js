const express = require('express');
const app = express();

const apiRoutes = require('./routes/apiRoutes');
app.use('/api', apiRoutes); // Префікс тільки для цієї групи


app.get('/', (req, res) => {
  res.send('Hello from Backend!');
});

app.listen(4000, () => {
  console.log('Backend server is running on port 4000');
});
