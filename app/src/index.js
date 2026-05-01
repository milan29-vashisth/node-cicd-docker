const express = require('express');
const os = require('os');

const app = express();
const PORT = 3000;

// Home Route
app.get('/', (req, res) => {
    res.send(`
        <h1>Node.js App Running Successfully 🚀</h1>
        <p>Welcome to Docker CI/CD Demo Project</p>
        <p><strong>Hostname:</strong> ${os.hostname()}</p>
    `);
});

// Health Check Route
app.get('/health', (req, res) => {
    res.status(200).json({
        status: 'UP',
        message: 'Application is healthy',
        timestamp: new Date(),
        hostname: os.hostname()
    });
});

app.listen(PORT, () => {
    console.log(`Server started on port ${PORT}`);
});