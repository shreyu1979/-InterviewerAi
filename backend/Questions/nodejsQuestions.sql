USE ai_interviewer;

-- Delete existing Node.js questions
SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Node.js';

SET SQL_SAFE_UPDATES = 1;

-- Verify deletion
SELECT COUNT(*) AS nodejs_questions_after_delete
FROM questions
WHERE skill = 'Node.js';


-- Node.js 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Node.js','What is Node.js?','A database','A JavaScript runtime environment','A CSS framework','A programming language','B','Easy','Node.js is a runtime environment that allows JavaScript to run outside the browser.'),

-- Q2
('Node.js','Node.js is built on which JavaScript engine?','SpiderMonkey','V8','Chakra','JavaScriptCore','B','Easy','Node.js uses Google''s V8 JavaScript engine.'),

-- Q3
('Node.js','Who originally created Node.js?','Ryan Dahl','Brendan Eich','Mark Zuckerberg','James Gosling','A','Easy','Ryan Dahl created Node.js in 2009.'),

-- Q4
('Node.js','Which language is primarily used to write Node.js applications?','Java','Python','JavaScript','C#','C','Easy','Node.js allows developers to execute JavaScript outside the browser.'),

-- Q5
('Node.js','Node.js is commonly used for:','Server-side applications','Backend APIs','Command-line tools','All of the above','D','Easy','Node.js is widely used for servers, APIs, CLI tools, real-time applications, and more.'),

-- Q6
('Node.js','Is Node.js a programming language?','Yes','No','It is both','Only in Linux','B','Easy','Node.js is a runtime environment, not a programming language.'),

-- Q7
('Node.js','Which command checks the installed Node.js version?','node -v','node version','npm node','node check','A','Easy','node -v or node --version displays the Node.js version.'),

-- Q8
('Node.js','Which command checks the npm version?','npm -v','npm check','node npm','npm version-node','A','Easy','npm -v displays the installed npm version.'),

-- Q9
('Node.js','What does npm stand for?','Node Package Manager','New Programming Module','Node Project Manager','Network Package Method','A','Easy','npm is the standard package manager commonly used with Node.js.'),

-- Q10
('Node.js','Which command initializes a Node.js project?','npm init','node create','npm start-project','node init-project','A','Easy','npm init creates a package.json file interactively.'),

-- Q11
('Node.js','Which command initializes a project with default settings?','npm init -y','npm default','npm create -default','node init -y','A','Easy','npm init -y accepts the default values automatically.'),

-- Q12
('Node.js','Which file contains project metadata and dependencies?','package.json','node.json','project.json','npm.js','A','Easy','package.json stores project information, scripts, and dependencies.'),

-- Q13
('Node.js','Which directory normally contains installed npm packages?','node_modules','packages','modules','npm_packages','A','Easy','npm installs project dependencies into the node_modules directory.'),

-- Q14
('Node.js','Should node_modules normally be committed to Git?','Yes','No','Only for React','Only for Windows','B','Easy','Dependencies should normally be restored from package.json and the lock file instead.'),

-- Q15
('Node.js','Which file can lock exact dependency versions?','package-lock.json','dependency.lock','node-lock.json','npm.json','A','Easy','npm uses package-lock.json to record the dependency tree and resolved versions.'),

-- Q16
('Node.js','Which command installs project dependencies?','npm install','npm packages','node install','install npm','A','Easy','npm install installs dependencies listed in package.json.'),

-- Q17
('Node.js','Which command installs a package locally?','npm install package-name','node add package-name','npm package package-name','install package-name','A','Easy','This command installs the package as a project dependency by default.'),

-- Q18
('Node.js','Which command installs a package as a development dependency?','npm install package-name --save-dev','npm install package-name --dev-only','node install-dev package-name','npm dev package-name','A','Easy','--save-dev adds the package to devDependencies.'),

-- Q19
('Node.js','What is a dependency?','A package required by an application','A JavaScript variable','A CSS property','A database table','A','Easy','Dependencies are external packages required by the application.'),

-- Q20
('Node.js','What are devDependencies?','Packages mainly needed during development','Packages only used by browsers','Database packages','Production servers','A','Easy','Development dependencies commonly include testing tools, linters, and build tools.'),

-- Q21
('Node.js','Which command removes a package?','npm uninstall package-name','npm remove-package package-name','node delete package-name','npm erase package-name','A','Easy','npm uninstall removes a package from the project.'),

-- Q22
('Node.js','Which command installs a package globally?','npm install -g package-name','npm global package-name','node install-global package-name','npm add-global-only package-name','A','Easy','The -g option installs a package globally.'),

-- Q23
('Node.js','Which object provides information about the current Node.js process?','process','nodeInfo','runtime','system','A','Easy','Node.js provides the global process object.'),

-- Q24
('Node.js','Which property contains command-line arguments?','process.argv','process.args','process.commands','node.argv','A','Easy','process.argv contains the command-line arguments passed to the process.'),

-- Q25
('Node.js','Which property identifies the current working directory?','process.cwd()','process.dir()','process.currentPath()','node.cwd','A','Easy','process.cwd() returns the current working directory.'),

-- Q26
('Node.js','Which method can terminate a Node.js process?','process.exit()','process.stop()','node.exitNow()','process.endApp()','A','Easy','process.exit() terminates the Node.js process.'),

