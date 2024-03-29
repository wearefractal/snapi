**snapi is a simple plug-and-play API server**


## Installation
    
To install snapi, use [npm](http://github.com/isaacs/npm):

    $ npm install snapi

## Usage

```javascript
var snapi = require('snapi'),
path = require('path');
snapi.run(path.join(__dirname, './myCoolAPIFolder/'), 1337);
```

API services are loaded dynamically from the specified folder so you can add functionality without even restarting.

## Routing
Create a file for each API service in your specified folder.

Example API service:

```javascript
module.exports.exec = function (res, args){ 
  res.end(args.name + ", we are online!");
};
```

The exec function will receive two arguments: a standard httpResponse object for replying and an arguments object.

## HTTP Methods
GET/DELETE are parsed by querystring. Example: ```curl http://localhost:1337/status?name=contra&something=else```

POST/PUT are parsed by JSON. Example: ```curl -i -X POST -d '{"name":"contra", "something": "else"}' http://localhost:1337/status```

These requests will get the same response from the example.

## Examples

You can view further examples in the [example folder.](https://github.com/wearefractal/snapi/tree/master/examples)

## LICENSE

(MIT License)

Copyright (c) 2011 Fractal <contact@wearefractal.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
