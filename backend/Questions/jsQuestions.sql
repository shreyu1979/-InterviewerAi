USE ai_interviewer;

-- JavaScript 200 MCQs
-- Source: Pasted JavaScript questions
-- Difficulty mapping: Q1-50 = Easy, Q51-150 = Medium, Q151-200 = Hard.

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('JavaScript', 'What is JavaScript?', 'A database', 'A programming/scripting language', 'A markup language', 'An operating system', 'B', 'Easy', 'JavaScript is a programming language widely used to add logic and interactivity to web applications.'),

-- Q2
('JavaScript', 'Which tag is used to include JavaScript in HTML?', '<javascript>', '<js>', '<script>', '<code>', 'C', 'Easy', 'JavaScript code is included using the <script> element.'),

-- Q3
('JavaScript', 'Which keyword declares a block-scoped variable that can be reassigned?', 'var', 'let', 'const', 'define', 'B', 'Easy', 'let declares a block-scoped variable whose value can be changed.'),

-- Q4
('JavaScript', 'Which keyword declares a block-scoped binding that cannot be reassigned?', 'var', 'let', 'const', 'static', 'C', 'Easy', 'const creates a block-scoped binding that cannot be reassigned.'),

-- Q5
('JavaScript', 'Which keyword has function scope rather than block scope?', 'let', 'const', 'var', 'block', 'C', 'Easy', 'Variables declared with var are function-scoped.'),

-- Q6
('JavaScript', 'Which of the following is a valid JavaScript variable name?', '2name', 'user-name', 'userName', 'class', 'C', 'Easy', 'JavaScript identifiers can contain letters, digits, _, and $, but cannot start with a digit or use reserved words.'),

-- Q7
('JavaScript', 'JavaScript is generally:', 'Case-insensitive', 'Case-sensitive', 'Space-sensitive', 'Line-sensitive', 'B', 'Easy', 'JavaScript is case-sensitive, so name and Name are different identifiers.'),

-- Q8
('JavaScript', 'Which is a single-line comment?', '<!-- comment -->', '/* comment */', '// comment', '## comment', 'C', 'Easy', '// starts a single-line comment.'),

-- Q9
('JavaScript', 'Which syntax creates a multi-line comment?', '// ... //', '/* ... */', '<!-- ... -->', '## ... ##', 'B', 'Easy', 'JavaScript uses /* and */ for multi-line comments.'),

-- Q10
('JavaScript', 'Which value represents absence of an assigned value?', 'undefined', 'empty', 'nothing', 'voided', 'A', 'Easy', 'A declared variable that has not been assigned a value typically contains undefined.'),

-- Q11
('JavaScript', 'Which value explicitly represents "no value"?', 'undefined', 'null', 'empty', 'none', 'B', 'Easy', 'null is an intentional absence of an object or value.'),

-- Q12
('JavaScript', 'Which operator checks both value and type?', '==', '=', '===', '!=', 'C', 'Easy', '=== performs strict equality without type coercion.'),

-- Q13
('JavaScript', 'Which operator performs loose equality?', '=', '==', '===', '!==', 'B', 'Easy', '== compares values after possible type conversion.'),

-- Q14
('JavaScript', 'Which operator assigns a value?', '==', '===', '=', '=>', 'C', 'Easy', '= is the assignment operator.'),

-- Q15
('JavaScript', 'Which operator means "not equal" with type coercion allowed?', '!=', '!==', '<>', 'not=', 'A', 'Easy', '!= performs loose inequality comparison.'),

-- Q16
('JavaScript', 'Which operator means "not equal" without type coercion?', '!=', '!==', '<>', 'not==', 'B', 'Easy', '!== performs strict inequality comparison.'),

-- Q17
('JavaScript', 'Which operator represents logical AND?', '&', '&&', 'AND', '||', 'B', 'Easy', '&& performs logical AND.'),

-- Q18
('JavaScript', 'Which operator represents logical OR?', '|', '||', 'OR', '&&', 'B', 'Easy', '|| performs logical OR.'),

-- Q19
('JavaScript', 'Which operator represents logical NOT?', '!', 'not', '~', '!!=', 'A', 'Easy', '! reverses the Boolean truthiness of an expression.'),

-- Q20
('JavaScript', 'Which operator returns the remainder of a division?', '/', '%', '//', 'mod', 'B', 'Easy', '% returns the remainder after division.'),

-- Q21
('JavaScript', 'Which operator is used for exponentiation?', '^', '**', '^^', 'pow', 'B', 'Easy', '** raises the left operand to the power of the right operand.'),

-- Q22
('JavaScript', 'What is the result of 2 + 3?', '5', '6', '23', '2+3', 'A', 'Easy', 'The + operator performs numeric addition when both operands are numbers.'),

-- Q23
('JavaScript', 'What is the result of "2" + 3?', '5', '"23"', '6', 'Error', 'B', 'Easy', 'With a string operand, + performs string concatenation.'),

-- Q24
('JavaScript', 'Which operator increments a number by one?', '++', '+1', '+=1 only', 'inc', 'A', 'Easy', '++ increments a variable by one.'),

-- Q25
('JavaScript', 'Which operator decrements a number by one?', '--', '-1 only', 'dec', 'subtract1', 'A', 'Easy', '-- decreases a variable by one.'),

-- Q26
('JavaScript', 'Which statement is used for conditional execution?', 'if', 'check', 'condition', 'when', 'A', 'Easy', 'if executes code when its condition is truthy.'),

-- Q27
('JavaScript', 'Which statement provides an alternative condition?', 'otherwise', 'else if', 'elif', 'alternative', 'B', 'Easy', 'else if checks another condition when the preceding if condition is false.'),

-- Q28
('JavaScript', 'Which statement executes when all preceding conditions are false?', 'else', 'otherwise', 'default', 'final', 'A', 'Easy', 'else provides the fallback block.'),

