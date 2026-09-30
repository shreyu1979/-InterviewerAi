USE ai_interviewer;

-- =========================================================
-- Python — 200 MCQs
-- Difficulty:
-- Q1–50   = Easy
-- Q51–150 = Medium
-- Q151–200 = Hard
-- =========================================================

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Python';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- =========================================================
-- Python Fundamentals — Q1–50
-- =========================================================

('Python', 'What is Python?', 'Database', 'Programming language', 'Operating system', 'Web browser', 'B', 'Easy', 'Python is a high-level, general-purpose programming language.'),

('Python', 'Who created Python?', 'James Gosling', 'Dennis Ritchie', 'Guido van Rossum', 'Bjarne Stroustrup', 'C', 'Easy', 'Guido van Rossum created Python.'),

('Python', 'Which extension is commonly used for Python files?', '.java', '.py', '.cpp', '.html', 'B', 'Easy', 'Python source files normally use the .py extension.'),

('Python', 'Which function displays output in Python?', 'display()', 'echo()', 'print()', 'show()', 'C', 'Easy', 'print() displays values on the console.'),

('Python', 'Which function reads input from the user?', 'read()', 'input()', 'scan()', 'get()', 'B', 'Easy', 'input() reads a line of user input.'),

('Python', 'What type does input() return by default?', 'Integer', 'Float', 'String', 'Boolean', 'C', 'Easy', 'User input is returned as a string unless converted.'),

('Python', 'Which symbol starts a single-line comment?', '//', '#', '<!--', '/*', 'B', 'Easy', 'Python uses # for single-line comments.'),

('Python', 'Python is:', 'Case-sensitive', 'Not case-sensitive', 'Case-sensitive only for numbers', 'Case-sensitive only in comments', 'A', 'Easy', 'Python distinguishes between uppercase and lowercase identifiers.'),

('Python', 'Which is a valid Python variable?', '2name', 'first-name', 'first_name', 'class', 'C', 'Easy', 'Underscores can be used in valid identifiers.'),

('Python', 'Which word is a Python keyword?', 'value', 'number', 'if', 'data', 'C', 'Easy', 'if is a reserved Python keyword.'),

('Python', 'Which function returns the type of an object?', 'datatype()', 'type()', 'typeof()', 'kind()', 'B', 'Easy', 'type() returns an object''s type.'),

('Python', 'What is the result of type(10)?', 'str', 'float', 'int', 'bool', 'C', 'Easy', '10 is an integer.'),

('Python', 'What is the type of 10.5?', 'int', 'float', 'str', 'double', 'B', 'Easy', 'Decimal numbers are represented by float.'),

('Python', 'Which represents a string?', '123', '10.5', '"Hello"', 'True', 'C', 'Easy', 'Text enclosed in quotes is a string.'),

('Python', 'Which is a Boolean value?', 'yes', 'true', 'True', '"True"', 'C', 'Easy', 'Python Boolean literals are True and False.'),

('Python', 'Which operator performs addition?', '+', '&', '.', '=>', 'A', 'Easy', '+ adds numbers and can concatenate strings.'),

('Python', 'Which operator performs subtraction?', '+', '-', '*', '%', 'B', 'Easy', '- performs subtraction.'),

('Python', 'Which operator performs multiplication?', '*', 'x', '#', '^', 'A', 'Easy', '* performs multiplication.'),

('Python', 'Which operator performs normal division?', '/', '//', '%', '**', 'A', 'Easy', '/ returns division as a floating-point result.'),

('Python', 'Which operator performs floor division?', '/', '//', '%', '**', 'B', 'Easy', '// performs floor division.'),

('Python', 'Which operator returns the remainder?', '/', '//', '%', '**', 'C', 'Easy', '% returns the remainder of division.'),

('Python', 'Which operator performs exponentiation?', '^', '**', '^^', '//', 'B', 'Easy', '** raises one number to the power of another.'),

('Python', 'What is 2 ** 3?', '5', '6', '8', '9', 'C', 'Easy', '2 raised to the power of 3 equals 8.'),

('Python', 'What is 10 // 3?', '3', '3.33', '1', '4', 'A', 'Easy', 'Floor division gives 3.'),

('Python', 'What is 10 % 3?', '0', '1', '2', '3', 'B', 'Easy', '10 divided by 3 leaves remainder 1.'),

('Python', 'Which operator checks equality?', '=', '==', '===', '!=', 'B', 'Easy', '== compares values for equality.'),

('Python', 'What does = mean in Python?', 'Equality comparison', 'Assignment', 'Not equal', 'Greater than', 'B', 'Easy', '= assigns a value to a variable.'),

('Python', 'Which operator means not equal?', '<>', '!=', '!==', 'not=', 'B', 'Easy', '!= checks whether two values are different.'),