-- Q27
('Node.js','Which global object is used to access environment variables?','process.env','node.env','environment.node','process.environmentOnly','A','Easy','Environment variables are available through process.env.'),

-- Q28
('Node.js','What is an environment variable?','A configuration value supplied outside application source code','A CSS variable','A database row','A React prop','A','Easy','Environment variables are commonly used for configuration such as ports and service settings.'),

-- Q29
('Node.js','What does REPL stand for?','Read-Eval-Print Loop','Run-Execute-Program-Load','Read-Execute-Process-List','Runtime Evaluation Programming Language','A','Easy','Node.js provides a REPL for interactively executing JavaScript.'),

-- Q30
('Node.js','Which command starts the Node.js REPL?','node','node repl','npm repl','node --interactive-mode-only','A','Easy','Running node without a script starts the interactive REPL.'),

-- Q31
('Node.js','Which command runs a JavaScript file using Node.js?','node app.js','npm app.js','run node app.js','node execute app.js','A','Easy','node filename.js executes the specified JavaScript file.'),

-- Q32
('Node.js','What is CommonJS?','A module system traditionally used by Node.js','A database','A CSS framework','An HTTP protocol','A','Easy','CommonJS uses constructs such as require() and module.exports.'),

-- Q33
('Node.js','Which function is commonly used to import CommonJS modules?','require()','importModule()','include()','load()','A','Easy','require() is the traditional CommonJS module-loading function.'),

-- Q34
('Node.js','Which object is used to export values in CommonJS?','module.exports','exports.moduleOnly','node.exportsOnly','export.module','A','Easy','module.exports defines the value exported by a CommonJS module.'),

-- Q35
('Node.js','Which syntax is used by ECMAScript Modules (ESM)?','import / export','require / include','load / send','module / requireOnly','A','Easy','ESM uses standard JavaScript import and export syntax.'),

-- Q36
('Node.js','Which package.json field can specify that .js files use ESM?','"type": "module"','"module": true','"esm": true','"javascript": "esm"','A','Easy','"type": "module" makes .js files in that package use ESM semantics.'),

-- Q37
('Node.js','Which extension is commonly used for an ES module in Node.js?','.mjs','.esmjs','.modulejs','.nodejs','A','Easy','.mjs explicitly indicates an ECMAScript Module.'),

-- Q38
('Node.js','Which extension explicitly indicates CommonJS?','.cjs','.commonjs','.node','.module','A','Easy','.cjs explicitly identifies a CommonJS module.'),

-- Q39
('Node.js','What is a module?','A reusable unit of code','A database server','A CSS file only','A network cable','A','Easy','Modules divide application code into reusable and maintainable units.'),

-- Q40
('Node.js','What is the main benefit of modules?','Code organization and reuse','Automatic database creation','Automatic deployment','Automatic testing','A','Easy','Modules help separate concerns and reuse functionality.'),

-- Q41
('Node.js','Which built-in Node.js module works with files?','fs','filejs','node-file','filesystem-node-only','A','Easy','The fs module provides file-system APIs.'),

-- Q42
('Node.js','Which module provides HTTP functionality?','http','web','server-http-only','network-http','A','Easy','Node.js provides the built-in http module for HTTP servers and requests.'),

-- Q43
('Node.js','Which module provides path utilities?','path','filepath','node-path-only','directory','A','Easy','The path module provides utilities for working with file and directory paths.'),

-- Q44
('Node.js','Which module provides operating-system-related information?','os','system','machine','node-system','A','Easy','The os module provides operating-system-related utilities.'),

-- Q45
('Node.js','Which module provides URL utilities?','url','weburl','node-url-only','uri-module','A','Easy','Node.js provides the url module for URL parsing and manipulation.'),

-- Q46
('Node.js','What is the fs/promises API used for?','Promise-based file-system operations','HTTP requests','Database queries','CSS processing','A','Easy','fs/promises provides Promise-based versions of many file-system operations.'),

-- Q47
('Node.js','Which method reads a file asynchronously using callbacks?','fs.readFile()','fs.read() only','fs.getFile()','file.readAsync()','A','Easy','fs.readFile() asynchronously reads the complete contents of a file.'),

-- Q48
('Node.js','Which method writes data to a file?','fs.writeFile()','fs.saveFile()','fs.putFile()','fs.createText()','A','Easy','fs.writeFile() writes data to a file asynchronously.'),

-- Q49
('Node.js','Which method appends data to an existing file?','fs.appendFile()','fs.addFile()','fs.pushFile()','fs.writeAppend()','A','Easy','fs.appendFile() adds data to the end of a file.'),

-- Q50
('Node.js','Which method deletes a file?','fs.unlink()','fs.deleteFile()','fs.remove()','fs.eraseFile()','A','Easy','fs.unlink() removes a file from the file system.'),

-- Q51
('Node.js','Which method creates a directory?','fs.mkdir()','fs.createFolder()','fs.newDirectory()','fs.folder()','A','Medium','fs.mkdir() creates a directory.'),

-- Q52
('Node.js','Which method reads directory contents?','fs.readdir()','fs.readDirectoryOnly()','fs.listFiles()','fs.getDirectory()','A','Medium','fs.readdir() returns the contents of a directory.'),

