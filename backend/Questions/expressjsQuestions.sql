USE ai_interviewer;

-- ============================================================
-- Express.js — 200 MCQs
-- Difficulty: Q1-Q50 Easy, Q51-Q150 Medium, Q151-Q200 Hard
-- ============================================================

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Express.js';

SET SQL_SAFE_UPDATES = 1;

-- ============================================================
-- INSERT 200 EXPRESS.JS QUESTIONS
-- ============================================================

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Express.js', 'What is Express.js?', 'Database', 'Web application framework for Node.js', 'Programming language', 'Operating system', 'B', 'Easy', 'Express.js is a web framework built on Node.js.'),

-- Q2
('Express.js', 'Express.js is primarily used for:', 'Image editing', 'Building web servers and APIs', 'Spreadsheet calculations', 'Operating systems', 'B', 'Easy', 'Express simplifies creating web servers and REST APIs.'),

-- Q3
('Express.js', 'Express.js runs on:', 'JVM', 'Node.js', '.NET CLR', 'Browser only', 'B', 'Easy', 'Express is a Node.js framework.'),

-- Q4
('Express.js', 'Which command creates a Node.js project?', 'npm create', 'npm init', 'node create', 'express start', 'B', 'Easy', 'npm init creates a package.json file for a project.'),

-- Q5
('Express.js', 'How do you install Express?', 'npm install express', 'node install express', 'express install', 'npm express', 'A', 'Easy', 'Express is installed through npm.'),

-- Q6
('Express.js', 'Which function creates an Express application?', 'express.server()', 'express()', 'express.create()', 'app.create()', 'B', 'Easy', 'Calling express() returns an Express application instance.'),

-- Q7
('Express.js', 'Which statement imports Express using CommonJS?', 'import express from "express"', 'require("express")', 'include express', 'using express', 'B', 'Easy', 'CommonJS uses require().' ),

-- Q8
('Express.js', 'What does app.listen() do?', 'Connects to database', 'Starts the server listening for requests', 'Creates middleware', 'Sends JSON', 'B', 'Easy', 'app.listen() binds the server to a port.'),

-- Q9
('Express.js', 'Which object represents the Express application?', 'req', 'res', 'app', 'next', 'C', 'Easy', 'The app object represents the Express application.'),

-- Q10
('Express.js', 'Which HTTP method is commonly used to retrieve data?', 'GET', 'POST', 'DELETE', 'PATCH', 'A', 'Easy', 'GET requests are generally used to retrieve resources.'),

-- Q11
('Express.js', 'Which HTTP method is commonly used to create data?', 'GET', 'POST', 'HEAD', 'OPTIONS', 'B', 'Easy', 'POST commonly creates a new resource.'),

-- Q12
('Express.js', 'Which method is commonly used to replace a resource?', 'GET', 'PUT', 'OPTIONS', 'HEAD', 'B', 'Easy', 'PUT is generally used for full replacement.'),

-- Q13
('Express.js', 'Which method is commonly used for partial updates?', 'PATCH', 'GET', 'HEAD', 'CONNECT', 'A', 'Easy', 'PATCH is designed for partial modifications.'),

-- Q14
('Express.js', 'Which method is commonly used to remove a resource?', 'GET', 'POST', 'DELETE', 'OPTIONS', 'C', 'Easy', 'DELETE is used to request resource deletion.'),

-- Q15
('Express.js', 'What does req represent?', 'Response', 'Request', 'Router', 'Database', 'B', 'Easy', 'req contains information about the incoming request.'),

-- Q16
('Express.js', 'What does res represent?', 'Request', 'Response', 'Router', 'Server', 'B', 'Easy', 'res is used to send a response to the client.'),

-- Q17
('Express.js', 'What is next in Express middleware?', 'Database connection', 'Function used to pass control to the next middleware', 'HTTP method', 'Port number', 'B', 'Easy', 'Calling next() transfers control to the next matching middleware.'),

-- Q18
('Express.js', 'Which method defines a GET route?', 'app.get()', 'app.fetch()', 'app.read()', 'app.request()', 'A', 'Easy', 'app.get() handles GET requests.'),

-- Q19
('Express.js', 'Which method defines a POST route?', 'app.send()', 'app.post()', 'app.create()', 'app.add()', 'B', 'Easy', 'app.post() handles POST requests.'),

-- Q20
('Express.js', 'Which method defines a DELETE route?', 'app.remove()', 'app.delete()', 'app.destroy()', 'app.erase()', 'B', 'Easy', 'app.delete() handles DELETE requests.'),

-- Q21
('Express.js', 'What does res.send() do?', 'Receives a request', 'Sends a response', 'Starts a server', 'Creates a route', 'B', 'Easy', 'res.send() sends the HTTP response.'),

-- Q22
('Express.js', 'What does res.json() send?', 'HTML only', 'JSON response', 'CSS', 'SQL query', 'B', 'Easy', 'res.json() sends JSON data.'),

-- Q23
('Express.js', 'Which function sends an HTML file?', 'res.file()', 'res.sendFile()', 'res.htmlFile()', 'res.page()', 'B', 'Easy', 'res.sendFile() sends a file as the response.'),

-- Q24
('Express.js', 'Which method sets the HTTP status code?', 'res.status()', 'res.code()', 'res.http()', 'res.statusCode()', 'A', 'Easy', 'res.status(code) sets the response status.'),

-- Q25
('Express.js', 'How can status 201 be sent with JSON?', 'res.code(201).json()', 'res.status(201).json()', 'res.http(201).json()', 'res.json(201)', 'B', 'Easy', 'res.status(201).json(data) sets status and sends JSON.'),

-- Q26
('Express.js', 'What does HTTP status 200 generally indicate?', 'Server error', 'Successful request', 'Unauthorized', 'Not found', 'B', 'Easy', '200 indicates a successful request.'),