-- Q29
('JavaScript', 'Which statement is useful for multiple fixed-value cases?', 'switch', 'choose', 'select', 'case-if', 'A', 'Easy', 'switch compares an expression against multiple case values.'),

-- Q30
('JavaScript', 'Which keyword defines a switch case?', 'option', 'case', 'when', 'match', 'B', 'Easy', 'Each possible switch branch is introduced with case.'),

-- Q31
('JavaScript', 'Which keyword provides the fallback in a switch?', 'else', 'fallback', 'default', 'otherwise', 'C', 'Easy', 'default executes when no case matches.'),

-- Q32
('JavaScript', 'Which keyword stops execution from continuing into the next switch case?', 'stop', 'exit', 'break', 'return-case', 'C', 'Easy', 'break exits the switch statement.'),

-- Q33
('JavaScript', 'Which loop is commonly used when the number of iterations is known?', 'for', 'if', 'switch', 'catch', 'A', 'Easy', 'A for loop is commonly used for counted iteration.'),

-- Q34
('JavaScript', 'Which loop executes while a condition is true?', 'while', 'until', 'repeat', 'during', 'A', 'Easy', 'A while loop repeatedly executes while its condition is truthy.'),

-- Q35
('JavaScript', 'Which loop executes its body at least once?', 'while', 'for', 'do...while', 'for...in', 'C', 'Easy', 'do...while checks its condition after executing the body.'),

-- Q36
('JavaScript', 'Which keyword skips the current loop iteration?', 'skip', 'continue', 'next', 'pass', 'B', 'Easy', 'continue moves to the next iteration.'),

-- Q37
('JavaScript', 'Which keyword exits a loop?', 'stop', 'exit', 'break', 'end', 'C', 'Easy', 'break terminates the nearest applicable loop or switch.'),

-- Q38
('JavaScript', 'What does typeof return?', 'Variable value', 'Data type as a string', 'Memory address', 'Object size', 'B', 'Easy', 'typeof returns a string describing the type of its operand.'),

-- Q39
('JavaScript', 'What does typeof "Hello" return?', '"text"', '"String"', '"string"', '"char"', 'C', 'Easy', 'JavaScript strings have the typeof result "string".'),

-- Q40
('JavaScript', 'What does typeof 10 return?', '"integer"', '"number"', '"numeric"', '"int"', 'B', 'Easy', 'JavaScript uses "number" for ordinary numeric values.'),

-- Q41
('JavaScript', 'What does typeof true return?', '"bool"', '"boolean"', '"true"', '"logical"', 'B', 'Easy', 'Boolean values have the type "boolean".'),

-- Q42
('JavaScript', 'What does typeof undefined return?', '"null"', '"undefined"', '"empty"', '"void"', 'B', 'Easy', 'The typeof result for undefined is "undefined".'),

-- Q43
('JavaScript', 'What does typeof null return in JavaScript?', '"null"', '"object"', '"undefined"', '"empty"', 'B', 'Easy', 'typeof null returns "object" due to a long-standing JavaScript language behavior.'),

-- Q44
('JavaScript', 'Which is a primitive data type?', 'Object', 'Array', 'String', 'Function object', 'C', 'Easy', 'String is one of JavaScript''s primitive types.'),

-- Q45
('JavaScript', 'Which of the following is NOT a primitive type?', 'Boolean', 'Symbol', 'Object', 'BigInt', 'C', 'Easy', 'Objects are non-primitive values.'),

-- Q46
('JavaScript', 'Which primitive type represents a unique identifier?', 'Symbol', 'Identifier', 'Unique', 'Reference', 'A', 'Easy', 'Symbol creates unique primitive values, commonly used as unique property keys.'),

-- Q47
('JavaScript', 'Which primitive type supports arbitrarily large integers?', 'BigNumber', 'BigInt', 'LargeInt', 'Long', 'B', 'Easy', 'BigInt represents integers beyond the safe integer range of Number.'),

-- Q48
('JavaScript', 'Which syntax creates a BigInt literal?', '100L', 'BigInt(100) only', '100n', 'big 100', 'C', 'Easy', 'The n suffix creates a BigInt literal, such as 100n.'),

-- Q49
('JavaScript', 'Which value is a Boolean?', '"true"', 'true', '1', '"false"', 'B', 'Easy', 'true without quotes is a Boolean value.'),

-- Q50
('JavaScript', 'Which value is a string?', 'Hello', '"Hello"', 'true', '123', 'B', 'Easy', 'Text enclosed in quotes is a string.'),

-- Q51
('JavaScript', 'Which keyword is used to declare a traditional function?', 'function', 'def', 'func', 'method', 'A', 'Medium', 'JavaScript function declarations use the function keyword.'),

-- Q52
('JavaScript', 'What is a function?', 'A reusable block of code', 'A database', 'A CSS selector', 'A variable type only', 'A', 'Medium', 'A function is a reusable block of code designed to perform a task.'),

-- Q53
('JavaScript', 'What is a parameter?', 'A value returned by a function', 'A named input defined in a function', 'A loop', 'An error', 'B', 'Medium', 'Parameters are names in a function definition that receive arguments.'),

-- Q54
('JavaScript', 'What is an argument?', 'The function''s name', 'A value passed to a function', 'The return type', 'A loop counter', 'B', 'Medium', 'Arguments are the actual values supplied when calling a function.'),

-- Q55
('JavaScript', 'Which keyword sends a value back from a function?', 'send', 'return', 'output', 'back', 'B', 'Medium', 'return exits the function and optionally provides a value.'),

-- Q56
('JavaScript', 'What happens when a function reaches return?', 'It starts again', 'It exits the function', 'It creates an object', 'It pauses forever', 'B', 'Medium', 'A return statement terminates execution of the current function.'),

