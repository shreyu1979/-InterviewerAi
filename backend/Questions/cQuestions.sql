USE ai_interviewer;

-- =========================================================
-- C — 200 MCQs
-- =========================================================
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150  = Medium
-- Q151-Q200 = Hard
-- =========================================================

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'C';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- =========================================================
-- C Fundamentals & Syntax — Q1-Q50
-- =========================================================

-- Q1
('C', 'Who developed the C programming language?', 'Dennis Ritchie', 'James Gosling', 'Bjarne Stroustrup', 'Guido van Rossum', 'A', 'Easy', 'Dennis Ritchie developed C at Bell Labs.'),

-- Q2
('C', 'C is primarily a:', 'Procedural programming language', 'Markup language', 'Database language', 'Query language', 'A', 'Easy', 'C is primarily a procedural, general-purpose programming language.'),

-- Q3
('C', 'Which symbol terminates most C statements?', ':', ';', '.', ',', 'B', 'Easy', 'A semicolon terminates most C statements.'),

-- Q4
('C', 'Which function is the usual entry point of a C program?', 'start()', 'main()', 'run()', 'execute()', 'B', 'Easy', 'Execution of a standard C program begins in main().'),

-- Q5
('C', 'Which header file is commonly used for printf()?', 'string.h', 'math.h', 'stdio.h', 'stdlib.h', 'C', 'Easy', 'printf() is declared in <stdio.h>.'),

-- Q6
('C', 'Which function is used to print formatted output?', 'scanf()', 'printf()', 'gets()', 'putchar()', 'B', 'Easy', 'printf() displays formatted output.'),

-- Q7
('C', 'Which function is commonly used for formatted input?', 'printf()', 'scanf()', 'puts()', 'putchar()', 'B', 'Easy', 'scanf() reads formatted input.'),

-- Q8
('C', 'Which preprocessor directive includes a header file?', '#define', '#include', '#header', '#import', 'B', 'Easy', '#include includes header-file contents.'),

-- Q9
('C', 'Which symbol begins a preprocessor directive?', '$', '@', '#', '%', 'C', 'Easy', 'C preprocessor directives begin with #.'),

-- Q10
('C', 'Which is a valid C identifier?', '2value', 'my-value', 'my_value', 'float', 'C', 'Easy', 'Identifiers can contain letters, digits, and underscores but cannot begin with a digit or use keywords.'),

-- Q11
('C', 'Which cannot be used as a C identifier?', 'total', '_count', 'student1', 'while', 'D', 'Easy', 'while is a C keyword.'),

-- Q12
('C', 'C identifiers are:', 'Case-sensitive', 'Always uppercase', 'Not case-sensitive', 'Always lowercase', 'A', 'Easy', 'Total and total are different identifiers in C.'),

-- Q13
('C', 'Which is a C keyword?', 'integer', 'number', 'int', 'decimal', 'C', 'Easy', 'int is a built-in C keyword for integer types.'),

-- Q14
('C', 'Which keyword declares an integer variable?', 'integer', 'int', 'num', 'real', 'B', 'Easy', 'int declares an integer object.'),

-- Q15
('C', 'Which keyword declares a character variable?', 'char', 'character', 'string', 'text', 'A', 'Easy', 'char is used for character types.'),

-- Q16
('C', 'Which keyword declares a floating-point variable?', 'float', 'decimal', 'real', 'doublepoint', 'A', 'Easy', 'float declares single-precision floating-point objects.'),

-- Q17
('C', 'Which type generally provides more precision than float?', 'char', 'short', 'double', 'void', 'C', 'Easy', 'double normally provides greater precision than float.'),

-- Q18
('C', 'Which type represents no value?', 'empty', 'null', 'void', 'none', 'C', 'Easy', 'void represents the absence of a value or type in applicable contexts.'),

-- Q19
('C', 'Which is a valid variable declaration?', 'int age;', 'age int;', 'integer age;', 'declare age int;', 'A', 'Easy', 'int age; declares an integer variable named age.'),

-- Q20
('C', 'Which statement assigns 10 to x?', 'x == 10;', 'x = 10;', '10 = x;', 'x := 10;', 'B', 'Easy', '= is the assignment operator.'),

-- Q21
('C', 'Which operator checks equality?', '=', '==', '!=', '===', 'B', 'Easy', '== compares two values for equality.'),

-- Q22
('C', 'Which operator means not equal?', '<>', '!=', '~=', '!==', 'B', 'Easy', '!= checks whether two values are different.'),

-- Q23
('C', 'Which operator represents logical AND?', '&', '&&', '||', 'and', 'B', 'Easy', '&& performs logical AND.'),

-- Q24
('C', 'Which operator represents logical OR?', '|', '&&', '||', 'or', 'C', 'Easy', '|| performs logical OR.'),

-- Q25
('C', 'Which operator represents logical NOT?', '!', '~', 'not', '!=', 'A', 'Easy', '! reverses a logical truth value.'),

-- Q26
('C', 'Which operator gives the remainder?', '/', '%', '//', 'rem', 'B', 'Easy', '% calculates the remainder of integer division.'),

-- Q27
('C', 'What is the result of 10 / 3 when both operands are integers?', '3', '3.33', '4', '0', 'A', 'Easy', 'Integer division discards the fractional part.'),

-- Q28
('C', 'What is the result of 10 % 3?', '0', '1', '2', '3', 'B', 'Easy', '10 divided by 3 leaves a remainder of 1.'),

-- Q29
('C', 'Which operator increments a variable by one?', '--', '++', '+=2', '**', 'B', 'Easy', '++ increments its operand by one.'),