-- Q27
('Express.js', 'What does HTTP status 201 mean?', 'Created', 'Forbidden', 'Not found', 'Bad request', 'A', 'Easy', '201 indicates successful resource creation.'),

-- Q28
('Express.js', 'What does HTTP 400 mean?', 'Server error', 'Bad request', 'Success', 'Created', 'B', 'Easy', '400 indicates an invalid client request.'),

-- Q29
('Express.js', 'What does HTTP 401 generally mean?', 'Not found', 'Unauthorized', 'Created', 'Server error', 'B', 'Easy', '401 indicates that authentication is required or invalid.'),

-- Q30
('Express.js', 'What does HTTP 403 mean?', 'Forbidden', 'Created', 'Redirect', 'Success', 'A', 'Easy', '403 means the server understood the request but refuses access.'),

-- Q31
('Express.js', 'What does HTTP 404 mean?', 'Unauthorized', 'Not found', 'Created', 'Accepted', 'B', 'Easy', '404 indicates that the requested resource or route was not found.'),

-- Q32
('Express.js', 'What does HTTP 500 indicate?', 'Client success', 'Internal server error', 'Created', 'Redirect', 'B', 'Easy', '500 indicates a server-side error.'),

-- Q33
('Express.js', 'Which file commonly stores npm project metadata?', 'server.html', 'package.json', 'express.json', 'config.js', 'B', 'Easy', 'package.json stores project metadata and dependencies.'),

-- Q34
('Express.js', 'Which command installs project dependencies?', 'npm install', 'npm start-all', 'node dependencies', 'express install-all', 'A', 'Easy', 'npm install installs dependencies listed in package.json.'),

-- Q35
('Express.js', 'Which property lists project dependencies?', 'packages', 'dependencies', 'modules', 'libraries', 'B', 'Easy', 'The dependencies field lists runtime packages.'),

-- Q36
('Express.js', 'Which property usually contains development-only dependencies?', 'devDependencies', 'development', 'devPackages', 'testDependencies', 'A', 'Easy', 'devDependencies contains packages used mainly during development.'),

-- Q37
('Express.js', 'Express uses which architecture heavily?', 'Middleware-based architecture', 'Spreadsheet architecture', 'Desktop-only architecture', 'Compiler architecture', 'A', 'Easy', 'Middleware is a central concept in Express.'),

-- Q38
('Express.js', 'What is middleware?', 'A database', 'Function that can process requests and responses', 'HTML tag', 'Node package manager', 'B', 'Easy', 'Middleware functions can access request, response, and next.'),

-- Q39
('Express.js', 'Which is a valid middleware signature?', '(req, res, next)', '(data, html)', '(server, db)', '(url, port)', 'A', 'Easy', 'Standard middleware receives req, res, and next.'),

-- Q40
('Express.js', 'Which method registers application-level middleware?', 'app.use()', 'app.middleware()', 'app.addUse()', 'app.attach()', 'A', 'Easy', 'app.use() mounts middleware.'),

-- Q41
('Express.js', 'What happens if middleware neither sends a response nor calls next()?', 'Request may hang', 'Server automatically restarts', 'Database closes', 'Route is deleted', 'A', 'Easy', 'Processing cannot continue unless middleware completes or passes control.'),

-- Q42
('Express.js', 'Which middleware parses incoming JSON request bodies?', 'express.json()', 'express.body()', 'express.parse()', 'express.data()', 'A', 'Easy', 'express.json() parses JSON payloads.'),

-- Q43
('Express.js', 'Which middleware parses URL-encoded form data?', 'express.form()', 'express.urlencoded()', 'express.url()', 'express.formData()', 'B', 'Easy', 'express.urlencoded() parses URL-encoded request bodies.'),

-- Q44
('Express.js', 'Which option enables extended URL-encoded parsing?', '{extended: true}', '{deep: true}', '{parse: true}', '{nested: false}', 'A', 'Easy', 'extended: true enables extended parsing through the underlying parser.'),

-- Q45
('Express.js', 'Which middleware serves static files?', 'express.static()', 'express.files()', 'express.assets()', 'express.serve()', 'A', 'Easy', 'express.static() serves static assets.'),

-- Q46
('Express.js', 'Which is commonly a static asset?', 'CSS file', 'Database connection', 'SQL transaction', 'Server process', 'A', 'Easy', 'CSS, JavaScript, and image files can be static assets.'),

-- Q47
('Express.js', 'What is routing?', 'Managing database indexes', 'Determining how requests are handled by paths and methods', 'Compiling JavaScript', 'Installing packages', 'B', 'Easy', 'Routing maps URLs and HTTP methods to handlers.'),

-- Q48
('Express.js', 'Which can be part of a route?', 'HTTP method', 'Path', 'Handler', 'All of these', 'D', 'Easy', 'Express routes combine methods, paths, and handlers.'),

-- Q49
('Express.js', 'What is the purpose of app.use()?', 'Mount middleware or routers', 'Delete a server', 'Create a database', 'Compile HTML', 'A', 'Easy', 'app.use() mounts middleware functions and routers.'),

-- Q50
('Express.js', 'Express is commonly used to build:', 'REST APIs', 'Web servers', 'Backend applications', 'All of these', 'D', 'Easy', 'Express supports all these backend use cases.'),

-- Q51
('Express.js', 'What is an Express Router?', 'Database engine', 'Miniature routing system', 'Frontend framework', 'File format', 'B', 'Medium', 'express.Router() creates modular route handlers.'),

-- Q52
('Express.js', 'How do you create a router?', 'express.route()', 'express.Router()', 'express.createRouter()', 'Router.create()', 'B', 'Medium', 'express.Router() creates a router instance.'),

-- Q53
('Express.js', 'Why use routers?', 'To organize routes into modules', 'To replace Node.js', 'To create CSS', 'To compile Java', 'A', 'Medium', 'Routers help organize large applications.'),