-- Q57
('JavaScript', 'What does a function return if it has no explicit return value?', 'null', 'false', 'undefined', '0', 'C', 'Medium', 'A function without an explicit returned value returns undefined.'),

-- Q58
('JavaScript', 'Which syntax is an arrow function?', 'function => ()', '() => {}', 'arrow() {}', '=> function()', 'B', 'Medium', '() => {} is valid arrow function syntax.'),

-- Q59
('JavaScript', 'Which is an arrow function with one parameter?', 'x -> x * 2', 'x => x * 2', 'function => x * 2', 'arrow(x) = x * 2', 'B', 'Medium', 'Arrow functions can omit parentheses around a single simple parameter.'),

-- Q60
('JavaScript', 'What is a callback function?', 'A function passed to another function', 'A function that cannot return', 'A CSS function', 'A function with no parameters', 'A', 'Medium', 'A callback is a function supplied to another function to be invoked later or during an operation.'),

-- Q61
('JavaScript', 'Which method can execute a callback once after a delay?', 'setTimeout()', 'delay()', 'wait()', 'setDelay()', 'A', 'Medium', 'setTimeout() schedules a callback to run after a specified delay.'),

-- Q62
('JavaScript', 'Which method repeatedly executes a callback at approximately regular intervals?', 'setInterval()', 'repeatTime()', 'loopTime()', 'setRepeat()', 'A', 'Medium', 'setInterval() repeatedly schedules a callback at a specified interval.'),

-- Q63
('JavaScript', 'Which function cancels a timeout?', 'clearTimeout()', 'stopTimeout()', 'cancelDelay()', 'removeTimeout()', 'A', 'Medium', 'clearTimeout() cancels a timeout created by setTimeout().'),

-- Q64
('JavaScript', 'Which function cancels an interval?', 'clearInterval()', 'stopInterval()', 'cancelInterval()', 'removeInterval()', 'A', 'Medium', 'clearInterval() cancels a recurring interval.'),

-- Q65
('JavaScript', 'What is a default parameter?', 'A parameter with a default value', 'A hidden parameter', 'A required parameter', 'A global parameter', 'A', 'Medium', 'Default parameters provide a value when the corresponding argument is undefined or omitted.'),

-- Q66
('JavaScript', 'Which syntax correctly defines a default parameter?', 'function f(x = 10) {}', 'function f(default x 10) {}', 'function f(x:10) {}', 'function f(x default 10) {}', 'A', 'Medium', 'x = 10 provides a default value for parameter x.'),

-- Q67
('JavaScript', 'What does a rest parameter do?', 'Collects remaining arguments into an array', 'Stops a function', 'Restarts a function', 'Creates a constant', 'A', 'Medium', 'A rest parameter collects remaining arguments into an array.'),

-- Q68
('JavaScript', 'Which syntax represents a rest parameter?', '...args', 'args...', '..args', 'rest args', 'A', 'Medium', 'Three dots before the parameter name create a rest parameter.'),

-- Q69
('JavaScript', 'What is recursion?', 'A function calling itself', 'A function calling CSS', 'A variable calling a loop', 'A function with no return', 'A', 'Medium', 'Recursion occurs when a function directly or indirectly calls itself.'),

-- Q70
('JavaScript', 'What is an immediately invoked function expression commonly called?', 'IIFE', 'IFEX', 'IMEF', 'IFE', 'A', 'Medium', 'IIFE stands for Immediately Invoked Function Expression.'),

-- Q71
('JavaScript', 'Which is a common IIFE syntax?', '(function(){})()', 'function()(){}', 'invoke function(){}', 'IIFE function()', 'A', 'Medium', 'Wrapping a function expression in parentheses and immediately calling it is a common IIFE pattern.'),

-- Q72
('JavaScript', 'What is function scope?', 'Variables accessible only within a function', 'Variables accessible only in CSS', 'Global browser scope', 'Database scope', 'A', 'Medium', 'Function-scoped variables are accessible within the function where they are declared.'),

-- Q73
('JavaScript', 'What is block scope?', 'Scope limited to a {} block', 'Scope limited to an HTML page', 'Scope limited to a class only', 'Global scope', 'A', 'Medium', 'let and const declarations are block-scoped.'),

-- Q74
('JavaScript', 'Which variables are block-scoped?', 'Only var', 'let and const', 'Only var and let', 'All variables equally', 'B', 'Medium', 'let and const are block-scoped.'),

-- Q75
('JavaScript', 'What is a higher-order function?', 'A function that takes or returns functions', 'A function with many lines', 'A built-in function only', 'A function with no arguments', 'A', 'Medium', 'Higher-order functions operate on functions by accepting them as arguments and/or returning them.'),

-- Q76
('JavaScript', 'What is a pure function?', 'A function that always modifies global state', 'A function with no predictable output', 'A function whose output depends only on its inputs and has no side effects', 'A function that uses this', 'C', 'Medium', 'A pure function produces the same output for the same inputs and does not cause observable side effects.'),

-- Q77
('JavaScript', 'Which function method transforms each array element?', 'map()', 'change()', 'transformEach()', 'modify()', 'A', 'Medium', 'map() creates a new array by applying a callback to each element.'),

-- Q78
('JavaScript', 'Which method selects elements matching a condition?', 'filter()', 'select()', 'choose()', 'where()', 'A', 'Medium', 'filter() returns a new array containing elements for which the callback returns a truthy value.'),

-- Q79
('JavaScript', 'Which method reduces an array to one accumulated value?', 'reduce()', 'compress()', 'combine()', 'foldArrayOnly()', 'A', 'Medium', 'reduce() applies a callback to accumulate a single result.'),