-- Q53
('Node.js','Which method gets information about a file?','fs.stat()','fs.info()','fs.fileData()','fs.details()','A','Medium','fs.stat() returns metadata about a file or directory.'),

-- Q54
('Node.js','Which method renames a file?','fs.rename()','fs.changeName()','fs.renameFileOnly()','fs.moveName()','A','Medium','fs.rename() can rename or move files and directories.'),

-- Q55
('Node.js','What does asynchronous programming mean?','Operations can proceed without blocking the entire execution flow','Code always runs in parallel','Code runs only on the server','Code never waits for anything','A','Medium','Asynchronous APIs allow other work to continue while waiting for operations such as I/O.'),

-- Q56
('Node.js','Node.js is especially efficient for:','I/O-intensive applications','Blocking-only applications','Spreadsheet formatting','CSS-only applications','A','Medium','Node.js is well suited to applications with many I/O operations.'),

-- Q57
('Node.js','What does I/O mean?','Input/Output','Internal Object','Internet Operation','Input Object','A','Medium','I/O refers to interactions such as file access, network requests, and streams.'),

-- Q58
('Node.js','What does non-blocking I/O mean?','I/O operations do not block the main JavaScript execution while waiting','I/O cannot fail','I/O is always synchronous','I/O runs only on another computer','A','Medium','Node.js can continue processing other work while asynchronous I/O waits for completion.'),

-- Q59
('Node.js','What is a callback?','A function passed to another function to be called later','A database','A package manager','A server','A','Medium','Callbacks are commonly used to handle completion of asynchronous operations.'),

-- Q60
('Node.js','What is callback hell?','Deeply nested callbacks that make code difficult to read and maintain','A Node.js error','A database error','A browser problem','A','Medium','Excessive callback nesting can make asynchronous code difficult to understand.'),

-- Q61
('Node.js','Which feature can help avoid callback nesting?','Promises','CSS','HTML','SQL','A','Medium','Promises provide a structured way to compose asynchronous operations.'),

-- Q62
('Node.js','What is a Promise?','An object representing the eventual completion or failure of an asynchronous operation','A database table','A Node.js module only','A CSS object','A','Medium','Promises represent a future result of an asynchronous operation.'),

-- Q63
('Node.js','Which method handles a fulfilled Promise?','.then()','.success()','.doneOnly()','.complete()','A','Medium','.then() registers fulfillment handling.'),

-- Q64
('Node.js','Which method handles a rejected Promise?','.catch()','.errorOnly()','.rejectHandler()','.failPromiseOnly()','A','Medium','.catch() handles rejected Promises.'),

-- Q65
('Node.js','Which method runs regardless of Promise outcome?','.finally()','.always()','.completeOnly()','.end()','A','Medium','.finally() runs after the Promise settles, whether fulfilled or rejected.'),

-- Q66
('Node.js','Which keyword is used to define an async function?','async','await','promise','future','A','Medium','async makes a function return a Promise.'),

-- Q67
('Node.js','Which keyword waits for a Promise?','await','wait','pause','hold','A','Medium','await pauses execution within an async function until a Promise settles.'),

-- Q68
('Node.js','Can await normally be used inside an async function?','Yes','No','Only in CSS','Only in callbacks','A','Medium','await is commonly used inside async functions.'),

-- Q69
('Node.js','What is the event loop?','A mechanism that coordinates asynchronous callbacks and other tasks','A for loop','A database loop','A CSS animation','A','Medium','Node.js uses an event loop to coordinate asynchronous operations and callback execution.'),

-- Q70
('Node.js','Is Node.js single-threaded?','JavaScript execution is primarily single-threaded','Node.js can never use multiple threads','Node.js has no asynchronous operations','Node.js only runs on one CPU core for everything','A','Medium','Node.js executes JavaScript on a main thread while the runtime can use additional threads for certain operations.'),

-- Q71
('Node.js','What is libuv?','A library that provides Node.js event loop and asynchronous I/O infrastructure','A database','A React library','A CSS framework','A','Medium','libuv provides the event loop and cross-platform asynchronous I/O capabilities used by Node.js.'),

-- Q72
('Node.js','What is the purpose of the event loop?','Coordinate asynchronous operations and execute callbacks when ready','Compile CSS','Create databases','Render HTML','A','Medium','The event loop allows Node.js to handle many asynchronous operations efficiently.'),

-- Q73
('Node.js','What is synchronous code?','Code that waits for an operation to finish before continuing','Code that always uses callbacks','Code that never returns','Code that only runs in browsers','A','Medium','Synchronous operations block further execution until they complete.'),

-- Q74
('Node.js','Why should synchronous file operations be used carefully in servers?','They can block the event loop','They cannot read files','They always crash Node.js','They are unsupported','A','Medium','Blocking operations can prevent Node.js from processing other requests efficiently.'),

-- Q75
('Node.js','What is setTimeout() used for?','Scheduling a callback after a minimum delay','Creating a database','Blocking the event loop','Ending the application','A','Medium','setTimeout() schedules a callback to run after the specified delay.'),

-- Q76
('Node.js','What is setInterval() used for?','Scheduling repeated callbacks','Reading files','Creating modules','Sending HTTP headers','A','Medium','setInterval() repeatedly schedules a callback until it is cleared.'),

