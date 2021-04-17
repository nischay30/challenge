// eslint-disable-next-line
const app = require('express')();

// eslint-disable-next-line
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
    res.send("Hello");
});

app.get("/ping", (req, res) => {
    res.send("PONG");
});

app.listen(port, ()=> {
    // eslint-disable-next-line
    console.log(`Application started on ${port}`);
});