-- Q80
('JavaScript', 'Which method checks whether at least one array element satisfies a condition?', 'some()', 'any()', 'exists()', 'one()', 'A', 'Medium', 'some() returns true if at least one element passes the test.'),

-- Q81
('JavaScript', 'Which method checks whether every array element satisfies a condition?', 'all()', 'every()', 'each()', 'full()', 'B', 'Medium', 'every() returns true only if all elements pass the test.'),

-- Q82
('JavaScript', 'Which method finds the first matching array element?', 'find()', 'search()', 'first()', 'locate()', 'A', 'Medium', 'find() returns the first element for which the callback returns a truthy value.'),

-- Q83
('JavaScript', 'Which method finds the index of the first matching element?', 'findIndex()', 'indexSearch()', 'searchIndex()', 'locateIndex()', 'A', 'Medium', 'findIndex() returns the index of the first matching element, or -1 if none matches.'),

-- Q84
('JavaScript', 'What does a closure allow a function to do?', 'Access variables from its outer lexical scope', 'Delete all variables', 'Change HTML automatically', 'Create only global variables', 'A', 'Medium', 'A closure preserves access to variables from its surrounding lexical environment.'),

-- Q85
('JavaScript', 'Which concept describes a function retaining access to its outer scope?', 'Hoisting', 'Closure', 'Casting', 'Overloading', 'B', 'Medium', 'Closures allow functions to retain access to variables in their lexical environment.'),

-- Q86
('JavaScript', 'What is lexical scope?', 'Scope determined by where code is written', 'Scope determined by runtime clicks', 'Scope determined by CSS', 'Scope determined by database tables', 'A', 'Medium', 'JavaScript uses lexical scoping, meaning scope is determined by the structure of the source code.'),

-- Q87
('JavaScript', 'Which keyword refers to the current execution context in many JavaScript functions?', 'self', 'this', 'current', 'context', 'B', 'Medium', 'this refers to a value determined by how a function is called, with special rules for arrow functions.'),

-- Q88
('JavaScript', 'How does an arrow function handle this?', 'It creates its own dynamic this', 'It lexically inherits this', 'It always refers to window', 'It always refers to the function itself', 'B', 'Medium', 'Arrow functions do not have their own this; they capture it lexically from the surrounding scope.'),

-- Q89
('JavaScript', 'Which method explicitly sets this and calls a function immediately?', 'call()', 'applyLater()', 'bindNow()', 'invoke()', 'A', 'Medium', 'call() invokes a function with a specified this value and arguments.'),

-- Q90
('JavaScript', 'Which method invokes a function with arguments supplied as an array-like value?', 'call()', 'apply()', 'bind()', 'invoke()', 'B', 'Medium', 'apply() accepts the this value followed by an array-like arguments object.'),

-- Q91
('JavaScript', 'Which method creates a new function with a bound this value?', 'bind()', 'attach()', 'link()', 'connect()', 'A', 'Medium', 'bind() returns a new function with this and optionally initial arguments bound.'),

-- Q92
('JavaScript', 'Which feature allows functions to accept a variable number of arguments?', 'Rest parameters', 'Fixed parameters', 'Constants', 'Hoisting', 'A', 'Medium', 'Rest parameters collect multiple arguments into an array.'),

-- Q93
('JavaScript', 'What is an anonymous function?', 'A function without a name', 'A function without parameters', 'A global function', 'A function without a return', 'A', 'Medium', 'An anonymous function is a function expression without a function name.'),

-- Q94
('JavaScript', 'Which is a function expression?', 'function add() {}', 'const add = function() {};', 'if function add', 'function = add()', 'B', 'Medium', 'The function is created as an expression and assigned to add.'),

-- Q95
('JavaScript', 'Which is a function declaration?', 'const f = function() {};', 'function f() {}', 'let f = () => {};', 'f = function() {};', 'B', 'Medium', 'function f() {} is a function declaration.'),

-- Q96
('JavaScript', 'What does hoisting mean?', 'JavaScript moves all code physically to the top', 'Declarations are processed before execution according to JavaScript''s execution rules', 'Variables are deleted', 'Functions become asynchronous', 'B', 'Medium', 'Hoisting describes how declarations are handled during execution-context creation; it does not literally move source code.'),

-- Q97
('JavaScript', 'Function declarations are generally:', 'Not hoisted', 'Hoisted', 'Only hoisted in CSS', 'Hoisted after execution', 'B', 'Medium', 'Function declarations are available according to JavaScript''s hoisting rules before their source position is reached.'),

-- Q98
('JavaScript', 'What happens when a let variable is accessed before its declaration?', 'It returns undefined', 'It throws a ReferenceError', 'It returns null', 'It becomes global', 'B', 'Medium', 'let and const are in the Temporal Dead Zone until their declaration is evaluated.'),

-- Q99
('JavaScript', 'What is the Temporal Dead Zone?', 'Time when a variable is deleted', 'Period between entering scope and initialization of a let/const binding', 'Function execution delay', 'Browser loading period', 'B', 'Medium', 'Accessing a let or const binding during this period causes a ReferenceError.'),

-- Q100
('JavaScript', 'Which statement about const is correct?', 'Its binding can always be reassigned', 'Its binding cannot be reassigned', 'It is function-scoped', 'It can be used before declaration', 'B', 'Medium', 'A const binding must be initialized and cannot later be reassigned.'),

-- Q101
('JavaScript', 'Which syntax creates an array?', '{1,2,3}', '[1,2,3]', '(1,2,3)', '<1,2,3>', 'B', 'Medium', 'Square brackets are used for array literals.'),

-- Q102
('JavaScript', 'What is the index of the first array element?', '0', '1', '-1', 'first', 'A', 'Medium', 'JavaScript arrays use zero-based indexing.'),

-- Q103
('JavaScript', 'Which property returns the number of elements in an array?', 'size', 'count', 'length', 'total', 'C', 'Medium', 'The length property returns the array''s length.'),