-- Q77
('Node.js','Which function cancels a timeout?','clearTimeout()','cancelTimeoutOnly()','removeTimeout()','stopTimer()','A','Medium','clearTimeout() cancels a timer created with setTimeout().' ),

-- Q78
('Node.js','Which function cancels an interval?','clearInterval()','cancelInterval()','stopIntervalOnly()','removeInterval()','A','Medium','clearInterval() cancels a repeating timer.'),

-- Q79
('Node.js','What is setImmediate()?','Schedules a callback to run after the current poll phase','Runs code before all current code','Creates a timer for one hour','Blocks Node.js','A','Medium','setImmediate() schedules a callback for the check phase of the event loop.'),

-- Q80
('Node.js','What is process.nextTick()?','Schedules a callback to run after the current operation before the event loop continues','Runs after one second','Creates a file','Starts a server','A','Medium','process.nextTick() queues a callback to execute before the event loop proceeds to later phases.'),

-- Q81
('Node.js','What is a Buffer in Node.js?','A data structure for handling binary data','A CSS container','A database','A React component','A','Medium','Buffers allow Node.js to work with binary data.'),

-- Q82
('Node.js','Which function creates a Buffer from a string?','Buffer.from()','Buffer.createString()','newStringBuffer()','buffer.text()','A','Medium','Buffer.from() creates a Buffer from strings and other supported data.'),

-- Q83
('Node.js','What is a stream?','An abstraction for handling data progressively','A database','A CSS property','A module manager','A','Medium','Streams process data piece by piece instead of requiring the entire dataset at once.'),

-- Q84
('Node.js','Which is a type of Node.js stream?','Readable','Writable','Duplex','All of the above','D','Medium','Node.js supports Readable, Writable, Duplex, and Transform streams.'),

-- Q85
('Node.js','What is a Readable stream?','A source from which data can be read','A stream that only writes','A database stream','A CSS stream','A','Medium','Readable streams provide data that can be consumed.'),

-- Q86
('Node.js','What is a Writable stream?','A destination to which data can be written','A file reader only','A database reader','A React component','A','Medium','Writable streams accept data.'),

-- Q87
('Node.js','What is a Duplex stream?','A stream that is both readable and writable','A stream that only reads','A stream that only writes','A stream with two files','A','Medium','Duplex streams support both reading and writing.'),

-- Q88
('Node.js','What is a Transform stream?','A Duplex stream that can transform data as it passes through','A database converter only','A CSS processor','A file system only','A','Medium','Transform streams modify or transform data while reading and writing.'),

-- Q89
('Node.js','What does piping do with streams?','Connects the output of one stream to another stream''s input','Deletes data','Creates a database','Stops the event loop','A','Medium','.pipe() connects streams for efficient data flow.'),

-- Q90
('Node.js','Which method is commonly used to connect streams?','.pipe()','.connectStreamOnly()','.streamTo()','.join()','A','Medium','A readable stream can pipe its data into a writable stream.'),

-- Q91
('Node.js','What is backpressure?','A mechanism for handling a producer that generates data faster than a consumer can process it','A database error','A network failure only','A CSS problem','A','Medium','Backpressure helps prevent fast producers from overwhelming slower consumers.'),

-- Q92
('Node.js','Which event can indicate that a readable stream has ended?','end','finish','close-only','stop','A','Medium','Readable streams emit end when no more data is available.'),

-- Q93
('Node.js','Which event commonly indicates a writable stream has finished receiving data?','finish','end','completeStream','done','A','Medium','Writable streams emit finish after all data has been flushed.'),

-- Q94
('Node.js','What is an EventEmitter?','A Node.js mechanism for emitting and listening for events','A database system','A CSS framework','An HTTP method','A','Medium','EventEmitter enables event-driven programming in Node.js.'),

-- Q95
('Node.js','Which method registers an event listener?','.on()','.listenEvent()','.event()','.subscribeOnly()','A','Medium','.on(event, listener) registers a listener.'),

-- Q96
('Node.js','Which method emits an event?','.emit()','.sendEvent()','.fireEventOnly()','.triggerNode()','A','Medium','.emit() triggers an event and passes optional arguments to listeners.'),

-- Q97
('Node.js','Which method registers a listener that runs once?','.once()','.single()','.oneTime()','.listenOnceOnly()','A','Medium','.once() removes the listener after it is invoked once.'),

-- Q98
('Node.js','Which module provides EventEmitter?','events','event','node-events-only','events-core-only','A','Medium','The built-in events module exports EventEmitter.'),

-- Q99
('Node.js','What is event-driven architecture?','Application behavior organized around events and event handlers','Application behavior organized only around databases','CSS-driven programming','HTML-only programming','A','Medium','Event-driven systems respond to events using registered handlers.'),

-- Q100
('Node.js','Which method removes an event listener?','removeListener()','deleteListenerOnly()','removeEventOnly()','clearEvent()','A','Medium','removeListener() removes a specific registered listener.'),

-- Q101
('Node.js','Which built-in module can create an HTTP server?','http','server','web','node-server','A','Medium','Node.js built-in http module can create HTTP servers.'),

-- Q102
('Node.js','Which method creates an HTTP server?','http.createServer()','http.newServer()','http.server()','createHTTP()','A','Medium','http.createServer() creates an HTTP server.'),

