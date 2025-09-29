const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Hello World from Node.js backend 🚀");
});

app.listen(PORT, () => {
  console.log(`Backend is running on http://localhost:${PORT}`);
});