-- Q104
('JavaScript', 'Which method adds an element to the end of an array?', 'push()', 'add()', 'append()', 'insertEnd()', 'A', 'Medium', 'push() adds one or more elements to the end.'),

-- Q105
('JavaScript', 'Which method removes the last element?', 'deleteLast()', 'pop()', 'remove()', 'shift()', 'B', 'Medium', 'pop() removes and returns the last element.'),

-- Q106
('JavaScript', 'Which method adds an element to the beginning?', 'push()', 'unshift()', 'prepend()', 'addFirst()', 'B', 'Medium', 'unshift() adds elements to the beginning of an array.'),

-- Q107
('JavaScript', 'Which method removes the first element?', 'shift()', 'popFirst()', 'removeFirst()', 'deleteStart()', 'A', 'Medium', 'shift() removes and returns the first element.'),

-- Q108
('JavaScript', 'Which method creates a shallow copy of part of an array?', 'slice()', 'splice()', 'copyPart()', 'subarray()', 'A', 'Medium', 'slice() returns a shallow copy without modifying the original array.'),

-- Q109
('JavaScript', 'Which method can add/remove elements at a specified array position?', 'splice()', 'slice()', 'modifyArray()', 'changeAt()', 'A', 'Medium', 'splice() can remove, replace, and insert array elements.'),

-- Q110
('JavaScript', 'Which method joins array elements into a string?', 'join()', 'combine()', 'merge()', 'stringifyArray()', 'A', 'Medium', 'join() concatenates array elements using a specified separator.'),

-- Q111
('JavaScript', 'Which method reverses an array in place?', 'reverse()', 'backward()', 'flip()', 'reverseCopy()', 'A', 'Medium', 'reverse() reverses the array and mutates it.'),

-- Q112
('JavaScript', 'Which method sorts array elements in place?', 'sort()', 'order()', 'arrange()', 'sequence()', 'A', 'Medium', 'sort() sorts an array in place.'),

-- Q113
('JavaScript', 'By default, JavaScript''s sort() compares elements as:', 'Numbers', 'Strings', 'Booleans', 'Objects only', 'B', 'Medium', 'Without a compare function, elements are converted to strings and sorted by UTF-16 code unit order.'),

-- Q114
('JavaScript', 'Which compare function sorts numbers ascending?', '(a,b) => a-b', '(a,b) => a+b', '(a,b) => a*b', '(a,b) => a/b', 'A', 'Medium', 'A negative result places a before b, so a-b gives ascending numeric order.'),

-- Q115
('JavaScript', 'Which method checks whether an array contains a value?', 'contains()', 'includes()', 'hasValue()', 'exists()', 'B', 'Medium', 'includes() checks whether an array contains a specified value.'),

-- Q116
('JavaScript', 'Which method returns the first index of a value?', 'indexOf()', 'findIndex() only', 'searchIndex()', 'positionOf()', 'A', 'Medium', 'indexOf() returns the first matching index or -1.'),

-- Q117
('JavaScript', 'Which method returns the last index of a value?', 'lastIndexOf()', 'indexLast()', 'findLastIndexOf()', 'reverseIndex()', 'A', 'Medium', 'lastIndexOf() searches from the end.'),

-- Q118
('JavaScript', 'Which method executes a callback for each array element?', 'forEach()', 'forEachElement()', 'each()', 'iterate()', 'A', 'Medium', 'forEach() invokes a callback once for each element.'),

-- Q119
('JavaScript', 'What does map() return?', 'The original array only', 'A new array', 'A number only', 'A Boolean only', 'B', 'Medium', 'map() returns a new array containing transformed values.'),

-- Q120
('JavaScript', 'What does filter() return?', 'A new array of matching elements', 'One element only', 'A string', 'An object always', 'A', 'Medium', 'filter() returns a new array containing elements that pass its test.'),

-- Q121
('JavaScript', 'What does reduce() usually return?', 'An accumulated result', 'Always an array', 'Always a string', 'Always Boolean', 'A', 'Medium', 'reduce() can produce any accumulated value depending on the reducer.'),

-- Q122
('JavaScript', 'Which syntax creates an object literal?', '[]', '{}', '()', '<>', 'B', 'Medium', 'Curly braces create object literals.'),

-- Q123
('JavaScript', 'Which syntax accesses an object property?', 'object.property', 'object->property', 'object::property', 'object/property', 'A', 'Medium', 'Dot notation accesses a property with a valid identifier name.'),

-- Q124
('JavaScript', 'Which notation allows a dynamic property name?', 'object[property]', 'object->property', 'object(property)', 'object::property', 'A', 'Medium', 'Bracket notation evaluates the expression inside the brackets.'),

-- Q125
('JavaScript', 'Which method returns an object''s property names?', 'Object.keys()', 'Object.names()', 'Object.properties()', 'keys()', 'A', 'Medium', 'Object.keys() returns an array of enumerable own string-keyed property names.'),

-- Q126
('JavaScript', 'Which method returns an object''s property values?', 'Object.values()', 'Object.data()', 'Object.items()', 'Object.contents()', 'A', 'Medium', 'Object.values() returns an array of enumerable own property values.'),

-- Q127
('JavaScript', 'Which method returns key-value pairs?', 'Object.entries()', 'Object.pairs()', 'Object.keyValues()', 'Object.dataPairs()', 'A', 'Medium', 'Object.entries() returns an array of [key, value] pairs.'),

-- Q128
('JavaScript', 'Which method creates an object from key-value pairs?', 'Object.fromEntries()', 'Object.createEntries()', 'Object.toObject()', 'Object.build()', 'A', 'Medium', 'Object.fromEntries() creates an object from an iterable of key-value pairs.'),