-- Q30
('C', 'Which operator decrements a variable by one?', '--', '++', '-=', '<>', 'A', 'Easy', '-- decrements its operand by one.'),

-- Q31
('C', 'What does += generally mean?', 'Addition assignment', 'Equality', 'Comparison', 'Division assignment', 'A', 'Easy', 'x += y is equivalent to x = x + y.'),

-- Q32
('C', 'What does *= generally mean?', 'Multiplication assignment', 'Pointer declaration only', 'Comparison', 'Modulus assignment', 'A', 'Easy', 'x *= y is equivalent to x = x * y.'),

-- Q33
('C', 'What does && return conceptually?', 'True when both operands are logically true', 'True when either operand is true', 'Always false', 'A memory address', 'A', 'Easy', 'Logical AND requires both conditions to be true.'),

-- Q34
('C', 'What does || return conceptually?', 'True when at least one operand is logically true', 'True only when both are false', 'Always true', 'A pointer', 'A', 'Easy', 'Logical OR is true if at least one condition is true.'),

-- Q35
('C', 'Which statement is used for conditional execution?', 'if', 'loop', 'repeat', 'condition', 'A', 'Easy', 'if executes a block when its condition is true.'),

-- Q36
('C', 'Which statement provides an alternative branch?', 'otherwise', 'else', 'default', 'alternate', 'B', 'Easy', 'else handles the alternative condition.'),

-- Q37
('C', 'Which construct checks multiple conditions sequentially?', 'if-else if', 'for', 'struct', 'typedef', 'A', 'Easy', 'An if-else if chain evaluates multiple conditions.'),

-- Q38
('C', 'Which statement is useful for selecting among constant cases?', 'switch', 'select', 'choose', 'match', 'A', 'Easy', 'switch provides multi-way branching.'),

-- Q39
('C', 'Which keyword labels a branch in a switch?', 'case', 'option', 'branch', 'when', 'A', 'Easy', 'Each possible switch value can be introduced with case.'),

-- Q40
('C', 'Which keyword handles unmatched switch cases?', 'else', 'default', 'otherwise', 'none', 'B', 'Easy', 'default executes when no case matches.'),

-- Q41
('C', 'What does break do inside a switch?', 'Exits the switch statement', 'Restarts the switch', 'Skips compilation', 'Creates a loop', 'A', 'Easy', 'break exits the nearest applicable switch or loop.'),

-- Q42
('C', 'What does continue do inside a loop?', 'Skips to the next iteration', 'Terminates the entire program', 'Exits the function', 'Creates a new loop', 'A', 'Easy', 'continue skips the remainder of the current iteration.'),

-- Q43
('C', 'Which loop is commonly used when the number of iterations is known?', 'for', 'switch', 'if', 'goto', 'A', 'Easy', 'for loops are convenient for count-controlled iteration.'),

-- Q44
('C', 'Which loop checks its condition before executing the body?', 'while', 'do-while', 'Both always after', 'switch', 'A', 'Easy', 'A while loop checks its condition before each iteration.'),

-- Q45
('C', 'Which loop executes its body at least once?', 'while', 'for', 'do-while', 'switch', 'C', 'Easy', 'A do-while executes its body before checking the condition.'),

-- Q46
('C', 'What is an infinite loop?', 'A loop whose termination condition is never reached', 'A loop that runs exactly once', 'A loop with no body', 'A syntax error', 'A', 'Easy', 'An infinite loop continues without reaching a terminating condition.'),

-- Q47
('C', 'Which keyword immediately exits a function and can provide a value?', 'break', 'return', 'exit', 'stop', 'B', 'Easy', 'return exits the current function.'),

-- Q48
('C', 'Which is a single-line comment syntax in C?', '// comment', '<!-- comment -->', '# comment', '-- comment', 'A', 'Easy', 'C supports // single-line comments.'),

-- Q49
('C', 'Which syntax represents a traditional block comment?', '/* comment */', '// comment //', '<!-- -->', '## ##', 'A', 'Easy', 'C block comments begin with /* and end with */.'),

-- Q50
('C', 'Which operator has higher precedence?', '*', '+', '=', '||', 'A', 'Easy', 'Multiplication has higher precedence than addition, assignment, and logical OR.'),

-- =========================================================
-- Arrays, Strings & Functions — Q51-Q100
-- =========================================================

-- Q51
('C', 'What is an array?', 'Collection of elements of the same type stored as a sequence', 'A function', 'A keyword', 'A compiler', 'A', 'Medium', 'A C array contains elements of one specified type.'),

-- Q52
('C', 'What is the first index of a C array?', '0', '1', '-1', '2', 'A', 'Medium', 'C arrays use zero-based indexing.'),

-- Q53
('C', 'How do you declare an integer array of 5 elements?', 'int a[5];', 'array int a(5);', 'int a(1..5);', 'a int[5];', 'A', 'Medium', 'int a[5]; declares five integer elements.'),

-- Q54
('C', 'What is the last valid index of int a[5]?', '5', '4', '6', '1', 'B', 'Medium', 'The indexes are 0 through 4.'),

-- Q55
('C', 'Which declaration creates a two-dimensional array?', 'int a[3][4];', 'int a(3,4);', 'array a[3,4];', 'int[3][4] a;', 'A', 'Medium', 'Two subscripts represent a two-dimensional array.'),

-- Q56
('C', 'What does an array name generally represent in an expression?', 'It can decay to a pointer to its first element', 'Always the last element', 'Always an integer', 'A function', 'A', 'Medium', 'In most expressions, an array expression converts to a pointer to its first element.'),

-- Q57
('C', 'Which character terminates a C string?', '''\0''', '''\n''', ''' ''', 'EOF', 'A', 'Medium', 'C strings end with the null character.'),