-- Q103
('Node.js','Which method starts a server listening on a port?','server.listen()','server.start()','server.open()','server.run()','A','Medium','.listen() starts accepting connections on a specified port.'),

-- Q104
('Node.js','What is an HTTP request?','A message sent by a client to a server','A database query only','A CSS file','A JavaScript function only','A','Medium','HTTP requests are sent by clients to request resources or perform operations.'),

-- Q105
('Node.js','What is an HTTP response?','A message returned by the server to the client','A database record','A CSS response','A JavaScript variable','A','Medium','The server sends an HTTP response back to the client.'),

-- Q106
('Node.js','Which HTTP method is commonly used to retrieve data?','GET','POST','DELETE','PATCH','A','Medium','GET is commonly used for retrieving resources.'),

-- Q107
('Node.js','Which HTTP method is commonly used to create a resource?','POST','GET','DELETE','HEAD','A','Medium','POST is commonly used to submit data for resource creation.'),

-- Q108
('Node.js','Which method is commonly used for full replacement?','PUT','GET','POST','HEAD','A','Medium','PUT generally represents replacing a resource with the supplied representation.'),

-- Q109
('Node.js','Which method is commonly used for partial updates?','PATCH','GET','HEAD','OPTIONS','A','Medium','PATCH is commonly used to partially modify a resource.'),

-- Q110
('Node.js','Which HTTP method is used to remove a resource?','DELETE','REMOVE','CLEAR','DROP','A','Medium','DELETE requests removal of a resource.'),

-- Q111
('Node.js','What is an HTTP status code?','A number describing the result of an HTTP request','A database ID','A JavaScript variable','A port number','A','Medium','Status codes communicate request results such as success or failure.'),

-- Q112
('Node.js','What does status code 200 mean?','OK','Created','Not Found','Server Error','A','Medium','HTTP 200 indicates a successful request.'),

-- Q113
('Node.js','What does status code 201 commonly indicate?','Created','OK only','Unauthorized','Not Found','A','Medium','201 indicates that a resource was successfully created.'),

-- Q114
('Node.js','What does status code 400 generally mean?','Bad Request','Success','Created','Server Started','A','Medium','400 indicates that the request is invalid or malformed.'),

-- Q115
('Node.js','What does status code 401 generally indicate?','Unauthorized','Not Found','Created','Successful','A','Medium','401 indicates that authentication is required or has failed.'),

-- Q116
('Node.js','What does status code 403 generally indicate?','Forbidden','Created','Redirected','Successful','A','Medium','403 indicates that the server understood the request but refuses to authorize it.'),

-- Q117
('Node.js','What does status code 404 mean?','Not Found','Created','Success','Bad Gateway','A','Medium','404 means the requested resource could not be found.'),

-- Q118
('Node.js','What does status code 500 indicate?','Internal Server Error','Created','Unauthorized','Not Found','A','Medium','500 indicates an unexpected server-side error.'),

-- Q119
('Node.js','What is Express.js?','A web framework for Node.js','A database','A programming language','A CSS framework','A','Medium','Express is a popular minimalist web framework for Node.js.'),

-- Q120
('Node.js','Which command installs Express?','npm install express','node install express','npm express-install-only','install node-express','A','Medium','Express is installed using npm.'),

-- Q121
('Node.js','How is Express commonly imported in CommonJS?','const express = require(''express'')','import express from express-only','include express','load express()','A','Medium','CommonJS projects commonly load Express with require().' ),

-- Q122
('Node.js','How do you create an Express application?','const app = express()','const app = new ExpressApp()','express.createAppOnly()','app = createExpress()','A','Medium','Calling express() creates an Express application object.'),

-- Q123
('Node.js','Which method defines a GET route?','app.get()','app.fetch()','app.read()','app.routeGetOnly()','A','Medium','app.get(path, handler) defines a GET route.'),

-- Q124
('Node.js','Which method defines a POST route?','app.post()','app.send()','app.create()','app.routePostOnly()','A','Medium','app.post() defines a route for POST requests.'),

-- Q125
('Node.js','Which method starts an Express server?','app.listen()','app.start()','app.run()','app.open()','A','Medium','app.listen() starts the Express application listening for connections.'),

-- Q126
('Node.js','What is middleware in Express?','A function that can access request, response, and next middleware in the chain','A database','A frontend component','A CSS file','A','Medium','Middleware functions can inspect or modify requests/responses and control middleware flow.'),

-- Q127
('Node.js','Which argument passes control to the next middleware?','next','continue','nextMiddleware','forward','A','Medium','Calling next() passes control to the next middleware or matching handler.'),

-- Q128
('Node.js','Which method registers general middleware?','app.use()','app.middleware()','app.addMiddlewareOnly()','app.next()','A','Medium','app.use() mounts middleware.'),

-- Q129
('Node.js','Which Express middleware parses JSON request bodies?','express.json()','express.parseJSON()','express.bodyJSON()','express.jsonBodyOnly()','A','Medium','express.json() parses incoming JSON payloads.'),

-- Q130
('Node.js','Which property commonly contains parsed JSON request data?','req.body','req.dataOnly','request.json','req.payloadOnly','A','Medium','After appropriate body-parsing middleware, JSON data is available through req.body.'),