-- Q129
('JavaScript', 'Which operator checks whether a property exists in an object or its prototype chain?', 'exists', 'in', 'has', 'contains', 'B', 'Medium', 'The in operator checks property existence across the object and its prototype chain.'),

-- Q130
('JavaScript', 'Which method checks whether an object has an own property?', 'hasOwn()', 'hasPropertyOnly()', 'owns()', 'containsOwn()', 'A', 'Medium', 'Object.hasOwn() checks whether the specified property is an own property.'),

-- Q131
('JavaScript', 'What is destructuring?', 'Deleting an object', 'Extracting values from arrays/objects into variables', 'Sorting an object', 'Converting CSS', 'B', 'Medium', 'Destructuring syntax extracts values from arrays or properties from objects.'),

-- Q132
('JavaScript', 'Which syntax is array destructuring?', 'const {a,b} = arr', 'const [a,b] = arr', 'const (a,b) = arr', 'const <a,b> = arr', 'B', 'Medium', 'Square brackets are used for array destructuring.'),

-- Q133
('JavaScript', 'Which syntax is object destructuring?', 'const [name] = user', 'const {name} = user', 'const (name) = user', 'const <name> = user', 'B', 'Medium', 'Curly braces are used for object destructuring.'),

-- Q134
('JavaScript', 'What does the spread operator do in an array literal?', 'Expands iterable elements', 'Compresses elements', 'Sorts the array', 'Deletes duplicates automatically', 'A', 'Medium', 'The spread syntax ... expands iterable values into individual elements.'),

-- Q135
('JavaScript', 'Which syntax is the spread operator?', '...', '***', '..', '=>', 'A', 'Medium', 'Three dots represent spread/rest syntax depending on context.'),

-- Q136
('JavaScript', 'Which is a shallow copy of an array?', '[...arr]', 'arr.copyDeep()', 'arr.cloneAll()', 'copy(arr)', 'A', 'Medium', '[...arr] creates a new array but does not recursively clone nested objects.'),

-- Q137
('JavaScript', 'Which is a common shallow copy of an object?', '{...obj}', 'obj.cloneDeep()', 'copy.object(obj)', 'Object.deepCopy(obj)', 'A', 'Medium', 'Object spread creates a shallow copy of enumerable own properties.'),

-- Q138
('JavaScript', 'What does Array.isArray([]) return?', 'false', 'true', '"array"', 'undefined', 'B', 'Medium', 'Array.isArray() reliably checks whether a value is an array.'),

-- Q139
('JavaScript', 'Which statement about arrays is correct?', 'Arrays can contain multiple data types', 'Arrays can contain only numbers', 'Arrays can contain only strings', 'Arrays cannot contain objects', 'A', 'Medium', 'JavaScript arrays can contain values of different types.'),

-- Q140
('JavaScript', 'Which method removes duplicate values from an array using a common modern pattern?', '[...new Set(arr)]', 'arr.uniqueOnly()', 'arr.removeDuplicates()', 'Array.unique(arr)', 'A', 'Medium', 'A Set stores unique values, and spread converts it back to an array.'),

-- Q141
('JavaScript', 'What is a Set?', 'Collection of unique values', 'Collection of duplicate-only values', 'Function', 'String method', 'A', 'Medium', 'A Set stores unique values.'),

-- Q142
('JavaScript', 'Which method adds a value to a Set?', 'add()', 'push()', 'insert()', 'append()', 'A', 'Medium', 'Set.prototype.add() adds a value to a Set.'),

-- Q143
('JavaScript', 'Which method checks whether a Set contains a value?', 'contains()', 'has()', 'includes()', 'exists()', 'B', 'Medium', 'Set.prototype.has() checks whether a value exists in the Set.'),

-- Q144
('JavaScript', 'What is a Map?', 'Collection of key-value pairs', 'Array of strings only', 'CSS layout system', 'Function only', 'A', 'Medium', 'A Map stores key-value pairs and allows keys of any value type.'),

-- Q145
('JavaScript', 'Which method adds a key-value pair to a Map?', 'add()', 'set()', 'put()', 'insert()', 'B', 'Medium', 'Map.prototype.set(key, value) adds or updates a mapping.'),

-- Q146
('JavaScript', 'Which method retrieves a Map value?', 'get()', 'fetch()', 'read()', 'value()', 'A', 'Medium', 'Map.prototype.get(key) returns the value associated with a key.'),

-- Q147
('JavaScript', 'Which method checks whether a Map has a key?', 'has()', 'contains()', 'exists()', 'keyExists()', 'A', 'Medium', 'Map.prototype.has(key) checks for the presence of a key.'),

-- Q148
('JavaScript', 'Which collection preserves only unique values?', 'Array', 'Set', 'Object', 'String', 'B', 'Medium', 'A Set automatically keeps only unique values.'),

-- Q149
('JavaScript', 'Which collection is designed for key-value mappings?', 'Map', 'Set', 'Array', 'String', 'A', 'Medium', 'Map is specifically designed for key-value associations.'),

-- Q150
('JavaScript', 'Which object property can contain a function?', 'Method', 'Only variable', 'CSS property', 'Selector', 'A', 'Medium', 'A function stored as an object property is commonly called a method.'),

-- Q151
('JavaScript', 'What does DOM stand for?', 'Document Object Model', 'Data Object Management', 'Document Order Model', 'Digital Object Method', 'A', 'Hard', 'DOM stands for Document Object Model.'),

-- Q152
('JavaScript', 'What does the DOM represent?', 'The webpage as an object-based tree structure', 'Only CSS', 'Only JavaScript variables', 'A database', 'A', 'Hard', 'The DOM represents the document structure as objects that scripts can manipulate.'),

-- Q153
('JavaScript', 'Which method selects an element by ID?', 'getElementById()', 'getById()', 'selectId()', 'findId()', 'A', 'Hard', 'document.getElementById() returns the element with the specified ID.'),

