const express = require('express');
const app = express();

app.get('/', (req, res) => res.send('servernodejs it works!'));
app.listen(5002);

console.log('Server runing on port ', 5002);