-- Q54
('Express.js', 'How can a router be mounted?', 'app.use(''/users'', userRouter)', 'app.mount(''/users'')', 'app.router(''/users'')', 'app.attachRouter()', 'A', 'Medium', 'app.use() mounts the router at a path.'),

-- Q55
('Express.js', 'If router is mounted at /api, route /users becomes:', '/users/api', '/api/users', '/api', '/users only', 'B', 'Medium', 'The mount path is prefixed to router routes.'),

-- Q56
('Express.js', 'What is a route parameter?', 'Dynamic part of a URL', 'Database field', 'HTTP status', 'Middleware package', 'A', 'Medium', 'Route parameters capture dynamic URL values.'),

-- Q57
('Express.js', 'Which defines an id route parameter?', '/users/{id}', '/users/:id', '/users/[id]', '/users/<id>', 'B', 'Medium', 'Express uses :name syntax for route parameters.'),

-- Q58
('Express.js', 'Where are route parameters available?', 'req.params', 'req.routeParams', 'req.pathParams', 'res.params', 'A', 'Medium', 'Captured route parameters are stored in req.params.'),

-- Q59
('Express.js', 'For /users/25, route /users/:id gives:', 'req.params.id = "25"', 'req.query.id = "25"', 'req.body.id = "25"', 'res.id = "25"', 'A', 'Medium', 'Route parameters are available through req.params.'),

-- Q60
('Express.js', 'What are query parameters?', 'Values after ? in a URL', 'Values inside cookies only', 'HTTP headers', 'Route middleware', 'A', 'Medium', 'Query parameters appear after ?, such as ?page=2.'),

-- Q61
('Express.js', 'Where are query parameters available?', 'req.query', 'req.params', 'req.bodyParams', 'res.query', 'A', 'Medium', 'Express exposes query parameters through req.query.'),

-- Q62
('Express.js', 'URL /products?category=books has query parameter:', 'req.query.category', 'req.params.category', 'req.body.category', 'res.category', 'A', 'Medium', 'category is a query parameter.'),

-- Q63
('Express.js', 'What is the request body commonly used for?', 'Sending data to the server', 'Defining routes', 'Setting port', 'Installing npm packages', 'A', 'Medium', 'POST, PUT, and PATCH requests commonly carry data in the body.'),

-- Q64
('Express.js', 'Where is parsed JSON request data available?', 'req.body', 'req.data', 'req.json', 'res.body', 'A', 'Medium', 'JSON body data is available through req.body after parsing middleware.'),

-- Q65
('Express.js', 'Which middleware should generally be registered before routes that need JSON bodies?', 'express.json()', 'express.router()', 'express.server()', 'express.response()', 'A', 'Medium', 'Body parsing middleware must run before the route handler accesses req.body.'),

-- Q66
('Express.js', 'What does route order affect?', 'Which matching handler executes first', 'Database schema', 'Node version', 'JSON syntax', 'A', 'Medium', 'Express processes matching middleware/routes in registration order.'),

-- Q67
('Express.js', 'Why can a broad route placed first cause problems?', 'It may match requests before a more specific route', 'It disables npm', 'It changes database type', 'It removes middleware automatically', 'A', 'Medium', 'Earlier matching routes can handle requests before later routes are reached.'),

-- Q68
('Express.js', 'Which route matches /users/10?', '/users/:id', '/users/id', '/users?10', '/users/[10]', 'A', 'Medium', ':id is a dynamic route parameter.'),

-- Q69
('Express.js', 'What does req.path provide?', 'Request path', 'Request body', 'Database path', 'Response status', 'A', 'Medium', 'req.path represents the URL path portion.'),

-- Q70
('Express.js', 'What does req.method provide?', 'HTTP method', 'Port', 'Query string', 'IP only', 'A', 'Medium', 'It contains the request HTTP method.'),

-- Q71
('Express.js', 'What does req.originalUrl represent?', 'Original request URL', 'Database URL', 'Server IP', 'Package URL', 'A', 'Medium', 'It preserves the original request URL.'),

-- Q72
('Express.js', 'What does req.headers contain?', 'Request headers', 'Route definitions', 'Response body', 'Environment variables', 'A', 'Medium', 'Request headers are accessible through req.headers.'),

-- Q73
('Express.js', 'Which header commonly identifies the content type?', 'Content-Type', 'Route-Type', 'Data-Mode', 'Express-Type', 'A', 'Medium', 'Content-Type tells the server the media type of the request body.'),

-- Q74
('Express.js', 'What does req.get(''Authorization'') retrieve?', 'Authorization header', 'Route parameter', 'Cookie value only', 'Response body', 'A', 'Medium', 'req.get() retrieves a request header.'),

-- Q75
('Express.js', 'What does res.set() do?', 'Sets response headers', 'Sets database values', 'Sets route parameters', 'Starts server', 'A', 'Medium', 'res.set() sets HTTP response headers.'),

-- Q76
('Express.js', 'What does res.redirect() do?', 'Sends a redirect response', 'Deletes the request', 'Stops Node.js', 'Parses JSON', 'A', 'Medium', 'It tells the client to navigate to another URL.'),

-- Q77
('Express.js', 'Which status is commonly used for a permanent redirect?', '200', '301', '404', '500', 'B', 'Medium', '301 indicates a permanent redirect.'),

-- Q78
('Express.js', 'Which status is commonly used for a temporary redirect?', '302', '404', '201', '500', 'A', 'Medium', '302 is a common temporary redirect status.'),

-- Q79
('Express.js', 'What does res.end() do?', 'Ends the response', 'Starts middleware', 'Creates a route', 'Parses JSON', 'A', 'Medium', 'res.end() ends the HTTP response.'),

-- Q80
('Express.js', 'Which should generally happen once per request?', 'Sending the final response', 'Calling npm install', 'Creating Express app', 'Installing Node.js', 'A', 'Medium', 'A request should normally receive one final response.'),