-- Q58
('C', 'Which header is used for many string functions?', 'string.h', 'stdio.h', 'math.h', 'ctype.h', 'A', 'Medium', 'String functions such as strlen() and strcpy() are declared in <string.h>.'),

-- Q59
('C', 'Which function finds the length of a string?', 'strlen()', 'strlength()', 'length()', 'size()', 'A', 'Medium', 'strlen() returns the number of characters before the terminating null character.'),

-- Q60
('C', 'Which function copies one string to another?', 'strcpy()', 'strcopy()', 'copystr()', 'stringcopy()', 'A', 'Medium', 'strcpy() copies a null-terminated string to another character array.'),

-- Q61
('C', 'Which function concatenates strings?', 'strcat()', 'concat()', 'strjoin()', 'joinstr()', 'A', 'Medium', 'strcat() appends one string to another.'),

-- Q62
('C', 'Which function compares two strings?', 'strcmp()', 'strcompare()', 'compare()', 'equals()', 'A', 'Medium', 'strcmp() lexicographically compares two strings.'),

-- Q63
('C', 'Which function searches for a character in a string?', 'strchr()', 'findchar()', 'search()', 'charfind()', 'A', 'Medium', 'strchr() finds the first occurrence of a character.'),

-- Q64
('C', 'Which function searches for a substring?', 'strstr()', 'substr()', 'findstr()', 'searchstr()', 'A', 'Medium', 'strstr() finds the first occurrence of a substring.'),

-- Q65
('C', 'Which header provides character classification functions such as isdigit()?', 'ctype.h', 'string.h', 'math.h', 'stdlib.h', 'A', 'Medium', '<ctype.h> provides character testing and conversion functions.'),

-- Q66
('C', 'What does isdigit() test?', 'Whether a character is a decimal digit', 'Whether a string is empty', 'Whether a number is negative', 'Whether a pointer is valid', 'A', 'Medium', 'isdigit() tests whether a character represents a decimal digit.'),

-- Q67
('C', 'What is a function?', 'A named block of code designed to perform a task', 'A variable only', 'A data type only', 'A header file', 'A', 'Medium', 'Functions organize reusable operations.'),

-- Q68
('C', 'Which is a function declaration?', 'int add(int, int);', 'int add = 5;', 'function add();', 'declare add int;', 'A', 'Medium', 'This declares a function returning int with two integer parameters.'),

-- Q69
('C', 'What is a function prototype?', 'Declaration describing a function''s interface', 'Function output', 'Function memory', 'Loop declaration', 'A', 'Medium', 'A prototype specifies information such as return type and parameter types.'),

-- Q70
('C', 'What is a function parameter?', 'A value placeholder in a function definition', 'A return statement', 'A header file', 'A loop', 'A', 'Medium', 'Parameters receive arguments supplied to a function.'),

-- Q71
('C', 'What is an argument?', 'Actual value passed to a function', 'Function name', 'Return type', 'Header file', 'A', 'Medium', 'Arguments are the values supplied when calling a function.'),

-- Q72
('C', 'Which specifies a function''s return type?', 'return', 'The type before the function name', 'result', 'output', 'B', 'Medium', 'The return type appears before the function name in a declaration or definition.'),

-- Q73
('C', 'What does a void function return?', 'No value', 'An integer', 'A string', 'A pointer always', 'A', 'Medium', 'A void function does not return a value.'),

-- Q74
('C', 'What is recursion?', 'A function calling itself', 'A loop using arrays', 'A pointer declaration', 'A header file', 'A', 'Medium', 'Recursion occurs when a function directly or indirectly calls itself.'),

-- Q75
('C', 'What should a recursive function normally have?', 'A base case', 'Only global variables', 'A switch statement', 'No return statement ever', 'A', 'Medium', 'A base case prevents recursion from continuing indefinitely.'),

-- Q76
('C', 'What is a local variable?', 'A variable declared within a block or function scope', 'A variable accessible everywhere', 'A header file', 'A macro', 'A', 'Medium', 'Local variables have limited scope based on where they are declared.'),

-- Q77
('C', 'What is a global variable?', 'A variable declared outside functions with file/program scope as applicable', 'A variable inside a loop only', 'A function parameter only', 'A macro', 'A', 'Medium', 'Global variables are declared outside functions.'),

-- Q78
('C', 'What is scope?', 'Region of a program where an identifier can be used', 'Memory size', 'Execution speed', 'File size', 'A', 'Medium', 'Scope determines where an identifier is visible.'),

-- Q79
('C', 'What is lifetime?', 'Duration for which an object exists during program execution', 'Number of lines in a program', 'Function name length', 'Compilation time', 'A', 'Medium', 'Lifetime describes how long an object exists.'),

-- Q80
('C', 'What is pass-by-value in C?', 'Passing a copy of an argument''s value', 'Passing a reference type automatically', 'Passing a function name', 'Passing a header file', 'A', 'Medium', 'C function arguments are passed by value.'),

-- Q81
('C', 'How can a function modify a caller''s variable?', 'Pass its address using a pointer', 'Use switch', 'Use typedef', 'Use a comment', 'A', 'Medium', 'Passing an object''s address allows the function to modify that object through a pointer.'),

-- Q82
('C', 'Which operator obtains the address of an object?', '*', '&', '%', '#', 'B', 'Medium', 'Unary & produces the address of its operand.'),

-- Q83
('C', 'Which operator dereferences a pointer?', '&', '*', '#', '@', 'B', 'Medium', 'Unary * accesses the object pointed to by a pointer.'),

-- Q84
('C', 'What is an uninitialized automatic variable?', 'A variable whose initial value is indeterminate', 'Always zero', 'Always one', 'Always NULL', 'A', 'Medium', 'Automatic objects are not automatically initialized to zero.'),