-- Q154
('JavaScript', 'Which method selects the first element matching a CSS selector?', 'querySelector()', 'queryFirst()', 'selectOne()', 'getSelector()', 'A', 'Hard', 'querySelector() returns the first matching element.'),

-- Q155
('JavaScript', 'Which method selects all elements matching a CSS selector?', 'querySelectorAll()', 'selectAll()', 'getAllSelector()', 'queryEvery()', 'A', 'Hard', 'querySelectorAll() returns a static NodeList of matching elements.'),

-- Q156
('JavaScript', 'Which property changes the text content of an element?', 'textContent', 'textValueOnly', 'innerTextOnly', 'contentText', 'A', 'Hard', 'textContent gets or sets the text content of a node.'),

-- Q157
('JavaScript', 'Which property can parse and insert HTML markup?', 'innerHTML', 'htmlText', 'insertHTMLOnly', 'contentHTML', 'A', 'Hard', 'innerHTML gets or sets HTML markup inside an element.'),

-- Q158
('JavaScript', 'Which method creates a new HTML element?', 'createElement()', 'newElement()', 'makeElement()', 'addElement()', 'A', 'Hard', 'document.createElement() creates a new element node.'),

-- Q159
('JavaScript', 'Which method adds a node to the end of a parent?', 'appendChild()', 'addLast()', 'insertEnd()', 'pushChild()', 'A', 'Hard', 'appendChild() appends a node as the last child.'),

-- Q160
('JavaScript', 'Which method removes a child node?', 'removeChild()', 'deleteChild()', 'eraseChild()', 'dropChild()', 'A', 'Hard', 'removeChild() removes a specified child node.'),

-- Q161
('JavaScript', 'Which method adds an event listener?', 'addEventListener()', 'addEvent()', 'listenEvent()', 'onEvent()', 'A', 'Hard', 'addEventListener() registers a function to respond to an event.'),

-- Q162
('JavaScript', 'Which event occurs when a user clicks an element?', 'press', 'click', 'tapOnly', 'select', 'B', 'Hard', 'The click event occurs when an element is clicked.'),

-- Q163
('JavaScript', 'Which event occurs when a form is submitted?', 'send', 'submit', 'formSubmitOnly', 'post', 'B', 'Hard', 'Forms fire a submit event when submitted.'),

-- Q164
('JavaScript', 'Which event occurs when a keyboard key is pressed?', 'keyboard', 'keydown', 'keypressOnly', 'keyhit', 'B', 'Hard', 'keydown fires when a key is pressed down.'),

-- Q165
('JavaScript', 'Which event occurs when a key is released?', 'keyup', 'keyrelease', 'keyoff', 'releasekey', 'A', 'Hard', 'keyup fires when a pressed key is released.'),

-- Q166
('JavaScript', 'Which event commonly fires when an input''s value changes and the user commits the change?', 'change', 'modify', 'updateOnly', 'valuechange', 'A', 'Hard', 'The change event is fired when a form control''s value is committed as changed.'),

-- Q167
('JavaScript', 'Which event commonly fires when an input receives focus?', 'focus', 'focused', 'enter', 'activate', 'A', 'Hard', 'focus occurs when an element receives focus.'),

-- Q168
('JavaScript', 'Which event occurs when an element loses focus?', 'blur', 'unfocus', 'lostfocus', 'exitfocus', 'A', 'Hard', 'blur fires when an element loses focus.'),

-- Q169
('JavaScript', 'Which object represents the browser window?', 'document', 'window', 'browser', 'screen', 'B', 'Hard', 'window represents the browser''s window/global context.'),

-- Q170
('JavaScript', 'Which object represents the HTML document?', 'page', 'document', 'html', 'dom', 'B', 'Hard', 'document represents the loaded HTML document.'),

-- Q171
('JavaScript', 'Which method prevents an event''s default browser action?', 'preventDefault()', 'stopDefault()', 'cancelAction()', 'preventAction()', 'A', 'Hard', 'preventDefault() cancels the default action associated with an event when cancelable.'),

-- Q172
('JavaScript', 'Which method stops an event from propagating further?', 'stopPropagation()', 'stopEvent()', 'preventBubble()', 'cancelPropagation()', 'A', 'Hard', 'stopPropagation() prevents the event from continuing through the propagation path.'),

-- Q173
('JavaScript', 'What is event bubbling?', 'Event travels from target toward ancestors', 'Event travels only to the browser', 'Event is deleted', 'Event never reaches the target', 'A', 'Hard', 'In bubbling, an event propagates from the target upward through its ancestors.'),

-- Q174
('JavaScript', 'What is event capturing?', 'Event travels from ancestors toward the target', 'Event is removed', 'Event runs only on target', 'Event runs twice automatically', 'A', 'Hard', 'Capturing is the phase where an event travels down the DOM tree toward the target.'),

-- Q175
('JavaScript', 'What is event delegation?', 'Handling events on an ancestor for matching descendants', 'Creating many duplicate listeners', 'Removing all events', 'Disabling events', 'A', 'Hard', 'Event delegation uses propagation to handle events for multiple descendant elements through a common ancestor.'),

-- Q176
('JavaScript', 'What is a Promise?', 'An object representing eventual completion or failure of an asynchronous operation', 'A CSS rule', 'A loop', 'A database', 'A', 'Hard', 'A Promise represents the eventual result of an asynchronous operation.'),

-- Q177
('JavaScript', 'Which states can a Promise have?', 'Start, Stop, End', 'Pending, Fulfilled, Rejected', 'Open, Closed, Waiting', 'True, False, Null', 'B', 'Hard', 'A Promise begins pending and then becomes fulfilled or rejected.'),