('Python', 'Which operator means greater than?', '>', '<', '>=', '=>', 'A', 'Easy', '> compares whether the left value is greater.'),

('Python', 'Which operator means less than or equal to?', '=<', '<=', '<<', '=<', 'B', 'Easy', '<= means less than or equal to.'),

('Python', 'Which logical operator means AND?', '&&', 'and', 'AND', '&and', 'B', 'Easy', 'Python uses the keyword and.'),

('Python', 'Which logical operator means OR?', '||', 'or', 'OR', '|or', 'B', 'Easy', 'Python uses the keyword or.'),

('Python', 'Which logical operator means NOT?', '!', 'not', 'NOT', '~not', 'B', 'Easy', 'Python uses not for logical negation.'),

('Python', 'What is indentation used for in Python?', 'Defining code blocks', 'Naming variables', 'Creating comments', 'Importing modules', 'A', 'Easy', 'Indentation defines blocks such as functions, loops, and conditions.'),

('Python', 'Which statement is used for conditional execution?', 'if', 'for', 'def', 'import', 'A', 'Easy', 'if executes code when a condition is true.'),

('Python', 'Which keyword provides an alternative condition?', 'otherwise', 'elif', 'else if', 'elseif', 'B', 'Easy', 'Python uses elif for additional conditions.'),

('Python', 'Which keyword handles the remaining case?', 'otherwise', 'else', 'default', 'finally', 'B', 'Easy', 'else executes when previous conditions are false.'),

('Python', 'Which loop is commonly used to iterate over a sequence?', 'for', 'repeat', 'loop', 'iterate', 'A', 'Easy', 'Python''s for loop iterates over iterable objects.'),

('Python', 'Which loop repeats while a condition is true?', 'for', 'while', 'until', 'repeat', 'B', 'Easy', 'while continues while its condition is true.'),

('Python', 'Which keyword exits a loop?', 'stop', 'exit', 'break', 'end', 'C', 'Easy', 'break terminates the nearest loop.'),

('Python', 'Which keyword skips the current loop iteration?', 'skip', 'continue', 'pass', 'next', 'B', 'Easy', 'continue moves to the next iteration.'),

('Python', 'Which keyword does nothing as a placeholder?', 'nothing', 'skip', 'pass', 'empty', 'C', 'Easy', 'pass is a null statement.'),

('Python', 'Which function generates a sequence of numbers?', 'numbers()', 'range()', 'sequence()', 'count()', 'B', 'Easy', 'range() generates an arithmetic sequence of integers.'),

('Python', 'What does range(5) produce conceptually?', '1 to 5', '0 to 5', '0 to 4', '1 to 4', 'C', 'Easy', 'The stop value is excluded.'),

('Python', 'What is len() used for?', 'Finding length/number of items', 'Converting data', 'Sorting data', 'Printing data', 'A', 'Easy', 'len() returns the number of items in supported objects.'),

('Python', 'What does abs(-10) return?', '-10', '0', '10', '1', 'C', 'Easy', 'abs() returns the absolute value.'),

('Python', 'Which function converts a string to an integer?', 'integer()', 'int()', 'number()', 'toInt()', 'B', 'Easy', 'int() converts compatible values to integers.'),

('Python', 'Which function converts a value to a floating-point number?', 'float()', 'decimal()', 'double()', 'real()', 'A', 'Easy', 'float() creates a floating-point value.'),

('Python', 'Which function converts a value to a string?', 'text()', 'string()', 'str()', 'toString()', 'C', 'Easy', 'str() converts a value to its string representation.'),

('Python', 'Which function converts a value to Boolean?', 'boolean()', 'bool()', 'toBool()', 'logic()', 'B', 'Easy', 'bool() returns the Boolean interpretation of a value.'),

-- =========================================================
-- Python Data Types & Collections — Q51–100
-- =========================================================

('Python', 'Which collection is ordered and mutable?', 'Tuple', 'List', 'Set', 'Frozen set', 'B', 'Medium', 'Lists preserve order and can be modified.'),

('Python', 'Which collection is immutable and ordered?', 'List', 'Set', 'Tuple', 'Dictionary', 'C', 'Medium', 'Tuples are immutable sequences.'),

('Python', 'Which collection stores unique elements?', 'List', 'Tuple', 'Set', 'String', 'C', 'Medium', 'Sets contain unique elements.'),

('Python', 'Which data structure stores key-value pairs?', 'List', 'Tuple', 'Set', 'Dictionary', 'D', 'Medium', 'Dictionaries map keys to values.'),

('Python', 'Which brackets create a list?', '{}', '()', '[]', '<>', 'C', 'Medium', 'Lists use square brackets.'),