-- Q85
('C', 'Which keyword can preserve a local variable''s value between function calls?', 'static', 'keep', 'persistent', 'save', 'A', 'Medium', 'A local static object retains its stored value between calls.'),

-- Q86
('C', 'What is a static local variable''s lifetime?', 'Entire program execution', 'Only one statement', 'Only one loop iteration', 'Until the next function call', 'A', 'Medium', 'Static-duration objects exist for the entire program execution.'),

-- Q87
('C', 'What is a macro?', 'A preprocessor-defined substitution or function-like construct', 'A runtime function only', 'A database', 'A pointer', 'A', 'Medium', 'Macros are processed by the preprocessor.'),

-- Q88
('C', 'Which directive defines a macro?', '#define', '#macro', '#create', '#let', 'A', 'Medium', '#define creates macros.'),

-- Q89
('C', 'What does #undef do?', 'Removes a macro definition', 'Deletes a variable', 'Ends a program', 'Frees heap memory', 'A', 'Medium', '#undef removes a macro definition.'),

-- Q90
('C', 'What is conditional compilation?', 'Compiling code based on preprocessor conditions', 'Running code conditionally at runtime only', 'Creating arrays', 'Sorting values', 'A', 'Medium', 'Directives such as #if, #ifdef, and #ifndef control preprocessing.'),

-- Q91
('C', 'What does #ifdef test?', 'Whether a macro is defined', 'Whether a file exists at runtime', 'Whether a pointer is NULL', 'Whether a variable is zero', 'A', 'Medium', '#ifdef checks whether a specified macro is defined.'),

-- Q92
('C', 'What does #ifndef test?', 'Whether a macro is not defined', 'Whether a variable is negative', 'Whether a pointer is invalid', 'Whether a function exists', 'A', 'Medium', '#ifndef tests for an undefined macro.'),

-- Q93
('C', 'What is a header guard used for?', 'Preventing repeated inclusion of a header''s declarations', 'Protecting passwords', 'Encrypting files', 'Managing memory', 'A', 'Medium', 'Header guards prevent multiple inclusion within a translation unit.'),

-- Q94
('C', 'Which is a common header-guard pattern?', '#ifndef ... #define ... #endif', '#guard ... #end', '#protect ...', '#header ...', 'A', 'Medium', 'This pattern conditionally defines a macro to prevent repeated inclusion.'),

-- Q95
('C', 'Which library is commonly used for mathematical functions?', 'math.h', 'stdio.h', 'string.h', 'ctype.h', 'A', 'Medium', '<math.h> provides mathematical functions.'),

-- Q96
('C', 'Which function calculates a square root?', 'sqrt()', 'square()', 'root()', 'squareroot()', 'A', 'Medium', 'sqrt() returns the square root of a floating-point value.'),

-- Q97
('C', 'Which function calculates a power?', 'pow()', 'powerof()', 'exp2only()', 'raise()', 'A', 'Medium', 'pow() computes one value raised to the power of another.'),

-- Q98
('C', 'Which function rounds toward positive infinity?', 'ceil()', 'floor()', 'rounddown()', 'truncate()', 'A', 'Medium', 'ceil() returns the smallest integer-valued result not less than its argument.'),

-- Q99
('C', 'Which function rounds toward negative infinity?', 'floor()', 'ceil()', 'down()', 'truncate()', 'A', 'Medium', 'floor() returns the largest integer-valued result not greater than its argument.'),

-- Q100
('C', 'Which function can convert a numeric string to an integer?', 'atoi()', 'toInt()', 'stringint()', 'convert()', 'A', 'Medium', 'atoi() converts an initial portion of a string to int, though strtol() is generally preferred for robust error handling.'),

-- =========================================================
-- Pointers, Structures & Memory — Q101-Q150
-- =========================================================

-- Q101
('C', 'What is a pointer?', 'An object that stores an address', 'A loop', 'A string', 'A compiler', 'A', 'Medium', 'A pointer stores the address of an object or function as applicable.'),

-- Q102
('C', 'Which declaration declares a pointer to an integer?', 'int *p;', 'pointer int p;', 'int p*;', '*int p;', 'A', 'Medium', 'int *p; declares p as a pointer to int.'),

-- Q103
('C', 'What does &x represent?', 'Address of x', 'Value of x', 'Size of x', 'Type of x', 'A', 'Medium', 'Unary & obtains the address of x.'),

-- Q104
('C', 'What does *p represent when p points to an object?', 'The pointed-to object/value', 'Address of p', 'Size of p', 'Pointer type', 'A', 'Medium', 'Dereferencing accesses the object designated by the pointer.'),

-- Q105
('C', 'What is a NULL pointer?', 'A pointer that does not point to a valid object or function', 'A pointer to zero-valued data only', 'An integer variable', 'A string', 'A', 'Medium', 'A null pointer represents that the pointer is not pointing to an object or function.'),

-- Q106
('C', 'Which macro is commonly used to represent a null pointer in older/common C code?', 'NULL', 'ZERO_PTR', 'VOIDPTR', 'NOPTR', 'A', 'Medium', 'NULL is a null pointer constant macro provided by standard headers.'),

-- Q107
('C', 'What is pointer arithmetic?', 'Performing permitted arithmetic on pointers', 'Adding two arbitrary pointers', 'Sorting pointers', 'Encrypting addresses', 'A', 'Medium', 'Pointer arithmetic includes operations such as incrementing a pointer within an array.'),

-- Q108
('C', 'If p is an int*, what does p++ generally do?', 'Moves to the next int element', 'Adds exactly one byte always', 'Sets p to NULL', 'Doubles the address', 'A', 'Medium', 'Pointer arithmetic scales by the size of the pointed-to type.'),

