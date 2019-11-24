const http = require('http');
const port = process.env.PORT || 6543;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.end('DevOps Exam. I am a New Message from the jenkins-stundent-slave node.js server, running @ 192.168.56.20:6543.\n');
});

server.listen(port, () => {
  console.log(`Server starts up on http://localhost:${port}/`);
});
