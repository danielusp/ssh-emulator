module.exports = (data, res) => {
    res.setHeader('Content-Type', 'text/html')
    res.end('<html><h1>New</h1><p>New page.</p></html>');
};