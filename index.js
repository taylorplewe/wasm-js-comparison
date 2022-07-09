const express = require("express");
const app = express();

app.use(express.static('.'));

app.get('/', (req, res) => {
	res.redirect('/main.html');
});

console.log("listening on port 80");
app.listen(80);