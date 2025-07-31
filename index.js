const express = require('express');
const fs = require('fs');
const app = express();

// Root route
app.get('/', (req, res) => {
    res.send("Hello World HSBC");
});

// Posts route
app.get('/post', (req, res) => {
    fs.readFile('posts.json', (err, data) => {
        if (err) {
            console.error("Error reading file:", err);
            res.status(500).send("Error reading file");
            return;
        }
        try {
            const posts = JSON.parse(data);
            res.json(posts); // Send the parsed JSON
        } catch (e) {
            console.error("Error parsing JSON:", e);
            res.status(500).send("Error parsing JSON");
        }
    });
});

// Start server
app.listen(3000, () => {
    console.log("Server is running on port 3000");
});