-- Q178
('JavaScript', 'Which method handles a fulfilled Promise?', 'then()', 'done()', 'success()', 'complete()', 'A', 'Hard', '.then() registers fulfillment and optionally rejection handlers.'),

-- Q179
('JavaScript', 'Which method handles a rejected Promise?', 'catch()', 'error()', 'reject()', 'handleError()', 'A', 'Hard', '.catch() handles rejected Promises.'),

-- Q180
('JavaScript', 'Which method runs after a Promise settles regardless of outcome?', 'finally()', 'always()', 'complete()', 'end()', 'A', 'Hard', '.finally() runs after a Promise is settled, whether fulfilled or rejected.'),

-- Q181
('JavaScript', 'Which keyword allows asynchronous functions to use await?', 'async', 'awaitable', 'promise', 'defer', 'A', 'Hard', 'An async function can use await within its body.'),

-- Q182
('JavaScript', 'What does await do?', 'Waits for a Promise settlement within an async function and produces its fulfillment value or throws on rejection', 'Stops the entire browser', 'Creates a Promise automatically in every context', 'Blocks all JavaScript execution', 'A', 'Hard', 'await pauses the async function''s execution until the awaited Promise settles; it does not block the JavaScript thread.'),

-- Q183
('JavaScript', 'What does an async function return?', 'Always a string', 'Always a Promise', 'Always undefined', 'Always an object literal', 'B', 'Hard', 'An async function always returns a Promise.'),

-- Q184
('JavaScript', 'Which API is commonly used to make HTTP requests?', 'fetch()', 'requestHTTP()', 'httpCall()', 'getURL()', 'A', 'Hard', 'The Fetch API provides fetch() for making network requests.'),

-- Q185
('JavaScript', 'What does fetch() return?', 'An array', 'A Promise', 'A string immediately', 'A DOM element', 'B', 'Hard', 'fetch() returns a Promise that fulfills with a Response object.'),

-- Q186
('JavaScript', 'Which method parses a JSON response body into JavaScript data?', 'response.json()', 'response.parse()', 'JSON.response()', 'response.toObject()', 'A', 'Hard', 'response.json() reads the response body and parses it as JSON.'),

-- Q187
('JavaScript', 'What does JSON stand for?', 'JavaScript Object Notation', 'Java Source Object Network', 'JavaScript Online Notation', 'JSON Object Name', 'A', 'Hard', 'JSON stands for JavaScript Object Notation.'),

-- Q188
('JavaScript', 'Which method converts a JavaScript value to a JSON string?', 'JSON.parse()', 'JSON.stringify()', 'JSON.convert()', 'JSON.toText()', 'B', 'Hard', 'JSON.stringify() serializes a JavaScript value into a JSON string.'),

-- Q189
('JavaScript', 'Which method converts JSON text into a JavaScript value?', 'JSON.parse()', 'JSON.read()', 'JSON.stringify()', 'JSON.decodeText()', 'A', 'Hard', 'JSON.parse() parses valid JSON text.'),

-- Q190
('JavaScript', 'What is a JavaScript module?', 'A reusable file/unit of code with import/export capabilities', 'A CSS selector', 'A database table', 'A browser window', 'A', 'Hard', 'ES modules provide a standard way to organize and share JavaScript code.'),

-- Q191
('JavaScript', 'Which keyword exports a declaration from an ES module?', 'export', 'send', 'share', 'module', 'A', 'Hard', 'export makes declarations available to other modules.'),

-- Q192
('JavaScript', 'Which keyword imports an ES module binding?', 'include', 'require-only', 'import', 'use', 'C', 'Hard', 'import is used to import bindings from ES modules.'),

-- Q193
('JavaScript', 'Which syntax creates a default export?', 'export default value', 'default export value', 'export main value', 'module.default value', 'A', 'Hard', 'export default defines the module''s default export.'),

-- Q194
('JavaScript', 'What is optional chaining?', 'A way to safely access properties/call methods when an intermediate value may be nullish', 'A loop', 'A Promise method', 'A sorting technique', 'A', 'Hard', 'Optional chaining ?. short-circuits when the left side is null or undefined.'),

-- Q195
('JavaScript', 'Which operator is the nullish coalescing operator?', '||', '??', '??= only', '?:', 'B', 'Hard', '?? uses the right-hand value only when the left-hand value is null or undefined.'),

-- Q196
('JavaScript', 'Which operator conditionally assigns only when the left side is nullish?', '??=', '||=', '?=', 'null=', 'A', 'Hard', '??= performs assignment only if the current value is null or undefined.'),

-- Q197
('JavaScript', 'Which statement handles exceptions?', 'try...catch', 'check...error', 'error...handle', 'test...catch', 'A', 'Hard', 'try...catch allows code to handle runtime exceptions.'),

-- Q198
('JavaScript', 'Which keyword manually throws an exception?', 'throw', 'error', 'raise', 'exception', 'A', 'Hard', 'The throw statement throws a user-defined exception.'),

-- Q199
('JavaScript', 'Which block executes whether or not an exception occurs?', 'always', 'finally', 'last', 'complete', 'B', 'Hard', 'A finally block normally executes after the try/catch processing.'),

-- Q200
('JavaScript', 'Which statement best describes modern JavaScript?', 'It is used only for styling', 'It supports programming, asynchronous operations, DOM manipulation, modules, and web application development', 'It is only a database language', 'It replaces HTML and CSS completely', 'B', 'Hard', 'Modern JavaScript supports application logic, browser APIs, asynchronous programming, modules, and much more.');

-- Verification
USE ai_interviewer;

SELECT COUNT(*) AS javascript_questions
FROM questions
WHERE skill = 'JavaScript';

SELECT COUNT(DISTINCT question) AS unique_javascript_questions
FROM questions
WHERE skill = 'JavaScript';

