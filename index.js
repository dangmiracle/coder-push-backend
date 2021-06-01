const express = require('express');
const bodyParser = require('body-parser');
var cors = require('cors')

const app = express();
app.use(cors())
var corsOptions = {
    origin: '*',
    optionsSuccessStatus: 200
}
const port = process.env.PORT || 3000;
const usersRouter = require('./routers/users');

app.use(bodyParser.json());
app.use(
    bodyParser.urlencoded({
        extended: true,
    })
);
app.use('/users', cors(corsOptions), usersRouter);


app.get('/', (req, res) => {
    res.json({ 'message': 'Welcome to CoderPush' });
})

app.listen(port, () => {
    console.log(`CoderPush app is listening at http://localhost:${port}`)
});