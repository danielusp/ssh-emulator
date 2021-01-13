const http = require('http');
const url = require('url');

const home = (data, res) => {
    res.writeHead(200);
    res.end('Home');
}

const about = (data, res) => {
    res.writeHead(200);
    res.end('About');
}

const notFound = (data, res) => {
    res.writeHead(404);
    res.end('Not Found');
}

const routes = {
    "/": home,
    "/about": about,
    "notFound": notFound,
    "/test": require('./modules/test'),
    "/new": require('./modules/new')
}

const requestListener = (req, res) => {
    const path = url.parse(req.url, true).pathname
    req.on('data', () => {})

    req.on('end', () => {
        const route = routes[path]? routes[path] : routes['notFound']
        route({}, res)
    });
}

const server = http.createServer(requestListener);
server.listen(80);