('Python', 'Which brackets commonly create a tuple?', '()', '[]', '{}', '<>', 'A', 'Medium', 'Parentheses are commonly used for tuples.'),

('Python', 'Which syntax creates a set?', '{1, 2, 3}', '[1, 2, 3]', '(1, 2, 3)', '<1, 2, 3>', 'A', 'Medium', 'Curly braces with comma-separated values create a set.'),

('Python', 'How do you create an empty set?', '{}', '[]', 'set()', 'emptyset()', 'C', 'Medium', '{} creates an empty dictionary, so set() is used for an empty set.'),

('Python', 'What does {} create?', 'Empty list', 'Empty set', 'Empty dictionary', 'Empty tuple', 'C', 'Medium', '{} represents an empty dictionary.'),

('Python', 'Can a list contain duplicate values?', 'Yes', 'No', 'Only integers', 'Only strings', 'A', 'Medium', 'Lists allow duplicates.'),

('Python', 'Can a set contain duplicate values?', 'Yes', 'No', 'Only strings', 'Only numbers', 'B', 'Medium', 'Sets automatically maintain unique elements.'),

('Python', 'Can dictionary keys generally be mutable objects like lists?', 'Yes', 'No', 'Only when empty', 'Only in Python 2', 'B', 'Medium', 'Dictionary keys must be hashable; lists are not hashable.'),

('Python', 'Is list indexing usually zero-based?', 'Yes', 'No', 'Only for strings', 'Only for tuples', 'A', 'Medium', 'The first element has index 0.'),

('Python', 'For a=[10,20,30], what is a[0]?', '10', '20', '30', 'Error', 'A', 'Medium', 'Index 0 refers to the first element.'),

('Python', 'What does a[-1] return for a non-empty list?', 'First element', 'Last element', 'Second element', 'Error', 'B', 'Medium', 'Negative indexing counts from the end.'),

('Python', 'What does slicing a[1:4] mean?', 'Index 1 through 4 inclusive', 'Index 1 through 3', 'Index 0 through 4', 'Only index 4', 'B', 'Medium', 'The start is included and the stop is excluded.'),

('Python', 'Which method adds an item to the end of a list?', 'add()', 'append()', 'insertEnd()', 'push()', 'B', 'Medium', 'append() adds one item at the end.'),

('Python', 'Which method inserts an item at a specific index?', 'insert()', 'addAt()', 'place()', 'pushAt()', 'A', 'Medium', 'insert(index, value) inserts at the specified position.'),

('Python', 'Which method removes and returns the last list item by default?', 'delete()', 'remove()', 'pop()', 'discard()', 'C', 'Medium', 'pop() removes and returns an item, defaulting to the last.'),

('Python', 'Which list method removes the first matching value?', 'remove()', 'delete()', 'discard()', 'erase()', 'A', 'Medium', 'remove(value) removes the first matching item.'),

('Python', 'Which method sorts a list in place?', 'sort()', 'sorted()', 'order()', 'arrange()', 'A', 'Medium', 'list.sort() modifies the list itself.'),

('Python', 'What does sorted() return?', 'Same object always', 'A new sorted list', 'Tuple only', 'Set only', 'B', 'Medium', 'sorted() returns a new list containing sorted items.'),

('Python', 'Which method reverses a list in place?', 'reverse()', 'reversed()', 'flip()', 'backward()', 'A', 'Medium', 'reverse() changes the list order in place.'),

('Python', 'What does reversed() return?', 'A reverse iterator', 'A sorted list', 'A set', 'A dictionary', 'A', 'Medium', 'reversed() returns an iterator that traverses in reverse order.'),

('Python', 'Which method counts occurrences of a value in a list?', 'count()', 'frequency()', 'findall()', 'total()', 'A', 'Medium', 'count(value) returns how many times the value occurs.'),

('Python', 'Which method finds the index of the first matching value?', 'find()', 'index()', 'position()', 'locate()', 'B', 'Medium', 'index(value) returns the first matching index.'),

('Python', 'What does list.extend() do?', 'Adds elements from an iterable', 'Removes elements', 'Sorts elements', 'Reverses elements', 'A', 'Medium', 'extend() adds each item from another iterable.'),

('Python', 'Which operation concatenates two lists?', '+', '*', '%', '&', 'A', 'Medium', '+ combines lists.'),

('Python', 'What does [1,2] * 2 produce?', '[2,4]', '[1,2,1,2]', '[1,1,2,2]', 'Error', 'B', 'Medium', 'List multiplication repeats the sequence.'),

('Python', 'Are tuples mutable?', 'Yes', 'No', 'Only numeric tuples', 'Only empty tuples', 'B', 'Medium', 'Tuple contents cannot be changed after creation.'),

('Python', 'Which method adds one element to a set?', 'append()', 'add()', 'insert()', 'push()', 'B', 'Medium', 'Sets use add().' ),