-- Q81
('Express.js', 'What is a 404 handler used for?', 'Handling unmatched routes', 'Parsing JSON', 'Starting server', 'Connecting MongoDB', 'A', 'Medium', 'A fallback 404 handler responds when no route matches.'),

-- Q82
('Express.js', 'Where is a typical 404 middleware placed?', 'Before every route', 'After all routes', 'Inside package.json', 'Before Express installation', 'B', 'Medium', 'It should run after route matching has failed.'),

-- Q83
('Express.js', 'What is application-level middleware?', 'Middleware attached to app', 'Middleware stored in database', 'Browser middleware', 'HTML middleware', 'A', 'Medium', 'Application-level middleware is registered on the Express app.'),

-- Q84
('Express.js', 'What is router-level middleware?', 'Middleware attached to an Express Router', 'Browser plugin', 'Database middleware', 'CSS middleware', 'A', 'Medium', 'Router-level middleware is attached to express.Router() instances.'),

-- Q85
('Express.js', 'Which middleware is commonly used for request logging?', 'Morgan', 'React', 'Bootstrap', 'Mongoose', 'A', 'Medium', 'Morgan is a popular HTTP request logger for Node.js/Express.'),

-- Q86
('Express.js', 'What is middleware chaining?', 'Running multiple middleware functions in sequence', 'Connecting databases', 'Combining CSS files', 'Compiling JavaScript', 'A', 'Medium', 'Multiple middleware functions can process a request sequentially.'),

-- Q87
('Express.js', 'What does next() without arguments normally do?', 'Pass control onward', 'Send JSON', 'End response', 'Restart server', 'A', 'Medium', 'next() passes processing to the next matching middleware.'),

-- Q88
('Express.js', 'What does next(err) indicate?', 'Continue normal route', 'Pass an error to error-handling middleware', 'Send HTML automatically', 'Restart application', 'B', 'Medium', 'Passing an error to next() triggers error handling.'),

-- Q89
('Express.js', 'Error-handling middleware traditionally has how many parameters?', '2', '3', '4', '5', 'C', 'Medium', 'Its signature is (err, req, res, next).'),

-- Q90
('Express.js', 'Which is the error object in error middleware?', 'req', 'res', 'err', 'next', 'C', 'Medium', 'err contains the error passed through middleware.'),

-- Q91
('Express.js', 'Where should error middleware generally be registered?', 'After routes and other middleware', 'Before Express is imported', 'Inside package.json', 'Before app creation', 'A', 'Medium', 'Error middleware is commonly placed after normal handlers.'),

-- Q92
('Express.js', 'What is express.Router() useful for?', 'Route modularization', 'Database indexing', 'CSS styling', 'Browser rendering', 'A', 'Medium', 'Routers separate route logic into manageable modules.'),

-- Q93
('Express.js', 'Which statement mounts a router?', 'app.use(''/api'', router)', 'app.mount(router)', 'app.route(''/api'', router)', 'app.router(''/api'')', 'A', 'Medium', 'app.use() mounts routers at path prefixes.'),

-- Q94
('Express.js', 'Which method can handle all HTTP methods for a path?', 'app.all()', 'app.every()', 'app.any()', 'app.methods()', 'A', 'Medium', 'app.all() runs for requests using any HTTP method that matches the path.'),

-- Q95
('Express.js', 'What does app.route(''/users'') help with?', 'Chaining handlers for one route path', 'Creating databases', 'Serving images only', 'Installing packages', 'A', 'Medium', 'app.route() allows method handlers to be chained for a path.'),

-- Q96
('Express.js', 'Which syntax is valid?', 'app.route(''/users'').get(handler).post(handler)', 'app.route.get(''/users'')', 'app.path(''/users'').methods()', 'app.chain(''/users'')', 'A', 'Medium', 'Express supports chaining HTTP method handlers with app.route().'),

-- Q97
('Express.js', 'What is route matching based on?', 'Path and HTTP method', 'Database name only', 'Browser type only', 'File size', 'A', 'Medium', 'Express routes match incoming method/path combinations.'),

-- Q98
('Express.js', 'What is a route handler?', 'Function executed when a route matches', 'Database table', 'HTML element', 'npm command', 'A', 'Medium', 'Route handlers process matching requests.'),

-- Q99
('Express.js', 'Can a route have multiple handlers?', 'Yes', 'No', 'Only GET', 'Only POST', 'A', 'Medium', 'Express routes can use multiple callback functions.'),

-- Q100
('Express.js', 'Which feature helps separate concerns in Express?', 'Middleware', 'Routers', 'Modules', 'All of these', 'D', 'Medium', 'These features help structure Express applications.'),

-- Q101
('Express.js', 'What does REST stand for?', 'Representational State Transfer', 'Remote Express Server Technology', 'Response Execution Standard Type', 'Routing Server Transfer', 'A', 'Medium', 'REST is an architectural style for networked applications.'),

-- Q102
('Express.js', 'A REST API commonly uses:', 'HTTP methods', 'Resource-based URLs', 'JSON responses', 'All of these', 'D', 'Medium', 'These are common characteristics of REST-style APIs.'),

-- Q103
('Express.js', 'Which is a resource-oriented URL?', '/users', '/getAllUsersNow', '/executeUserDatabase', '/runUsers', 'A', 'Medium', 'REST APIs commonly represent resources using nouns.'),

-- Q104
('Express.js', 'Which status is suitable after successfully creating a resource?', '201', '404', '500', '403', 'A', 'Medium', '201 Created is appropriate for successful creation.'),

-- Q105
('Express.js', 'Which status can indicate successful deletion with no response body?', '204', '404', '500', '401', 'A', 'Medium', '204 No Content indicates success without a response body.'),

