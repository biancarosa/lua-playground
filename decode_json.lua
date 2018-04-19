local json = [[{
    "args": {
      "stonecode": "123"
    }, 
    "headers": {
      "Accept": "*/*", 
      "Accept-Encoding": "deflate, gzip", 
      "Connection": "close", 
      "Host": "httpbin.org", 
      "User-Agent": "insomnia/5.9.6", 
      "X-Forwarded-Host": "localhost"
    }, 
    "origin": "127.0.0.1, 201.73.223.2", 
    "url": "http://localhost/get?stonecode=123"
  }]]


local cjson_decode = require("cjson").decode

local jayson = cjson_decode(json)
print(jayson.args.stonecode)