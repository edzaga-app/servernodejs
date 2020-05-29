const express = require('express');
const app = express();

app.get('/', (req, res) => res.send('servernodejs it works!'));
app.listen(3000);

console.log('Server runing on port ', 3000);