-- Q106
('Express.js', 'What does idempotent mean in HTTP context?', 'Repeating an operation has the same intended effect', 'Request always fails', 'Request has no URL', 'Request must use JSON', 'A', 'Medium', 'Idempotency means repeated identical requests have the same intended effect.'),

-- Q107
('Express.js', 'Which method is generally idempotent?', 'PUT', 'POST', 'CONNECT only', 'None', 'A', 'Medium', 'PUT is generally designed to be idempotent.'),

-- Q108
('Express.js', 'What is CORS?', 'Cross-Origin Resource Sharing', 'Client Object Routing Service', 'Cross-Origin Response System', 'Common Object Request Standard', 'A', 'Medium', 'CORS controls cross-origin browser requests.'),

-- Q109
('Express.js', 'Which package is commonly used to configure CORS in Express?', 'cors', 'cross-http', 'origin-express', 'express-cross', 'A', 'Medium', 'The cors npm package provides Express middleware for CORS.'),

-- Q110
('Express.js', 'What does CORS mainly affect?', 'Browser cross-origin access', 'SQL queries', 'CPU usage', 'File compression', 'A', 'Medium', 'CORS is primarily a browser security mechanism.'),

-- Q111
('Express.js', 'What is authentication?', 'Verifying identity', 'Assigning permissions', 'Formatting JSON', 'Routing requests', 'A', 'Medium', 'Authentication determines who the user is.'),

-- Q112
('Express.js', 'What is authorization?', 'Determining what an authenticated user is allowed to do', 'Checking password syntax only', 'Starting the server', 'Parsing JSON', 'A', 'Medium', 'Authorization controls permissions.'),

-- Q113
('Express.js', 'JWT stands for:', 'Java Web Token', 'JSON Web Token', 'JavaScript Web Transfer', 'JSON Website Tool', 'B', 'Medium', 'JWT means JSON Web Token.'),

-- Q114
('Express.js', 'Where might a JWT be sent to an API?', 'Authorization header', 'CSS file', 'HTML title', 'Database schema only', 'A', 'Medium', 'A common pattern is the Authorization: Bearer <token> header.'),

-- Q115
('Express.js', 'What does Bearer authentication usually mean?', 'Token presented in the Authorization header', 'Password stored in URL', 'Database-only authentication', 'Cookie always disabled', 'A', 'Medium', 'Bearer tokens are commonly sent through the Authorization header.'),

-- Q116
('Express.js', 'What is a cookie?', 'Small piece of data stored by the client/browser', 'Database table', 'Node module', 'HTTP method', 'A', 'Medium', 'Cookies allow servers and clients to maintain small pieces of state.'),

-- Q117
('Express.js', 'Which Express method sends a cookie?', 'res.cookie()', 'res.setCookieOnly()', 'req.cookie()', 'app.cookieSend()', 'A', 'Medium', 'res.cookie() sets a cookie in the response.'),

-- Q118
('Express.js', 'Which package can parse cookies?', 'cookie-parser', 'cookie-json', 'express-cookie-json', 'parse-cookie-express', 'A', 'Medium', 'cookie-parser is commonly used for parsing cookies.'),

-- Q119
('Express.js', 'Where can parsed cookies commonly be accessed with cookie-parser?', 'req.cookies', 'req.body.cookies', 'res.cookies', 'app.cookies', 'A', 'Medium', 'cookie-parser populates req.cookies.'),

-- Q120
('Express.js', 'What is a session?', 'Server-side mechanism for maintaining user state', 'HTTP method', 'CSS class', 'SQL operator', 'A', 'Medium', 'Sessions can maintain state across multiple requests.'),

-- Q121
('Express.js', 'Which package is commonly used for Express sessions?', 'express-session', 'session-node-only', 'express-state', 'node-session-router', 'A', 'Medium', 'express-session provides session middleware.'),

-- Q122
('Express.js', 'What should generally not be stored directly in a session cookie?', 'Large sensitive data', 'A session identifier', 'Small non-sensitive preferences', 'Necessary metadata', 'A', 'Medium', 'Cookies have size limits and sensitive data should be handled carefully.'),

-- Q123
('Express.js', 'What does res.locals provide?', 'Request-scoped local variables for rendering/middleware', 'Global database storage', 'Permanent storage', 'npm configuration', 'A', 'Medium', 'res.locals stores data available during the request-response cycle.'),

-- Q124
('Express.js', 'What is a template engine?', 'Tool for generating HTML from templates and data', 'Database server', 'HTTP protocol', 'Package manager', 'A', 'Medium', 'Template engines generate dynamic HTML.'),

-- Q125
('Express.js', 'Which is a Node.js template engine?', 'EJS', 'MySQL', 'MongoDB', 'Git', 'A', 'Medium', 'EJS is commonly used with Express.'),

-- Q126
('Express.js', 'Which Express method sets the view engine?', 'app.set(''view engine'', ''ejs'')', 'app.view(''ejs'')', 'app.engineSet(''ejs'')', 'app.template(''ejs'')', 'A', 'Medium', 'app.set() configures Express application settings.'),

-- Q127
('Express.js', 'Which method renders a view?', 'res.render()', 'res.view()', 'res.template()', 'app.renderPage()', 'A', 'Medium', 'res.render() renders a configured view.'),

-- Q128
('Express.js', 'What is API validation?', 'Checking incoming data against expected rules', 'Starting the server', 'Creating CSS', 'Sending cookies', 'A', 'Medium', 'Validation ensures input meets required rules.'),

-- Q129
('Express.js', 'Why validate request data?', 'Improve correctness and security', 'Increase HTML size', 'Disable routes', 'Remove middleware', 'A', 'Medium', 'Validation prevents invalid or unexpected data from entering application logic.'),

-- Q130
('Express.js', 'Which library can validate JavaScript objects?', 'Joi', 'ExpressHTML', 'NodeSQL', 'RouteCSS', 'A', 'Medium', 'Joi is a popular validation library.'),