('Python', 'Which method removes an element from a set without raising an error if absent?', 'remove()', 'discard()', 'delete()', 'erase()', 'B', 'Medium', 'discard() does nothing if the item is absent.'),

('Python', 'What happens if set.remove(x) does not find x?', 'Returns None', 'Raises KeyError', 'Adds x', 'Clears set', 'B', 'Medium', 'remove() raises KeyError when the element is absent.'),

('Python', 'Which operator represents set union?', '|', '&', '-', '^', 'A', 'Medium', '| performs set union.'),

('Python', 'Which operator represents set intersection?', '|', '&', '^', '%', 'B', 'Medium', '& returns elements common to both sets.'),

('Python', 'Which operator represents set difference?', '-', '+', '/', '*', 'A', 'Medium', 'A - B returns elements in A but not B.'),

('Python', 'Which method returns dictionary keys?', 'keys()', 'keyList()', 'getKeys()', 'allKeys()', 'A', 'Medium', 'dict.keys() returns a view of the keys.'),

('Python', 'Which method returns dictionary values?', 'values()', 'items()', 'data()', 'getValues()', 'A', 'Medium', 'dict.values() returns a view of values.'),

('Python', 'Which method returns key-value pairs?', 'pairs()', 'items()', 'entriesOnly()', 'keyvalues()', 'B', 'Medium', 'dict.items() returns key-value pairs.'),

('Python', 'Which method safely retrieves a dictionary value?', 'get()', 'fetch()', 'read()', 'value()', 'A', 'Medium', 'get() can return a default instead of raising KeyError.'),

('Python', 'What does d.get("x", 0) return if "x" is absent?', 'Error', '"x"', '0', 'None always', 'C', 'Medium', 'The second argument is the default value.'),

('Python', 'Can dictionary values be duplicate?', 'Yes', 'No', 'Only strings', 'Only integers', 'A', 'Medium', 'Dictionary values do not need to be unique.'),

('Python', 'Are dictionary keys unique?', 'Yes', 'No', 'Only in Python 2', 'Only numeric keys', 'A', 'Medium', 'Each key identifies one dictionary entry.'),

('Python', 'What happens when assigning an existing dictionary key?', 'New key is created', 'Existing value is replaced', 'Dictionary is cleared', 'Error always', 'B', 'Medium', 'Assigning an existing key updates its value.'),

('Python', 'What is a string?', 'Sequence of characters', 'Numeric-only collection', 'Database', 'Boolean object only', 'A', 'Medium', 'Strings represent text as sequences of characters.'),

('Python', 'Are Python strings mutable?', 'Yes', 'No', 'Only ASCII strings', 'Only empty strings', 'B', 'Medium', 'Strings are immutable.'),

('Python', 'Which method converts text to lowercase?', 'lower()', 'small()', 'down()', 'lowercase()', 'A', 'Medium', 'lower() returns a lowercase version.'),

('Python', 'Which method converts text to uppercase?', 'upper()', 'capital()', 'up()', 'uppercaseOnly()', 'A', 'Medium', 'upper() returns an uppercase version.'),

('Python', 'Which method removes whitespace from both ends?', 'trim()', 'strip()', 'clean()', 'removeSpace()', 'B', 'Medium', 'strip() removes leading and trailing whitespace.'),

('Python', 'Which method splits a string into a list?', 'split()', 'divide()', 'break()', 'separate()', 'A', 'Medium', 'split() divides a string based on a separator.'),

-- =========================================================
-- Python Functions, Modules & OOP — Q101–150
-- =========================================================

('Python', 'Which keyword defines a function?', 'function', 'def', 'func', 'define', 'B', 'Medium', 'Python functions are defined using def.'),

('Python', 'What is a function?', 'Reusable block of code', 'Database table', 'Variable type', 'Comment', 'A', 'Medium', 'Functions package reusable logic.'),

('Python', 'Which keyword returns a value from a function?', 'send', 'return', 'output', 'yieldValue', 'B', 'Medium', 'return sends a value back to the caller.'),

('Python', 'What does a function return if no return value is specified?', '0', 'False', 'None', 'Empty string', 'C', 'Medium', 'Functions implicitly return None.'),

('Python', 'What is a parameter?', 'Variable in a function definition', 'Function output only', 'Loop counter only', 'Module name', 'A', 'Medium', 'Parameters receive values passed to a function.'),

('Python', 'What is an argument?', 'Value passed to a function', 'Function definition', 'Return keyword', 'Module', 'A', 'Medium', 'Arguments are actual values supplied during a function call.'),

('Python', 'Which is a default parameter?', 'def f(x=10):', 'def f(=10,x):', 'function f(x=10)', 'f default x', 'A', 'Medium', 'x=10 provides a default value.'),