-- Q131
('Node.js','Where are URL path parameters accessed in Express?','req.params','req.pathData','req.routeValuesOnly','req.urlParamsOnly','A','Medium','Route parameters such as /users/:id are available in req.params.'),

-- Q132
('Node.js','Where are URL query parameters accessed?','req.query','req.params.query','req.searchOnly','req.urlData','A','Medium','Query-string values are available through req.query.'),

-- Q133
('Node.js','Which object is used to send a response?','res','responseOnly','sendObject','serverResponseOnly','A','Medium','Express route handlers commonly use res to send responses.'),

-- Q134
('Node.js','Which method sends plain or general response content?','res.send()','res.output()','res.return()','res.response()','A','Medium','res.send() sends the HTTP response.'),

-- Q135
('Node.js','Which method sends JSON?','res.json()','res.sendJSONOnly()','res.object()','res.returnJSON()','A','Medium','res.json() sends a JSON response.'),

-- Q136
('Node.js','Which method sets the HTTP status code?','res.status()','res.code()','res.httpStatus()','res.setCodeOnly()','A','Medium','res.status(code) sets the response status code.'),

-- Q137
('Node.js','Which statement sends JSON with status 201?','res.status(201).json(data)','res.code(201).sendJSON(data)','res.created(data)','res.json(201, data)','A','Medium','Express methods can be chained to set the status and send JSON.'),

-- Q138
('Node.js','What is routing?','Mapping HTTP requests to handlers','Creating database tables','Styling pages','Compiling JavaScript','A','Medium','Routing determines how an application responds to different paths and HTTP methods.'),

-- Q139
('Node.js','What is express.Router() used for?','Creating modular route handlers','Creating a database','Starting Node.js','Creating React components','A','Medium','Routers help organize related routes into separate modules.'),

-- Q140
('Node.js','Which is a valid Express router creation?','const router = express.Router()','const router = new RouterOnly()','express.createRouterOnly()','Router.express()','A','Medium','express.Router() creates a router instance.'),

-- Q141
('Node.js','What is REST?','An architectural style for networked APIs','A database engine','A JavaScript framework','A CSS system','A','Medium','REST is an architectural style commonly used for web APIs.'),

-- Q142
('Node.js','In a REST API, a resource is typically identified by:','A URI/URL','A CSS selector','A JavaScript variable only','A database password','A','Medium','REST resources are commonly represented through URLs/URIs.'),

-- Q143
('Node.js','What is JSON commonly used for in APIs?','Exchanging structured data','Styling websites','Compiling JavaScript','Creating databases','A','Medium','JSON is a common format for sending structured API data.'),

-- Q144
('Node.js','What does CORS stand for?','Cross-Origin Resource Sharing','Cross-Object Request System','Client-Origin Routing Service','Cross-Output Response Security','A','Medium','CORS is a browser security mechanism controlling cross-origin requests.'),

-- Q145
('Node.js','Which npm package is commonly used to configure CORS in Express?','cors','express-cors-only','node-cors-server','cross-origin-node','A','Medium','The cors package provides Express middleware for CORS configuration.'),

-- Q146
('Node.js','What is authentication?','Verifying who a user is','Deciding what a user can access','Encrypting CSS','Creating a database','A','Medium','Authentication verifies identity.'),

-- Q147
('Node.js','What is authorization?','Determining what an authenticated user is allowed to do','Verifying identity only','Creating passwords','Parsing JSON','A','Medium','Authorization controls permissions after identity has been established.'),

-- Q148
('Node.js','What is a JWT?','JSON Web Token','Java Web Transfer','JavaScript Web Type','JSON Website Tool','A','Medium','JWT stands for JSON Web Token and is commonly used for securely transmitting claims.'),

-- Q149
('Node.js','What is a common purpose of JWTs?','Carrying authentication-related claims between parties','Styling a website','Creating SQL tables','Compressing images','A','Medium','JWTs are commonly used in authentication systems to represent claims.'),

-- Q150
('Node.js','Why should sensitive secrets not be hard-coded into source code?','They may be exposed to unauthorized users','JavaScript cannot store strings','Node.js does not support secrets','Express blocks strings','A','Medium','Secrets should be securely managed through appropriate configuration and secret-management mechanisms.'),

-- Q151
('Node.js','What is a database?','A system for storing and managing data','A CSS framework','A JavaScript function','A browser','A','Hard','Databases store and organize data for applications.'),

-- Q152
('Node.js','Which type of database uses tables and rows?','Relational database','Graphical database only','File-only database','CSS database','A','Hard','Relational databases organize data into tables consisting of rows and columns.'),

-- Q153
('Node.js','Which is a popular relational database used with Node.js?','MySQL','MongoDB','Redis','Neo4j','A','Hard','MySQL is a widely used relational database that can be accessed from Node.js.'),

-- Q154
('Node.js','Which is a NoSQL database?','MongoDB','MySQL','PostgreSQL','Oracle Database','A','Hard','MongoDB is a document-oriented NoSQL database.'),

-- Q155
('Node.js','Which npm package is commonly used to work with MongoDB?','mongodb','mongo-node-only','node-mongo-db-only','mongojs-required-only','A','Hard','The official MongoDB Node.js driver is available through the mongodb package.'),