-- Q131
('Express.js', 'Which is another popular validation library?', 'Zod', 'RouterDB', 'JSONExpress', 'NodeFormsOnly', 'A', 'Medium', 'Zod provides schema-based validation for JavaScript/TypeScript.'),

-- Q132
('Express.js', 'What is sanitization?', 'Cleaning or transforming input to reduce unwanted content', 'Starting the server', 'Creating routes', 'Installing Express', 'A', 'Medium', 'Sanitization helps handle untrusted input safely.'),

-- Q133
('Express.js', 'What is rate limiting?', 'Restricting number of requests in a period', 'Increasing database size', 'Changing HTTP methods', 'Compressing HTML', 'A', 'Medium', 'Rate limiting helps prevent abuse and excessive traffic.'),

-- Q134
('Express.js', 'Which package is commonly used for rate limiting in Express?', 'express-rate-limit', 'express-speed', 'rate-node', 'limit-express-api', 'A', 'Medium', 'express-rate-limit provides rate-limiting middleware.'),

-- Q135
('Express.js', 'What is Helmet commonly used for?', 'Setting security-related HTTP headers', 'Database connection', 'Image compression', 'Routing only', 'A', 'Medium', 'Helmet helps improve security through HTTP headers.'),

-- Q136
('Express.js', 'Which package is commonly used with Express for security headers?', 'helmet', 'secure-html', 'express-protect-only', 'http-safe', 'A', 'Medium', 'Helmet is widely used for security headers.'),

-- Q137
('Express.js', 'What is HTTPS?', 'HTTP over TLS encryption', 'HTTP without headers', 'Database protocol', 'Express-only protocol', 'A', 'Medium', 'HTTPS secures HTTP communication using TLS.'),

-- Q138
('Express.js', 'Why use HTTPS for APIs?', 'Protect data in transit', 'Increase CSS styling', 'Remove routes', 'Avoid JSON', 'A', 'Medium', 'HTTPS helps protect transmitted data from interception.'),

-- Q139
('Express.js', 'What is an environment variable?', 'Configuration value supplied by the environment', 'HTML element', 'Database table', 'Route parameter only', 'A', 'Medium', 'Environment variables commonly store configuration outside source code.'),

-- Q140
('Express.js', 'Which Node.js object accesses environment variables?', 'process.env', 'node.env', 'app.envVars', 'express.env', 'A', 'Medium', 'Node.js exposes environment variables through process.env.'),

-- Q141
('Express.js', 'Which variable commonly specifies an Express port?', 'PORT', 'HTTP_ONLY', 'SERVER_HTML', 'EXPRESS_PORT_ONLY', 'A', 'Medium', 'PORT is a common environment variable name for server port configuration.'),

-- Q142
('Express.js', 'What is app.set() used for?', 'Setting Express application settings', 'Setting cookies only', 'Setting database passwords only', 'Setting HTTP methods', 'A', 'Medium', 'Express application settings can be configured using app.set().'),

-- Q143
('Express.js', 'Which setting controls JSON formatting?', 'json spaces', 'json format only', 'json pretty', 'json layout', 'A', 'Medium', 'Express supports the json spaces setting.'),

-- Q144
('Express.js', 'What does app.disable(''x-powered-by'') do?', 'Disables the X-Powered-By header', 'Stops Node.js', 'Disables JSON', 'Deletes routes', 'A', 'Medium', 'It prevents Express from exposing its default X-Powered-By header.'),

-- Q145
('Express.js', 'Why disable X-Powered-By?', 'Reduce unnecessary framework disclosure', 'Increase HTML size', 'Enable SQL', 'Enable CORS automatically', 'A', 'Medium', 'Hiding framework-identifying headers reduces information exposure.'),

-- Q146
('Express.js', 'What is API versioning?', 'Managing different API versions', 'Updating Node.js automatically', 'Changing database passwords', 'Compressing requests', 'A', 'Medium', 'Versioning helps maintain compatibility between API clients and server changes.'),

-- Q147
('Express.js', 'Which is a common API versioning pattern?', '/api/v1/users', '/api/version-users-only', '/users/versioning-css', '/v/users/html', 'A', 'Medium', 'Version numbers are commonly included in API paths.'),

-- Q148
('Express.js', 'What is pagination?', 'Splitting large result sets into pages', 'Encrypting passwords', 'Creating middleware', 'Starting a server', 'A', 'Medium', 'Pagination limits how many records are returned per request.'),

-- Q149
('Express.js', 'Common pagination parameters are:', 'page and limit', 'color and font', 'port and host', 'route and method', 'A', 'Medium', 'page and limit are common pagination parameters.'),

-- Q150
('Express.js', 'What is filtering in an API?', 'Returning resources matching specified criteria', 'Removing middleware', 'Closing server', 'Installing packages', 'A', 'Medium', 'Filtering allows clients to request only matching resources.'),

-- Q151
('Express.js', 'Why should passwords not be stored as plain text?', 'Security risk', 'Performance issue only', 'Routing issue', 'JSON issue', 'A', 'Hard', 'Plain-text passwords can be exposed if storage is compromised.'),

-- Q152
('Express.js', 'What should be used to protect stored passwords?', 'Secure password hashing', 'Base64 only', 'Plain text', 'URL encoding only', 'A', 'Hard', 'Passwords should be stored using an appropriate password-hashing algorithm.'),

-- Q153
('Express.js', 'Which library is commonly used for password hashing?', 'bcrypt', 'express-css', 'node-router', 'json-html', 'A', 'Hard', 'bcrypt is commonly used for password hashing.'),

-- Q154
('Express.js', 'What is authorization middleware useful for?', 'Checking user permissions', 'Parsing CSS', 'Creating HTML', 'Installing packages', 'A', 'Hard', 'Authorization middleware can restrict access based on roles or permissions.'),