('Python', 'What are *args used for?', 'Variable number of positional arguments', 'Variable names only', 'Keyword-only arguments only', 'Exceptions', 'A', 'Medium', '*args collects extra positional arguments into a tuple.'),

('Python', 'What are **kwargs used for?', 'Variable number of keyword arguments', 'Positional arguments only', 'Comments', 'Classes', 'A', 'Medium', '**kwargs collects extra keyword arguments into a dictionary.'),

('Python', 'What is a lambda?', 'Anonymous function expression', 'Class', 'Module', 'Exception', 'A', 'Medium', 'Lambda expressions create small anonymous functions.'),

('Python', 'Which is a valid lambda?', 'lambda x: x * 2', 'lambda(x) {x*2}', 'function lambda x', 'def lambda(x)', 'A', 'Medium', 'Python lambda syntax is lambda parameters: expression.'),

('Python', 'Which function applies a function to every item of an iterable?', 'map()', 'apply()', 'each()', 'transformOnly()', 'A', 'Medium', 'map() applies a function to iterable elements.'),

('Python', 'Which function selects items based on a condition?', 'filter()', 'selectOnly()', 'choose()', 'where()', 'A', 'Medium', 'filter() keeps items for which the predicate is true.'),

('Python', 'Which function combines iterable values cumulatively?', 'reduce()', 'combineAll()', 'sumAllOnly()', 'aggregate()', 'A', 'Medium', 'functools.reduce() performs cumulative reduction.'),

('Python', 'Which module provides reduce()?', 'math', 'functools', 'os', 'sys', 'B', 'Medium', 'reduce() is available from functools.'),

('Python', 'What is a module?', 'Python file containing reusable code', 'Loop', 'Variable', 'Exception only', 'A', 'Medium', 'A module is generally a Python file that can be imported.'),

('Python', 'Which keyword imports a module?', 'include', 'import', 'using', 'require', 'B', 'Medium', 'Python uses import.'),

('Python', 'Which statement imports only sqrt from math?', 'import sqrt from math', 'from math import sqrt', 'include math.sqrt', 'using math.sqrt', 'B', 'Medium', 'from module import name imports a specific name.'),

('Python', 'Which alias is commonly used for NumPy?', 'import numpy as np', 'import numpy as num', 'numpy alias n', 'use numpy np', 'A', 'Medium', 'np is the conventional NumPy alias.'),

('Python', 'Which built-in module handles operating-system functionality?', 'os', 'system', 'operating', 'machine', 'A', 'Medium', 'The os module provides operating-system interfaces.'),

('Python', 'Which module provides command-line arguments and interpreter-related functionality?', 'sys', 'cmdline', 'terminal', 'console', 'A', 'Medium', 'The sys module provides access to interpreter and system parameters.'),

('Python', 'Which module is commonly used for mathematical functions?', 'math', 'number', 'calc', 'numericOnly', 'A', 'Medium', 'math provides common mathematical functions and constants.'),

('Python', 'What is a package?', 'Collection of Python modules', 'Single variable', 'Loop', 'Exception', 'A', 'Medium', 'Packages organize related Python modules.'),

('Python', 'What does pip commonly manage?', 'Python packages', 'Operating systems', 'HTML tags', 'SQL tables', 'A', 'Medium', 'pip is a package installer for Python.'),

('Python', 'Which command installs a package?', 'pip install package', 'python get package', 'package install', 'pip add-only', 'A', 'Medium', 'pip install installs Python packages.'),

('Python', 'What is a virtual environment?', 'Isolated Python environment for a project', 'Cloud server', 'Database', 'Python class', 'A', 'Medium', 'Virtual environments isolate project dependencies.'),

('Python', 'Which standard module can create virtual environments?', 'venv', 'virtual', 'envpy', 'isolate', 'A', 'Medium', 'Python includes the venv module.'),

('Python', 'What is OOP?', 'Object-Oriented Programming', 'Online Operating Protocol', 'Object Output Program', 'Open Object Package', 'A', 'Medium', 'OOP is a programming paradigm based on objects and classes.'),

('Python', 'Which keyword defines a class?', 'class', 'object', 'struct', 'define', 'A', 'Medium', 'Python classes are defined with class.'),

('Python', 'What is an object?', 'Instance of a class', 'Function keyword', 'Module only', 'Loop', 'A', 'Medium', 'An object is an instance created from a class.'),

('Python', 'Which method is commonly used as a constructor initializer?', '__init__()', '__create__()', 'constructor()', 'initClass()', 'A', 'Medium', '__init__() initializes a newly created instance.'),

('Python', 'What does self usually refer to?', 'Current instance', 'Parent class only', 'Module', 'Global variable', 'A', 'Medium', 'self refers to the current object instance.'),