-- Q109
('C', 'What is a pointer to pointer?', 'A pointer that stores the address of another pointer', 'A pointer with two values', 'An integer pointer only', 'A NULL pointer', 'A', 'Medium', 'For example, int **p can point to an int *.'),

-- Q110
('C', 'What is a dangling pointer?', 'A pointer whose referenced object no longer exists', 'A pointer initialized to NULL', 'A pointer to a constant', 'A pointer to an array', 'A', 'Medium', 'A dangling pointer refers to an object whose lifetime has ended.'),

-- Q111
('C', 'What is a wild pointer?', 'An uninitialized pointer with an indeterminate value', 'A pointer to NULL', 'A function pointer', 'A constant pointer', 'A', 'Medium', 'An uninitialized pointer may contain an indeterminate address.'),

-- Q112
('C', 'What is a void pointer?', 'A pointer to an object of unspecified type', 'A pointer that is always NULL', 'A pointer that cannot store addresses', 'A pointer to functions only', 'A', 'Medium', 'void * can hold the address of an object of any object type, with appropriate conversion for dereferencing.'),

-- Q113
('C', 'Which pointer type can point to different object types?', 'void *', 'int * only', 'char * only', 'float * only', 'A', 'Medium', 'void * is the generic object pointer type in C.'),

-- Q114
('C', 'What does sizeof return?', 'Size in bytes of its operand''s type or object', 'Number of variables', 'Memory address', 'String value', 'A', 'Medium', 'sizeof yields a value of type size_t representing size in bytes.'),

-- Q115
('C', 'Which operator is used to access a structure member through a structure object?', '.', '->', '::', '#', 'A', 'Medium', 'The dot operator accesses members through a structure object.'),

-- Q116
('C', 'Which operator accesses a structure member through a pointer?', '->', '.', '::', '=>', 'A', 'Medium', '-> accesses a member through a pointer to a structure or union.'),

-- Q117
('C', 'Which keyword defines a structure?', 'struct', 'record', 'object', 'class', 'A', 'Medium', 'struct defines a structure type.'),

-- Q118
('C', 'What is a structure?', 'User-defined type grouping members of possibly different types', 'A loop', 'A compiler', 'A pointer only', 'A', 'Medium', 'Structures group related members that may have different types.'),

-- Q119
('C', 'Which is a valid structure declaration?', 'struct Student { int id; };', 'structure Student { int id; }', 'record Student(int id);', 'class Student { int id; };', 'A', 'Medium', 'struct is the C syntax for defining structures.'),

-- Q120
('C', 'Can a structure contain members of different data types?', 'Yes', 'No', 'Only integers', 'Only characters', 'A', 'Medium', 'Structure members can have different types.'),

-- Q121
('C', 'What is a union?', 'User-defined type whose members share storage', 'A collection of separate arrays', 'A loop', 'A pointer', 'A', 'Medium', 'Union members occupy overlapping storage.'),

-- Q122
('C', 'What is the main difference between a structure and a union?', 'Structure members have separate storage; union members share storage', 'They are identical', 'Unions cannot contain integers', 'Structures cannot contain characters', 'A', 'Medium', 'Structure members generally have distinct storage, while union members overlap.'),

-- Q123
('C', 'Which keyword defines a union?', 'union', 'shared', 'variant', 'group', 'A', 'Medium', 'union defines a union type.'),

-- Q124
('C', 'What is typedef used for?', 'Creating an alias for a type', 'Allocating memory', 'Defining a loop', 'Printing data', 'A', 'Medium', 'typedef creates an alternative name for an existing type.'),

-- Q125
('C', 'Which declaration creates uint as an alias for unsigned int?', 'typedef unsigned int uint;', 'alias unsigned int uint;', 'define type uint;', 'type uint = unsigned int;', 'A', 'Medium', 'typedef creates type aliases.'),

-- Q126
('C', 'What is dynamic memory allocation?', 'Allocating memory during program execution', 'Allocating memory only during preprocessing', 'Allocating CPU registers', 'Creating files', 'A', 'Medium', 'Dynamic memory is obtained during runtime from the allocation functions.'),

-- Q127
('C', 'Which header declares malloc()?', 'stdlib.h', 'stdio.h', 'string.h', 'math.h', 'A', 'Medium', 'Memory allocation functions are declared in <stdlib.h>.'),

-- Q128
('C', 'What does malloc() do?', 'Allocates a block of memory', 'Frees memory', 'Copies strings', 'Opens a file', 'A', 'Medium', 'malloc() allocates a specified number of bytes.'),

-- Q129
('C', 'What does calloc() do?', 'Allocates memory for an array and initializes all bits to zero', 'Frees memory', 'Opens a file', 'Copies memory', 'A', 'Medium', 'calloc() allocates space for multiple elements and initializes the allocated bytes to zero.'),

-- Q130
('C', 'What does realloc() do?', 'Changes the size of a previously allocated memory block', 'Deletes a variable', 'Creates a file', 'Copies strings only', 'A', 'Medium', 'realloc() attempts to resize a dynamically allocated block.'),

-- Q131
('C', 'What does free() do?', 'Releases dynamically allocated memory', 'Deletes source code', 'Closes a file only', 'Resets a pointer automatically', 'A', 'Medium', 'free() releases memory obtained from allocation functions.'),

-- Q132
('C', 'What is a memory leak?', 'Allocated memory that is no longer reachable and has not been freed', 'A compiler error', 'A syntax error', 'A file permission issue', 'A', 'Medium', 'Memory leaks waste allocated storage during program execution.'),

