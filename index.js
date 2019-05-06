var http = require('http');

var PORT = 8000;

function requestHandler(req, res) {
	// res.end(`Hello ${process.platform}`);
	res.end('test success')
}

var server = http.createServer(requestHandler);

server.listen(PORT, function(){
	// console.log(`${process.env.NODE_ENV} server listening on port: ${PORT}. CTRL-C to exit.`);
	console.log('starting ....')
});