-- Q155
('Express.js', 'What is role-based access control?', 'Access based on user roles', 'Access based on browser color', 'Access based on HTML', 'Access based on port only', 'A', 'Hard', 'RBAC assigns permissions according to roles.'),

-- Q156
('Express.js', 'Which is a common role?', 'Admin', 'User', 'Editor', 'All of these', 'D', 'Hard', 'Applications may define roles such as admin, user, and editor.'),

-- Q157
('Express.js', 'What is SQL injection?', 'Injection of malicious SQL through unsafe input', 'HTTP compression', 'CSS attack only', 'Express routing feature', 'A', 'Hard', 'SQL injection exploits unsafe construction of database queries.'),

-- Q158
('Express.js', 'How can SQL injection risk be reduced?', 'Parameterized queries', 'Plain-text passwords', 'Removing HTTP methods', 'Disabling JSON', 'A', 'Hard', 'Parameterized queries separate data from SQL instructions.'),

-- Q159
('Express.js', 'What is NoSQL injection?', 'Manipulation of unsafe NoSQL query input', 'HTML rendering', 'CSS injection only', 'Node installation', 'A', 'Hard', 'Unsafe user input can also manipulate NoSQL queries.'),

-- Q160
('Express.js', 'Why should request input be treated as untrusted?', 'Clients can send unexpected or malicious data', 'Express always validates it', 'Browsers never send invalid data', 'Node automatically encrypts it', 'A', 'Hard', 'Server-side applications must not blindly trust client input.'),

-- Q161
('Express.js', 'What is CSRF?', 'Cross-Site Request Forgery', 'Client Server Response Format', 'Cross Server Routing Function', 'Cookie Secure Request Framework', 'A', 'Hard', 'CSRF tricks a user''s browser into making an unwanted authenticated request.'),

-- Q162
('Express.js', 'CSRF protection is especially relevant to:', 'Cookie-based authentication', 'CSS files', 'Static images', 'Database indexes', 'A', 'Hard', 'Cookies can be automatically sent by browsers, making CSRF protection important.'),

-- Q163
('Express.js', 'What does HttpOnly cookie attribute help prevent?', 'Client-side JavaScript access to the cookie', 'Server access', 'HTTPS encryption', 'Database queries', 'A', 'Hard', 'HttpOnly prevents JavaScript from reading the cookie through document.cookie.'),

-- Q164
('Express.js', 'What does the Secure cookie attribute indicate?', 'Cookie should be sent over secure connections', 'Cookie is encrypted by JavaScript', 'Cookie is stored in SQL', 'Cookie cannot expire', 'A', 'Hard', 'Secure cookies are intended to be transmitted only over HTTPS.'),

-- Q165
('Express.js', 'What does SameSite help control?', 'Cross-site cookie sending behavior', 'Database access', 'Port selection', 'JSON formatting', 'A', 'Hard', 'SameSite controls when cookies are sent in cross-site contexts.'),

-- Q166
('Express.js', 'What is logging?', 'Recording application events and requests', 'Encrypting databases', 'Creating routes', 'Installing packages', 'A', 'Hard', 'Logs help monitor and troubleshoot applications.'),

-- Q167
('Express.js', 'Why are logs useful?', 'Debugging and monitoring', 'CSS styling', 'HTML validation only', 'Creating npm packages only', 'A', 'Hard', 'Logs provide useful information about application behavior.'),

-- Q168
('Express.js', 'What should production logs avoid exposing?', 'Passwords and sensitive tokens', 'Request method', 'Timestamp', 'Error category', 'A', 'Hard', 'Sensitive information should not be unnecessarily written to logs.'),

-- Q169
('Express.js', 'What is testing an API?', 'Sending requests and checking responses', 'Editing CSS', 'Installing Node.js', 'Creating database tables only', 'A', 'Hard', 'API tests verify expected behavior of endpoints.'),

-- Q170
('Express.js', 'Which library is commonly used for JavaScript testing?', 'Jest', 'ExpressHTML', 'NodeCSS', 'RouterSQL', 'A', 'Hard', 'Jest is a popular JavaScript testing framework.'),

-- Q171
('Express.js', 'Which library is commonly used for HTTP testing with Express?', 'Supertest', 'ExpressTestCSS', 'NodeHTTPCheck', 'APIOnly', 'A', 'Hard', 'Supertest can test HTTP endpoints.'),

-- Q172
('Express.js', 'What is unit testing?', 'Testing a small isolated unit of code', 'Testing the entire internet', 'Testing only databases', 'Testing browser CSS', 'A', 'Hard', 'Unit tests focus on small individual components.'),

-- Q173
('Express.js', 'What is integration testing?', 'Testing interactions between components', 'Testing one variable only', 'Testing CSS colors', 'Installing dependencies', 'A', 'Hard', 'Integration tests verify that multiple components work together.'),

-- Q174
('Express.js', 'What is an API integration test likely to verify?', 'Endpoint behavior with supporting components', 'Font size', 'HTML color', 'Keyboard layout', 'A', 'Hard', 'Integration tests can verify routes, middleware, and data-layer interactions.'),

-- Q175
('Express.js', 'What is mocking?', 'Replacing a dependency with a controlled test substitute', 'Encrypting requests', 'Creating routes automatically', 'Compressing JSON', 'A', 'Hard', 'Mocks isolate code from real external dependencies during tests.'),

-- Q176
('Express.js', 'What is error handling?', 'Detecting and responding to failures appropriately', 'Deleting all errors', 'Disabling routes', 'Changing CSS', 'A', 'Hard', 'Error handling provides predictable behavior when something fails.'),

-- Q177
('Express.js', 'Which middleware signature handles errors?', '(err, req, res, next)', '(req, res)', '(error, request)', '(res, next)', 'A', 'Hard', 'Express recognizes four-argument error-handling middleware.'),