-- Q133
('C', 'What should generally be done after free(p) if p remains in scope and might be reused?', 'Set p to NULL when appropriate', 'Increment p', 'Dereference p', 'Call malloc() automatically', 'A', 'Medium', 'Setting the pointer to NULL helps avoid accidental reuse of the old address.'),

-- Q134
('C', 'What is a segmentation fault?', 'An invalid memory access detected by the environment', 'A syntax keyword', 'A valid loop', 'A type declaration', 'A', 'Medium', 'Invalid memory accesses can result in segmentation faults.'),

-- Q135
('C', 'What is stack memory commonly used for?', 'Automatic variables and function call information', 'Permanent files', 'Database tables', 'Source code only', 'A', 'Medium', 'Automatic storage and call-related information are commonly associated with the stack.'),

-- Q136
('C', 'What is heap memory commonly used for?', 'Dynamically allocated objects', 'Preprocessor directives', 'Keywords', 'Comments', 'A', 'Medium', 'Dynamic allocation typically obtains memory from the heap.'),

-- Q137
('C', 'Which function can copy raw memory blocks?', 'memcpy()', 'strcpy()', 'memorycopy()', 'copy()', 'A', 'Medium', 'memcpy() copies a specified number of bytes.'),

-- Q138
('C', 'Which function compares raw memory blocks?', 'memcmp()', 'strcmp()', 'comparemem()', 'memcompare()', 'A', 'Medium', 'memcmp() compares byte sequences.'),

-- Q139
('C', 'Which function fills a memory region with a byte value?', 'memset()', 'fillmem()', 'setmemory()', 'memoryset()', 'A', 'Medium', 'memset() fills a block of memory with a specified unsigned-char value.'),

-- Q140
('C', 'What is an array of structures?', 'An array whose elements are structure objects', 'A structure containing only arrays', 'A pointer array only', 'A union', 'A', 'Medium', 'C allows arrays whose element type is a structure.'),

-- Q141
('C', 'What is a structure containing another structure called?', 'Nested structure', 'Recursive loop', 'Union array', 'Pointer table', 'A', 'Medium', 'A structure can contain another structure as a member.'),

-- Q142
('C', 'Can a structure contain a pointer to its own type?', 'Yes', 'No', 'Only in C++', 'Only if it is static', 'A', 'Medium', 'Self-referential structures commonly use pointers to the same structure type.'),

-- Q143
('C', 'Which data structure commonly uses self-referential structures?', 'Linked list', 'Simple integer', 'Character constant', 'Enumeration only', 'A', 'Medium', 'Linked-list nodes commonly contain data and a pointer to another node.'),

-- Q144
('C', 'What is an enum?', 'A user-defined type consisting of named integer constants', 'A pointer', 'A string', 'A dynamic array', 'A', 'Medium', 'Enumerations provide named integral constants.'),

-- Q145
('C', 'Which keyword declares an enumeration?', 'enum', 'enumeration', 'constenum', 'list', 'A', 'Medium', 'enum defines enumeration types.'),

-- Q146
('C', 'What is a constant?', 'A value that should not be modified through the declared identifier', 'A variable that always changes', 'A function', 'A pointer only', 'A', 'Medium', 'const can make an object non-modifiable through a particular lvalue.'),

-- Q147
('C', 'Which keyword declares a const-qualified object?', 'const', 'constant', 'fixed', 'readonly', 'A', 'Medium', 'const qualifies an object as non-modifiable through that lvalue.'),

-- Q148
('C', 'What does volatile indicate?', 'The value may change for reasons outside ordinary program flow', 'The variable is constant', 'The variable is always zero', 'The variable is stored only on the heap', 'A', 'Medium', 'volatile tells the compiler that accesses have observable significance beyond ordinary optimization assumptions.'),

-- Q149
('C', 'What is restrict primarily used to indicate?', 'A pointer-based aliasing assumption for optimization', 'A constant pointer', 'A memory allocator', 'A loop control', 'A', 'Medium', 'restrict provides an aliasing promise for pointer-based accesses.'),

-- Q150
('C', 'What is a function pointer?', 'A pointer that stores the address of a function', 'A pointer to an integer', 'A pointer to a string only', 'A pointer that is always NULL', 'A', 'Medium', 'Function pointers can store addresses of compatible functions and be used to call them indirectly.'),

-- =========================================================
-- File Handling, Advanced C & Programming Concepts — Q151-Q200
-- =========================================================

-- Q151
('C', 'Which header is commonly used for file I/O functions?', 'stdio.h', 'string.h', 'math.h', 'ctype.h', 'A', 'Hard', 'Standard file functions such as fopen() and fclose() are declared in <stdio.h>.'),

-- Q152
('C', 'Which function opens a file?', 'fopen()', 'openfile()', 'fileopen()', 'startfile()', 'A', 'Hard', 'fopen() opens a file stream.'),

-- Q153
('C', 'Which function closes a file?', 'fclose()', 'closefile()', 'endfile()', 'fileclose()', 'A', 'Hard', 'fclose() closes an open stream.'),

-- Q154
('C', 'What does "r" mode mean in fopen()?', 'Open for reading', 'Open for writing only', 'Append only', 'Binary execution', 'A', 'Hard', '"r" opens an existing file for reading.'),

-- Q155
('C', 'What does "w" mode generally do?', 'Opens for writing and truncates an existing file', 'Opens only for reading', 'Appends only', 'Opens a directory', 'A', 'Hard', '"w" creates a new file or truncates an existing file for writing.'),

-- Q156
('C', 'What does "a" mode mean?', 'Open for appending', 'Open for reading only', 'Open for deletion', 'Open for compilation', 'A', 'Hard', '"a" writes data at the end of the file.'),