-- Q156
('Node.js','What is Mongoose?','An ODM commonly used with MongoDB and Node.js','A SQL database','A CSS library','An HTTP protocol','A','Hard','Mongoose provides schema modeling and other conveniences for MongoDB applications.'),

-- Q157
('Node.js','What does ODM stand for?','Object Data Modeling','Object Database Method','Online Data Manager','Object Development Model','A','Hard','ODM generally means Object Data Modeling.'),

-- Q158
('Node.js','What is SQL?','Structured Query Language','Simple Query Logic','Server Query Language','Structured Question List','A','Hard','SQL is used to manage and query relational databases.'),

-- Q159
('Node.js','What is connection pooling?','Reusing a set of database connections','Creating a new database for every request','Storing passwords','Caching HTML only','A','Hard','Connection pools reuse database connections, reducing connection setup overhead.'),

-- Q160
('Node.js','Why use connection pooling?','Better performance and efficient connection management','To remove all databases','To disable queries','To increase CSS speed','A','Hard','Pooling avoids repeatedly creating and closing database connections.'),

-- Q161
('Node.js','What is input validation?','Checking incoming data against expected rules','Encrypting HTML','Starting Node.js','Creating a server','A','Hard','Validation ensures incoming data has acceptable format and values.'),

-- Q162
('Node.js','What is input sanitization?','Cleaning or transforming input to reduce unsafe or unwanted content','Creating database tables','Running JavaScript faster','Compressing files','A','Hard','Sanitization helps reduce security risks caused by malicious or unexpected input.'),

-- Q163
('Node.js','What is SQL injection?','An attack involving malicious SQL input','A Node.js module','A React hook','A CSS technique','A','Hard','SQL injection can occur when untrusted input is improperly incorporated into SQL queries.'),

-- Q164
('Node.js','How can SQL injection risk be reduced?','Parameterized queries','Concatenating user input into SQL','Disabling validation','Removing database indexes','A','Hard','Parameterized queries separate SQL code from user-provided values.'),

-- Q165
('Node.js','What is hashing?','Transforming data into a fixed-length representation using a hash function','Reversible encryption only','Compressing CSS','Creating a database','A','Hard','Hash functions transform input into a hash value; secure password storage uses dedicated password-hashing algorithms.'),

-- Q166
('Node.js','Which package is commonly used for password hashing in Node.js?','bcrypt','password-node','hash-only','secure-pass-js-only','A','Hard','bcrypt is commonly used for password hashing.'),

-- Q167
('Node.js','Should plain-text passwords normally be stored in a database?','No','Yes','Only for development','Only in JSON','A','Hard','Passwords should be stored using a secure password-hashing approach, not as plaintext.'),

-- Q168
('Node.js','What is HTTPS?','HTTP over TLS encryption','HTTP without security','A database','A JavaScript framework','A','Hard','HTTPS secures HTTP traffic using TLS.'),

-- Q169
('Node.js','What does TLS provide?','Encryption and authentication for network communication','Database storage','CSS styling','JavaScript compilation','A','Hard','TLS protects data in transit and helps authenticate servers.'),

-- Q170
('Node.js','What is rate limiting?','Restricting how many requests a client can make within a period','Increasing CPU speed','Removing API routes','Compressing JSON','A','Hard','Rate limiting helps protect APIs from abuse and excessive traffic.'),

-- Q171
('Node.js','What is logging?','Recording application events and information','Deleting server data','Creating a database','Encrypting files','A','Hard','Logs help developers monitor, debug, and troubleshoot applications.'),

-- Q172
('Node.js','Which method writes informational output to the console?','console.log()','console.writeInfo()','node.logInfo()','print.console()','A','Hard','console.log() prints values to standard output.'),

-- Q173
('Node.js','Which console method commonly reports errors?','console.error()','console.fail()','console.exceptionOnly()','node.errorLog()','A','Hard','console.error() writes error information to standard error.'),

-- Q174
('Node.js','What is error handling?','Detecting and appropriately responding to errors','Removing all errors automatically','Disabling logs','Restarting the browser','A','Hard','Error handling allows applications to respond safely to failures.'),

-- Q175
('Node.js','Which block is commonly used to handle synchronous exceptions?','try...catch','if...error','handle...exception','error...catch-only','A','Hard','try...catch catches exceptions thrown during synchronous execution.'),

-- Q176
('Node.js','How can Promise errors commonly be handled?','.catch()','.error()','.handleErrorOnly()','.reject() only','A','Hard','.catch() handles rejected Promises.'),

-- Q177
('Node.js','In an Express error-handling middleware, how many parameters are conventionally declared?','Four','Two','Three','One','A','Hard','Express error middleware conventionally has (err, req, res, next).'),

-- Q178
('Node.js','Which is the correct Express error middleware signature?','(err, req, res, next)','(req, err, res)','(error, response)','(next, req, error)','A','Hard','Express recognizes four-argument middleware as error-handling middleware.'),

-- Q179
('Node.js','What is unit testing?','Testing a small unit of code in isolation','Testing the entire production server only','Testing hardware only','Testing network cables','A','Hard','Unit tests focus on individual functions or small units.'),