-- Q178
('Express.js', 'What should an API usually return when an unexpected server error occurs?', 'Appropriate 5xx response', 'Always 200', 'Always 301', 'CSS file', 'A', 'Hard', '5xx statuses indicate server-side failures.'),

-- Q179
('Express.js', 'Why avoid returning stack traces to production clients?', 'They may reveal sensitive implementation details', 'They improve security', 'They are required by HTTP', 'They disable JSON', 'A', 'Hard', 'Stack traces can disclose internal information.'),

-- Q180
('Express.js', 'What is graceful shutdown?', 'Properly stopping a server and cleaning resources', 'Forcefully deleting files', 'Restarting every request', 'Disabling HTTP', 'A', 'Hard', 'Graceful shutdown lets active work finish and resources close cleanly.'),

-- Q181
('Express.js', 'Which signal commonly indicates a process should terminate?', 'SIGTERM', 'HTTP200', 'JSONEND', 'EXPRESSSTOP', 'A', 'Hard', 'SIGTERM is commonly used to request graceful process termination.'),

-- Q182
('Express.js', 'Why handle SIGTERM in a server application?', 'To perform graceful shutdown', 'To parse JSON', 'To create routes', 'To install packages', 'A', 'Hard', 'Handling SIGTERM allows cleanup before process termination.'),

-- Q183
('Express.js', 'What is a health-check endpoint?', 'Endpoint used to indicate application health', 'User login page only', 'Database schema', 'CSS file', 'A', 'Hard', 'Health endpoints help monitoring systems determine whether a service is functioning.'),

-- Q184
('Express.js', 'A common health-check path is:', '/health', '/css-health-html', '/server-check-only-db', '/node-running-page', 'A', 'Hard', '/health is a common convention.'),

-- Q185
('Express.js', 'What is load balancing?', 'Distributing requests across multiple servers', 'Balancing JSON objects', 'Changing route names', 'Compressing images', 'A', 'Hard', 'Load balancing distributes traffic among server instances.'),

-- Q186
('Express.js', 'Why run multiple Express instances?', 'Improve availability and scalability', 'Remove HTTP', 'Disable middleware', 'Avoid all testing', 'A', 'Hard', 'Multiple instances can handle more traffic and improve availability.'),

-- Q187
('Express.js', 'What is a reverse proxy?', 'Server that forwards client requests to backend services', 'Database table', 'Node package', 'Browser plugin', 'A', 'Hard', 'Reverse proxies sit in front of backend servers.'),

-- Q188
('Express.js', 'Which is a common reverse proxy?', 'Nginx', 'MySQL', 'React', 'MongoDB', 'A', 'Hard', 'Nginx is commonly used as a reverse proxy.'),

-- Q189
('Express.js', 'What is compression middleware used for?', 'Reducing response size', 'Encrypting passwords', 'Creating routes', 'Validating SQL', 'A', 'Hard', 'Compression can reduce response payload size.'),

-- Q190
('Express.js', 'Which npm package provides compression middleware?', 'compression', 'express-compress-only', 'node-zip-server', 'http-small', 'A', 'Hard', 'The compression package provides compression middleware.'),

-- Q191
('Express.js', 'What is caching?', 'Storing reusable data to improve performance', 'Deleting requests', 'Creating routes', 'Changing HTTP methods', 'A', 'Hard', 'Caching can reduce repeated computation or database access.'),

-- Q192
('Express.js', 'Which HTTP header is related to caching?', 'Cache-Control', 'Route-Control', 'Express-Cache-Only', 'Node-Control', 'A', 'Hard', 'Cache-Control specifies caching directives.'),

-- Q193
('Express.js', 'What is ETag used for?', 'Cache validation', 'Password hashing', 'Database creation', 'Route creation', 'A', 'Hard', 'ETags can help clients and servers determine whether a representation changed.'),

-- Q194
('Express.js', 'What does express.static() commonly use?', 'A directory path', 'SQL query', 'JWT token', 'Database password', 'A', 'Hard', 'It serves files from a specified directory.'),

-- Q195
('Express.js', 'Which is a valid static setup?', 'app.use(express.static(''public''))', 'app.static(''public'')', 'express.useStatic(''public'')', 'app.files(''public'')', 'A', 'Hard', 'express.static() is mounted with app.use().'),

-- Q196
('Express.js', 'What is the purpose of trust proxy?', 'Configure how Express handles proxy-related request information', 'Enable SQL', 'Create routes', 'Parse JSON', 'A', 'Hard', 'The setting affects handling of proxy information such as client IP and protocol.'),

-- Q197
('Express.js', 'Which Express property can provide the client IP?', 'req.ip', 'req.clientAddressOnly', 'res.ipAddress', 'app.clientIp', 'A', 'Hard', 'req.ip provides the request''s client IP as determined by Express configuration.'),

-- Q198
('Express.js', 'What is process management useful for in production?', 'Keeping applications running and restarting when necessary', 'Designing HTML', 'Writing CSS', 'Creating SQL tables', 'A', 'Hard', 'Process managers can help run and monitor Node.js applications.'),

-- Q199
('Express.js', 'Which is a popular Node.js process manager?', 'PM2', 'Bootstrap', 'MySQL', 'React', 'A', 'Hard', 'PM2 is widely used to manage Node.js processes.'),

-- Q200
('Express.js', 'Which combination represents a good Express production practice?', 'Validation, security headers, logging, error handling', 'Plain-text passwords and exposed secrets', 'No error handling', 'Trust all input', 'A', 'Hard', 'Validation, secure configuration, logging, and proper error handling improve production reliability and security.');

-- ============================================================
-- VERIFICATION
-- ============================================================

SELECT COUNT(*) AS express_questions
FROM questions
WHERE skill = 'Express.js';

SELECT COUNT(DISTINCT question) AS unique_express_questions
FROM questions
WHERE skill = 'Express.js';

SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