-- Q157
('C', 'What does "rb" indicate?', 'Read binary', 'Read buffer', 'Read backup', 'Random binary', 'A', 'Hard', '"b" requests binary mode where relevant.'),

-- Q158
('C', 'Which function writes formatted data to a file stream?', 'fprintf()', 'fileprintf()', 'fwriteprintf()', 'writef()', 'A', 'Hard', 'fprintf() writes formatted output to a stream.'),

-- Q159
('C', 'Which function reads formatted data from a file stream?', 'fscanf()', 'fileread()', 'readf()', 'scanf_file()', 'A', 'Hard', 'fscanf() reads formatted input from a stream.'),

-- Q160
('C', 'Which function writes a character to a file stream?', 'fputc()', 'putcharfile()', 'writechar()', 'fchar()', 'A', 'Hard', 'fputc() writes one character to a stream.'),

-- Q161
('C', 'Which function reads one character from a file stream?', 'fgetc()', 'getcharfile()', 'readchar()', 'freadchar()', 'A', 'Hard', 'fgetc() reads the next character from a stream.'),

-- Q162
('C', 'Which function writes a string to a file stream?', 'fputs()', 'putstring()', 'fstring()', 'writestring()', 'A', 'Hard', 'fputs() writes a null-terminated string to a stream.'),

-- Q163
('C', 'Which function reads a line/string from a stream safely with a size limit?', 'fgets()', 'gets()', 'readline()', 'freadline()', 'A', 'Hard', 'fgets() reads at most a specified number of characters and is preferred over unsafe gets().'),

-- Q164
('C', 'Why should gets() not be used?', 'It cannot limit the number of characters read and can overflow the buffer', 'It cannot read text', 'It only reads numbers', 'It closes the file', 'A', 'Hard', 'gets() was removed from the C standard because it cannot safely limit input size.'),

-- Q165
('C', 'Which function writes blocks of binary data?', 'fwrite()', 'writebinary()', 'binarywrite()', 'fwritedata()', 'A', 'Hard', 'fwrite() writes a specified number of objects to a stream.'),

-- Q166
('C', 'Which function reads blocks of binary data?', 'fread()', 'readbinary()', 'binaryread()', 'fgetdata()', 'A', 'Hard', 'fread() reads blocks of objects from a stream.'),

-- Q167
('C', 'What does EOF indicate?', 'End-of-file indicator returned by input functions when appropriate', 'Beginning of file', 'Empty object', 'Error-free operation always', 'A', 'Hard', 'EOF is a negative integer constant used to indicate end-of-file or certain input errors.'),

-- Q168
('C', 'Which function checks whether a stream has reached end-of-file?', 'feof()', 'eofcheck()', 'endfile()', 'fileend()', 'A', 'Hard', 'feof() tests the stream''s end-of-file indicator.'),

-- Q169
('C', 'Which function checks the error indicator of a stream?', 'ferror()', 'checkerror()', 'streamerror()', 'fileerror()', 'A', 'Hard', 'ferror() tests the stream''s error indicator.'),

-- Q170
('C', 'Which function changes the current file position?', 'fseek()', 'movepos()', 'seekfile()', 'position()', 'A', 'Hard', 'fseek() changes the file position indicator.'),

-- Q171
('C', 'Which function returns the current file position?', 'ftell()', 'getpos()', 'tellfile()', 'position()', 'A', 'Hard', 'ftell() returns the current file position indicator.'),

-- Q172
('C', 'Which function moves a stream position to the beginning?', 'rewind()', 'resetfile()', 'begin()', 'startfile()', 'A', 'Hard', 'rewind() positions a stream at its beginning and clears its error/end-of-file indicators.'),

-- Q173
('C', 'What is a command-line argument?', 'A value supplied to a program when it starts', 'A variable inside a loop', 'A header file', 'A structure member', 'A', 'Hard', 'Command-line arguments are passed to main() by the execution environment.'),

-- Q174
('C', 'Which parameters are commonly used in main() for command-line arguments?', 'argc and argv', 'x and y', 'input and output', 'main1 and main2', 'A', 'Hard', 'A common hosted form is int main(int argc, char *argv[]).'),

-- Q175
('C', 'What does argc represent?', 'Number of command-line arguments', 'Argument values only', 'Number of functions', 'Number of variables', 'A', 'Hard', 'argc counts command-line arguments, including the program name in the usual hosted environment.'),

-- Q176
('C', 'What does argv contain?', 'An array of pointers to command-line argument strings', 'Number of arguments only', 'File handles', 'Memory addresses only', 'A', 'Hard', 'argv points to the argument strings.'),

-- Q177
('C', 'What is a compiler?', 'Software that translates source code into a form suitable for execution', 'A text editor only', 'A database', 'A web browser', 'A', 'Hard', 'A C compiler translates C source into object/executable-related output.'),

-- Q178
('C', 'What is a linker?', 'Tool that combines object files and libraries into an executable or related output', 'Code formatter', 'Text editor', 'Debugger only', 'A', 'Hard', 'The linker resolves references and combines program components.'),

-- Q179
('C', 'What is a debugger?', 'Tool used to inspect and diagnose program execution', 'Compiler directive', 'Database', 'Header file', 'A', 'Hard', 'Debuggers allow developers to set breakpoints, inspect variables, and step through execution.'),

-- Q180
('C', 'What is a syntax error?', 'Violation of language grammar', 'Incorrect business logic only', 'Hardware failure', 'Slow execution', 'A', 'Hard', 'Syntax errors prevent source code from being correctly parsed.'),