-- Q180
('Node.js','Which is a popular JavaScript testing framework?','Jest','MySQL','Express','Git','A','Hard','Jest is widely used for JavaScript and Node.js testing.'),

-- Q181
('Node.js','What is integration testing?','Testing how multiple components or modules work together','Testing one variable only','Testing CSS colors','Testing hardware','A','Hard','Integration tests verify interactions between parts of an application.'),

-- Q182
('Node.js','What is API testing?','Testing API endpoints and their behavior','Testing CSS only','Testing a database schema only','Testing a monitor','A','Hard','API testing checks requests, responses, status codes, validation, and business behavior.'),

-- Q183
('Node.js','What is Postman commonly used for?','Testing APIs','Writing CSS','Creating databases only','Compiling Node.js','A','Hard','Postman is widely used for sending HTTP requests and testing APIs.'),

-- Q184
('Node.js','What is debugging?','Finding and resolving problems in code','Writing only HTML','Creating a database','Installing npm','A','Hard','Debugging involves locating the cause of incorrect behavior and fixing it.'),

-- Q185
('Node.js','Which Node.js flag starts the built-in inspector?','--inspect','--debug-mode-only','--developer','--node-debugger-only','A','Hard','node --inspect enables the Node.js inspector for debugging.'),

-- Q186
('Node.js','What is a production environment?','The environment where the application serves real users or real workloads','A local editor','A testing-only folder','A database table','A','Hard','Production is the live environment used by actual users or workloads.'),

-- Q187
('Node.js','What is deployment?','Making an application available in a target environment','Writing a variable','Creating a React component','Installing JavaScript only','A','Hard','Deployment moves an application into an environment where it can run.'),

-- Q188
('Node.js','Which service can be used to host Node.js applications?','Render','Railway','AWS','All of the above','D','Hard','All listed platforms can be used for hosting Node.js applications, depending on the deployment setup.'),

-- Q189
('Node.js','What is a process manager?','Software that helps run, monitor, and manage application processes','A database','A CSS framework','A JavaScript variable','A','Hard','Process managers can restart applications, manage logs, and keep services running.'),

-- Q190
('Node.js','Which tool is commonly used as a Node.js process manager?','PM2','MySQL','Bootstrap','Postman','A','Hard','PM2 is a popular process manager for Node.js applications.'),

-- Q191
('Node.js','What is clustering in Node.js?','Running multiple Node.js processes to utilize multiple CPU cores','Joining databases','Combining CSS files','Creating React components','A','Hard','Node.js clustering can run multiple processes that share a server port.'),

-- Q192
('Node.js','What is a worker thread?','A Node.js thread that can execute JavaScript separately from the main thread','A database worker only','A CSS process','An HTTP request','A','Hard','Worker Threads are useful for CPU-intensive JavaScript tasks.'),

-- Q193
('Node.js','Why use worker threads?','To handle CPU-intensive work without blocking the main event loop as much','To replace all asynchronous I/O','To create databases','To render CSS','A','Hard','Worker threads can move CPU-heavy JavaScript work away from the main thread.'),

-- Q194
('Node.js','What is a child process in Node.js?','A separate process started by a parent Node.js process','A React component','A database row','A CSS file','A','Hard','Node.js provides APIs for creating and managing child processes.'),

-- Q195
('Node.js','Which module provides child process APIs?','child_process','process-child','node-child','child-node-only','A','Hard','The built-in child_process module provides process-spawning APIs.'),

-- Q196
('Node.js','What is semantic versioning?','A convention for version numbers such as major.minor.patch','A database system','A JavaScript engine','A testing library','A','Hard','Semantic Versioning commonly uses MAJOR.MINOR.PATCH to communicate compatibility expectations.'),

-- Q197
('Node.js','What does a major version change generally indicate in SemVer?','Potential breaking changes','Only bug fixes','Only documentation changes','No changes','A','Hard','A major version increment may include incompatible API changes.'),

-- Q198
('Node.js','What does a patch version generally indicate?','Backward-compatible bug fixes','Breaking changes only','A new programming language','Database deletion','A','Hard','Patch releases generally contain backward-compatible bug fixes.'),

-- Q199
('Node.js','What is the main advantage of Node.js for real-time applications?','Its event-driven, non-blocking architecture can handle many concurrent I/O operations efficiently','It requires a new thread for every request','It only supports static HTML','It cannot use WebSockets','A','Hard','Node.js event-driven model is well suited to applications with frequent real-time I/O.'),

-- Q200
('Node.js','Which statement best describes Node.js?','A JavaScript runtime designed for executing JavaScript outside the browser','A relational database','A CSS framework','A programming language separate from JavaScript','A','Hard','Node.js provides a runtime for executing JavaScript outside the browser, with APIs for servers, files, networking, and more.');


-- Verification 1: Total Node.js questions
SELECT COUNT(*) AS nodejs_questions
FROM questions
WHERE skill = 'Node.js';

-- Verification 2: Unique Node.js questions
SELECT COUNT(DISTINCT question) AS unique_nodejs_questions
FROM questions
WHERE skill = 'Node.js';

-- Verification 3: Duplicate count
SELECT
    COUNT(*) - COUNT(DISTINCT question) AS duplicate_nodejs_questions
FROM questions
WHERE skill = 'Node.js';

-- Verification 4: All skills count
SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;