('Python', 'What is inheritance?', 'Creating a class based on another class', 'Copying a variable', 'Importing a module', 'Creating a loop', 'A', 'Medium', 'Inheritance allows a class to derive behavior from another class.'),

('Python', 'What is polymorphism?', 'Same interface supporting different implementations', 'Creating variables', 'Importing packages', 'Hiding comments', 'A', 'Medium', 'Polymorphism allows different object types to respond to a common interface.'),

('Python', 'What is encapsulation?', 'Bundling data and methods with controlled access', 'Creating loops', 'Importing modules', 'Sorting lists', 'A', 'Medium', 'Encapsulation organizes data and behavior and can restrict access.'),

('Python', 'What is abstraction?', 'Hiding implementation details behind an interface', 'Copying data', 'Creating lists', 'Sorting dictionaries', 'A', 'Medium', 'Abstraction exposes essential behavior while hiding unnecessary implementation details.'),

('Python', 'Which decorator is commonly used for a static method?', '@staticmethod', '@static', '@methodstatic', '@staticmethodOnly', 'A', 'Medium', '@staticmethod defines a method without an implicit instance or class argument.'),

('Python', 'Which decorator creates a class method?', '@classmethod', '@classmethodOnly', '@class', '@methodclass', 'A', 'Medium', '@classmethod receives the class as its first argument.'),

('Python', 'What is method overriding?', 'Subclass providing a different implementation of an inherited method', 'Deleting a method', 'Importing a method', 'Calling a method twice', 'A', 'Medium', 'A subclass can redefine an inherited method.'),

('Python', 'Which function checks whether an object is an instance of a class?', 'isinstance()', 'instance()', 'typecheck()', 'checktype()', 'A', 'Medium', 'isinstance(obj, Class) checks instance compatibility.'),

('Python', 'Which function checks subclass relationships?', 'issubclass()', 'subclass()', 'is_child()', 'checkclass()', 'A', 'Medium', 'issubclass() checks whether one class derives from another.'),

('Python', 'What is a docstring?', 'Documentation string associated with code', 'Database string', 'Encrypted string', 'Input string only', 'A', 'Medium', 'Docstrings document modules, classes, functions, and methods.'),

('Python', 'Which syntax commonly creates a docstring?', 'Triple-quoted string', '// comment', '#doc only', 'XML tag', 'A', 'Medium', 'Triple-quoted strings are commonly used as docstrings.'),

('Python', 'What does __name__ commonly contain?', 'Special module name attribute', 'User''s name', 'Class count', 'File extension', 'A', 'Medium', '__name__ identifies the current module''s name.'),

('Python', 'What is the purpose of if __name__ == "__main__":?', 'Run code when the file is executed directly', 'Create a class', 'Import every module', 'Stop all loops', 'A', 'Medium', 'The block runs when the file is used as the main script.'),

('Python', 'What is recursion?', 'Function calling itself', 'Loop using only for', 'Importing itself always', 'Creating objects only', 'A', 'Medium', 'Recursion occurs when a function calls itself.'),

('Python', 'What must recursion generally have to stop?', 'Base case', 'Import statement', 'Class', 'Lambda', 'A', 'Medium', 'A base case prevents infinite recursive calls.'),

('Python', 'What is variable scope?', 'Region where a variable is accessible', 'Variable''s data type', 'Variable''s memory size only', 'Variable''s name length', 'A', 'Medium', 'Scope determines where an identifier can be referenced.'),

('Python', 'Which keyword declares a global variable inside a function?', 'global', 'public', 'extern', 'globalvar', 'A', 'Medium', 'global allows assignment to a global variable from a function.'),

('Python', 'Which keyword refers to a variable in an enclosing non-global scope?', 'outer', 'nonlocal', 'enclosing', 'parent', 'B', 'Medium', 'nonlocal is used with variables in an enclosing function scope.'),

-- =========================================================
-- Python Exceptions, Files, Libraries & Advanced Concepts — Q151–200
-- =========================================================

('Python', 'What is an exception?', 'Runtime event indicating an error or unusual condition', 'Variable type', 'Module', 'Loop', 'A', 'Hard', 'Exceptions signal errors or exceptional conditions during execution.'),

('Python', 'Which block handles exceptions?', 'try-except', 'check-catch', 'error-handle', 'catch-error', 'A', 'Hard', 'Python uses try and except for exception handling.'),

('Python', 'Which keyword starts exception-handling code?', 'try', 'check', 'catch', 'handle', 'A', 'Hard', 'Potentially failing code is placed in a try block.'),

('Python', 'Which keyword handles an exception?', 'catch', 'except', 'error', 'handle', 'B', 'Hard', 'Python uses except.'),

