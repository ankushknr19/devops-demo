const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send("<h2>Namaste !! I am Ankush. How you doin'?\n<h2>");
});

const PORT = 8080;

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
