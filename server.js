const express = require('express');
const app = express();
const port = process.env.PORT || 8008;

app.get('/healthcheck', (req, res) => res.status(200).send());

app.listen(port, () => {
    console.log(`Listening on: ${port}`);
});