('Python', 'Which block runs whether an exception occurs or not?', 'always', 'finally', 'last', 'complete', 'B', 'Hard', 'finally executes after the try/except processing.'),

('Python', 'Which block executes only when no exception occurs?', 'else', 'success', 'then', 'finally', 'A', 'Hard', 'A try statement can have an else block that runs if no exception occurs.'),

('Python', 'Which keyword manually raises an exception?', 'throw', 'raise', 'error', 'except', 'B', 'Hard', 'raise explicitly raises an exception.'),

('Python', 'Which exception occurs when dividing by zero?', 'ValueError', 'ZeroDivisionError', 'ArithmeticErrorOnly', 'DivideError', 'B', 'Hard', 'Division by zero raises ZeroDivisionError for numeric division.'),

('Python', 'Which exception commonly occurs when converting invalid text to an integer?', 'TypeError', 'ValueError', 'IndexError', 'KeyError', 'B', 'Hard', 'Invalid conversion values commonly raise ValueError.'),

('Python', 'Which exception occurs when accessing an invalid list index?', 'IndexError', 'KeyError', 'ValueError', 'ListError', 'A', 'Hard', 'An out-of-range sequence index raises IndexError.'),

('Python', 'Which exception occurs when a dictionary key is missing?', 'IndexError', 'KeyError', 'ValueError', 'DictionaryError', 'B', 'Hard', 'Direct access to a missing dictionary key raises KeyError.'),

('Python', 'Which exception occurs for an operation on an inappropriate type?', 'TypeError', 'ValueError', 'NameError', 'IndexError', 'A', 'Hard', 'TypeError indicates an inappropriate operation for an object''s type.'),

('Python', 'Which exception occurs when an undefined variable is referenced?', 'NameError', 'VariableError', 'ReferenceError', 'UndefinedError', 'A', 'Hard', 'Python raises NameError when a name cannot be found.'),

('Python', 'What is file handling?', 'Reading and writing files', 'Creating classes only', 'Managing loops', 'Installing packages', 'A', 'Hard', 'File handling allows programs to work with stored data.'),

('Python', 'Which function opens a file?', 'file()', 'open()', 'readFile()', 'load()', 'B', 'Hard', 'open() creates a file object.'),

('Python', 'Which mode opens a file for reading?', 'r', 'w', 'a', 'x', 'A', 'Hard', 'r means read mode.'),

('Python', 'Which mode opens a file for writing and can overwrite existing content?', 'r', 'w', 'a', 'x', 'B', 'Hard', 'w writes to a file, truncating an existing file.'),

('Python', 'Which mode appends data?', 'r', 'w', 'a', 'x', 'C', 'Hard', 'a opens the file for appending.'),

('Python', 'Which mode creates a new file and fails if it already exists?', 'x', 'n', 'new', 'create', 'A', 'Hard', 'x is exclusive creation mode.'),

('Python', 'Which method reads the entire file content?', 'read()', 'readAll()', 'get()', 'fetch()', 'A', 'Hard', 'read() reads file content.'),

('Python', 'Which method reads one line?', 'readline()', 'line()', 'readOne()', 'getLine()', 'A', 'Hard', 'readline() reads the next line.'),

('Python', 'Which method writes data to a file?', 'write()', 'put()', 'save()', 'insert()', 'A', 'Hard', 'write() writes a string to the file.'),

('Python', 'Why use with open(...) as f:?', 'Automatic resource management', 'Faster loops always', 'Automatic encryption', 'Automatic database creation', 'A', 'Hard', 'The context manager closes the file when the block finishes.'),

('Python', 'What is JSON?', 'JavaScript Object Notation', 'Java Source Object Network', 'JavaScript Online Node', 'JSON Object Network', 'A', 'Hard', 'JSON is a lightweight data-interchange format.'),

('Python', 'Which module handles JSON in Python?', 'json', 'jsonlib', 'datajson', 'pyjsononly', 'A', 'Hard', 'Python''s standard library includes the json module.'),

('Python', 'Which function converts a Python object to a JSON string?', 'json.dumps()', 'json.loads()', 'json.toString()', 'json.encodeObject()', 'A', 'Hard', 'dumps() serializes a Python object to JSON text.'),

('Python', 'Which function parses JSON text into Python objects?', 'json.loads()', 'json.dumps()', 'json.parseText()', 'json.decodeObject()', 'A', 'Hard', 'loads() deserializes JSON from a string.'),

('Python', 'What is an iterator?', 'Object that produces values one at a time', 'Database', 'Class only', 'String method', 'A', 'Hard', 'Iterators provide values sequentially using the iterator protocol.'),

('Python', 'Which function obtains an iterator from an iterable?', 'iter()', 'iterator()', 'iterate()', 'getIterator()', 'A', 'Hard', 'iter() returns an iterator.'),