-- Q181
('C', 'What is a logical error?', 'Program runs but produces incorrect results due to faulty logic', 'Missing semicolon only', 'Compiler installation error', 'File permission error only', 'A', 'Hard', 'Logical errors are mistakes in program reasoning.'),

-- Q182
('C', 'What is a runtime error?', 'An error occurring during program execution', 'A syntax rule', 'A comment', 'A header file', 'A', 'Hard', 'Runtime errors occur while the program is executing.'),

-- Q183
('C', 'What is undefined behavior?', 'Behavior for which the C standard imposes no requirements', 'A guaranteed program result', 'A compiler warning only', 'A valid constant', 'A', 'Hard', 'Undefined behavior means the standard places no requirements on the program''s behavior.'),

-- Q184
('C', 'Which is an example of potentially undefined behavior?', 'Accessing an array outside its bounds', 'Declaring an integer', 'Adding two valid integers', 'Calling printf() correctly', 'A', 'Hard', 'Out-of-bounds array access can cause undefined behavior.'),

-- Q185
('C', 'What is a buffer overflow?', 'Writing beyond the allocated capacity of a buffer', 'Reading a valid array element', 'Closing a file', 'Calling a function', 'A', 'Hard', 'A buffer overflow occurs when data exceeds the buffer''s bounds.'),

-- Q186
('C', 'What is type casting?', 'Explicitly converting a value to another type', 'Declaring a function', 'Creating a pointer', 'Allocating memory', 'A', 'Hard', 'A cast requests conversion to a specified type.'),

-- Q187
('C', 'Which is an example of a cast?', '(float)x', 'float(x)', 'cast float x', 'convert(x,float)', 'A', 'Hard', '(float)x is C''s explicit cast syntax.'),

-- Q188
('C', 'What is implicit conversion?', 'Conversion performed automatically by language rules', 'Conversion always written using a cast', 'Memory allocation', 'File conversion', 'A', 'Hard', 'C automatically converts operands in many expressions according to its conversion rules.'),

-- Q189
('C', 'What are integer promotions?', 'Certain integer types are converted to int or unsigned int in expressions', 'Integers become strings', 'Integers become pointers', 'Integers become files', 'A', 'Hard', 'Integer promotions apply to types such as char and short in many expressions.'),

-- Q190
('C', 'What is operator precedence?', 'Rules determining which operators are grouped first', 'Order of variable declarations', 'Function execution time', 'Memory allocation order', 'A', 'Hard', 'Precedence determines operator grouping in expressions.'),

-- Q191
('C', 'What does associativity determine?', 'Direction in which operators of the same precedence are grouped', 'Variable size', 'Function scope', 'File position', 'A', 'Hard', 'Associativity determines grouping direction for operators with equal precedence.'),

-- Q192
('C', 'Which operator is right-associative?', 'Assignment =', 'Addition +', 'Multiplication *', 'Modulus %', 'A', 'Hard', 'Assignment operators are right-associative.'),

-- Q193
('C', 'What is short-circuit evaluation?', 'Avoiding evaluation of later logical operands when the result is already known', 'Ending the program', 'Skipping compilation', 'Reducing memory size', 'A', 'Hard', '&& and || can avoid evaluating their right operand when unnecessary.'),

-- Q194
('C', 'In A && B, when is B evaluated?', 'Only if A is logically true', 'Always', 'Never', 'Only if A is zero', 'A', 'Hard', 'Logical AND short-circuits if the left operand is false.'),

-- Q195
('C', 'In A || B, when is B evaluated?', 'Only if A is logically false', 'Always', 'Never', 'Only if A is positive', 'A', 'Hard', 'Logical OR short-circuits if the left operand is true.'),

-- Q196
('C', 'What is modular programming?', 'Dividing a program into independent, manageable modules or functions', 'Using only modulus operators', 'Creating one large function', 'Avoiding functions', 'A', 'Hard', 'Modular design improves organization, reuse, and maintainability.'),

-- Q197
('C', 'Which approach generally improves C program maintainability?', 'Meaningful names and modular functions', 'Very long functions', 'Repeated code everywhere', 'Removing comments and documentation', 'A', 'Hard', 'Clear naming and modular design make code easier to understand and maintain.'),

-- Q198
('C', 'What is portability?', 'Ability of software to work across different environments with minimal changes', 'Program execution speed', 'Memory allocation', 'File compression', 'A', 'Hard', 'Portable C code relies on standardized behavior and minimizes platform-specific assumptions.'),

-- Q199
('C', 'What is the main advantage of using functions?', 'Code reuse and better program organization', 'Automatic database creation', 'Eliminating all errors', 'Removing the need for compilation', 'A', 'Hard', 'Functions reduce duplication and divide programs into manageable units.'),

-- Q200
('C', 'Which is a good practice when writing C programs?', 'Validate input and manage memory carefully', 'Ignore compiler warnings', 'Use uninitialized pointers', 'Access arrays beyond their bounds', 'A', 'Hard', 'Input validation and careful memory management help produce safer and more reliable C programs.');


-- =========================================================
-- Verification 1: Total C questions
-- =========================================================

SELECT COUNT(*) AS c_questions
FROM questions
WHERE skill = 'C';


-- =========================================================
-- Verification 2: Unique C questions
-- =========================================================

SELECT COUNT(DISTINCT question) AS unique_c_questions
FROM questions
WHERE skill = 'C';


-- =========================================================
-- Verification 3: Count by skill
-- =========================================================

SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;


-- =========================================================
-- Verification 4: Difficulty-wise count for C
-- =========================================================

SELECT difficulty, COUNT(*) AS question_count
FROM questions
WHERE skill = 'C'
GROUP BY difficulty
ORDER BY
    CASE difficulty
        WHEN 'Easy' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'Hard' THEN 3
    END;
