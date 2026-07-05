Usage: send a GET with the parameters:
    hashrate : hash rate in hashes / second (NOT MH/s)
    difficulty : difficulty to use (optional - defaults to current)
    exchange_rate : exchange rate to use for BTC -> dollar calculations (optional - defaults to last BitStamp (or MtGox, if BitStamp is down) price).

    For example:
    https://alloscomp.com/bitcoin/calculator/json?hashrate=900000000

    Or with more parameters:
    https://alloscomp.com/bitcoin/calculator/json?hashrate=900000000&difficulty=300000&exchange_rate=10.0

    This endpoint supports CORS, supplying an "Access-Control-Allow-Origin: *" header.

Terms of Use:
    Feel free to use this API anywhere as long as you include text explaining
    the source of the calculations and a link back to the web version of the 
    calculator (https://alloscomp.com/bitcoin/calculator). Also, please use
    a unique and descriptive user-agent if possible.

Troubleshooting:
    If you just started getting AJAX errors on 29 June 2014, try changing your API endpoint to
    https://alloscomp.com/bitcoin/calculator/json?hashrate=XXX. I enabled HSTS on that day, and
    jQuery ajax apparently doesn't reliably follow 301 redirects.