('Python', 'Which function gets the next item from an iterator?', 'next()', 'getNext()', 'advance()', 'forward()', 'A', 'Hard', 'next() retrieves the next iterator value.'),

('Python', 'What is a generator?', 'Iterator-producing function/object that yields values lazily', 'Database generator', 'Class constructor only', 'File creator only', 'A', 'Hard', 'Generators produce values lazily, often using yield.'),

('Python', 'Which keyword creates values from a generator function?', 'return', 'yield', 'generate', 'produce', 'B', 'Hard', 'yield produces a value while preserving generator state.'),

('Python', 'Why are generators useful?', 'Memory-efficient processing of large sequences', 'They always run faster', 'They remove all exceptions', 'They replace classes', 'A', 'Hard', 'Generators avoid storing all results in memory at once.'),

('Python', 'What is a list comprehension?', 'Concise syntax for creating lists', 'Database query', 'Exception handler', 'File reader', 'A', 'Hard', 'List comprehensions create lists from iterable expressions.'),

('Python', 'Which is a valid list comprehension?', '[x*2 for x in range(5)]', '[for x in range(5): x*2]', 'list x*2 for range(5)', '{x*2 for x range(5) list}', 'A', 'Hard', 'This syntax creates a list of doubled values.'),

('Python', 'What does a dictionary comprehension create?', 'Dictionary', 'Tuple', 'String', 'Class', 'A', 'Hard', 'Dictionary comprehensions construct dictionaries concisely.'),

('Python', 'What does a set comprehension create?', 'Set', 'Dictionary', 'List', 'Tuple', 'A', 'Hard', 'Set comprehensions construct sets.'),

('Python', 'What is enumerate() useful for?', 'Iterating with indexes and values', 'Sorting only', 'Removing duplicates', 'Reading files', 'A', 'Hard', 'enumerate() yields index-value pairs.'),

('Python', 'What is zip() used for?', 'Combining multiple iterables element-wise', 'Compressing files only', 'Sorting dictionaries', 'Creating classes', 'A', 'Hard', 'zip() pairs corresponding elements from iterables.'),

('Python', 'What does any() return?', 'True if at least one element is truthy', 'True only if all are truthy', 'Number of items', 'First item', 'A', 'Hard', 'any() checks whether at least one item is truthy.'),

('Python', 'What does all() return?', 'True if every element is truthy', 'True if one element is truthy', 'Number of elements', 'Last element', 'A', 'Hard', 'all() returns true only when every element is truthy.'),

('Python', 'What is NumPy mainly used for?', 'Numerical computing', 'Web routing', 'HTML styling', 'Database administration', 'A', 'Hard', 'NumPy provides arrays and numerical computing tools.'),

('Python', 'What is pandas mainly used for?', 'Data manipulation and analysis', 'Web server creation only', 'Game development only', 'Operating systems', 'A', 'Hard', 'pandas provides data structures and tools for data analysis.'),

('Python', 'What is a pandas DataFrame?', 'Two-dimensional labeled data structure', 'Python loop', 'Web page', 'Database server', 'A', 'Hard', 'DataFrame is a tabular data structure in pandas.'),

('Python', 'What is Matplotlib commonly used for?', 'Data visualization', 'Password hashing', 'Routing', 'Package installation', 'A', 'Hard', 'Matplotlib is widely used to create charts and plots.'),

('Python', 'What is Flask?', 'Python web framework', 'Database', 'Python compiler', 'Operating system', 'A', 'Hard', 'Flask is a lightweight Python web framework.'),

('Python', 'What is Django?', 'Python web framework', 'Database engine', 'Python IDE', 'Package manager', 'A', 'Hard', 'Django is a high-level Python web framework.'),

('Python', 'Which ecosystem is commonly associated with machine learning and data science libraries?', 'Python ecosystem including NumPy, pandas, scikit-learn', 'HTML', 'Bootstrap', 'Express.js', 'A', 'Hard', 'Python has a large ecosystem for data science and machine learning.'),

('Python', 'What is PEP 8?', 'Python style guide', 'Python database', 'Python compiler', 'Python web server', 'A', 'Hard', 'PEP 8 provides style recommendations for Python code.'),

('Python', 'Which combination represents good Python programming practice?', 'Meaningful names, proper indentation, functions, exception handling', 'Ignoring errors and using unclear names', 'Avoiding reusable code', 'Writing everything in one function', 'A', 'Hard', 'Readable structure, meaningful names, reusable functions, and proper error handling improve Python code quality.');

-- =========================================================
-- Verification
-- =========================================================

SELECT COUNT(*) AS python_questions
FROM questions
WHERE skill = 'Python';

SELECT COUNT(DISTINCT question) AS unique_python_questions
FROM questions
WHERE skill = 'Python';

SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;

