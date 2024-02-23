const express = require('express');

const app = express();
const PORT = process.env.PORT || 3002;
JWT_SECRET=mfefkuhio3k2rjkofn2mbikbkwjhnkj

app.get('/', (request, response) => {
  response.status(200).json({
    message: 'Hello Docker!z',
  });
});

app.listen(PORT, () => {
  console.log(`Server is up on localhost:${PORT}`);
});
