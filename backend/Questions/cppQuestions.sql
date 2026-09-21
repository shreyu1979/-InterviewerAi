USE ai_interviewer;

-- C++ 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'C++';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- =========================================================
-- C++ Fundamentals & Syntax — Q1 to Q50
-- =========================================================

-- Q1
('C++', 'Who developed C++?', 'Dennis Ritchie', 'Bjarne Stroustrup', 'James Gosling', 'Guido van Rossum', 'B', 'Easy', 'Bjarne Stroustrup developed C++ as an extension of C.'),

-- Q2
('C++', 'C++ is primarily a:', 'Markup language', 'General-purpose programming language', 'Database language', 'Query language', 'B', 'Easy', 'C++ is a general-purpose programming language supporting multiple programming paradigms.'),

-- Q3
('C++', 'Which extension is commonly used for C++ source files?', '.html', '.py', '.cpp', '.sql', 'C', 'Easy', '.cpp is a common C++ source-file extension.'),

-- Q4
('C++', 'Which function is the usual entry point of a C++ program?', 'start()', 'main()', 'run()', 'execute()', 'B', 'Easy', 'Program execution begins in main() in a hosted C++ program.'),

-- Q5
('C++', 'Which header is commonly used for cout?', 'iostream', 'string.h', 'math.h', 'stdio', 'A', 'Easy', 'iostream provides standard stream objects such as std::cout.'),

-- Q6
('C++', 'Which object is commonly used for standard output?', 'cin', 'cout', 'cerrin', 'input', 'B', 'Easy', 'std::cout is the standard output stream.'),

-- Q7
('C++', 'Which object is commonly used for standard input?', 'cin', 'cout', 'inputf', 'scan', 'A', 'Easy', 'std::cin is the standard input stream.'),

-- Q8
('C++', 'Which operator is used with cout for output?', '>>', '<<', '->', '::', 'B', 'Easy', 'The insertion operator << sends data to an output stream.'),

-- Q9
('C++', 'Which operator is used with cin for input?', '<<', '>>', '=>', '::', 'B', 'Easy', 'The extraction operator >> reads formatted input.'),

-- Q10
('C++', 'Which namespace contains standard C++ library names?', 'global', 'std', 'system', 'cpp', 'B', 'Easy', 'Standard library names are generally in the std namespace.'),

-- Q11
('C++', 'Which statement allows direct use of names from std?', 'using namespace std;', 'include namespace std;', 'use std;', 'namespace use std;', 'A', 'Easy', 'using namespace std; makes names from std directly accessible within the scope.'),

-- Q12
('C++', 'Which syntax explicitly refers to cout in the standard namespace?', 'std::cout', 'standard.cout', 'std->cout', 'namespace.cout', 'A', 'Easy', ':: is the scope resolution operator.'),

-- Q13
('C++', 'Which symbol terminates most C++ statements?', ':', ';', '.', ',', 'B', 'Easy', 'Most C++ statements end with a semicolon.'),

-- Q14
('C++', 'Which is a valid integer declaration?', 'int age;', 'integer age;', 'number age;', 'declare age;', 'A', 'Easy', 'int declares an integer object.'),

-- Q15
('C++', 'Which keyword declares a character?', 'character', 'char', 'text', 'letter', 'B', 'Easy', 'char is the fundamental character type.'),

-- Q16
('C++', 'Which type represents single-precision floating-point values?', 'float', 'decimal', 'real', 'fraction', 'A', 'Easy', 'float is a standard floating-point type.'),

-- Q17
('C++', 'Which type generally provides greater floating-point precision than float?', 'short', 'char', 'double', 'bool', 'C', 'Easy', 'double generally has greater precision than float.'),

-- Q18
('C++', 'Which type stores Boolean values?', 'bool', 'boolean', 'bit', 'logic', 'A', 'Easy', 'C++ provides the built-in bool type.'),

-- Q19
('C++', 'Which values can a bool represent conceptually?', 'True and false', 'Only 0', 'Any string', 'Only positive numbers', 'A', 'Easy', 'bool represents logical true or false.'),

-- Q20
('C++', 'Which keyword declares a constant?', 'constant', 'const', 'fixed', 'readonly', 'B', 'Easy', 'const makes an object non-modifiable through that declaration.'),

-- Q21
('C++', 'Which operator performs assignment?', '==', '=', ':=', '=>', 'B', 'Easy', '= assigns a value to an object.'),

-- Q22
('C++', 'Which operator tests equality?', '=', '==', '===', '!=', 'B', 'Easy', '== compares two operands for equality.'),

-- Q23
('C++', 'Which operator means not equal?', '<>', '!=', '!==', 'not=', 'B', 'Easy', '!= checks whether operands are unequal.'),

-- Q24
('C++', 'Which operator represents logical AND?', '&', '&&', 'andd', '||', 'B', 'Easy', '&& performs logical AND with short-circuit evaluation.'),

-- Q25
('C++', 'Which operator represents logical OR?', '|', '||', 'or', '&&', 'B', 'Easy', '|| performs logical OR with short-circuit evaluation.'),

-- Q26
('C++', 'Which operator represents logical NOT?', '!', '~', 'not', '!=', 'A', 'Easy', '! logically negates its operand.'),

-- Q27
('C++', 'Which operator returns the remainder?', '/', '%', '//', 'rem', 'B', 'Easy', '% computes the remainder for integral operands.'),

-- Q28
('C++', 'What is the result of 10 % 3?', '0', '1', '2', '3', 'B', 'Easy', '10 divided by 3 leaves remainder 1.'),

-- Q29
('C++', 'Which operator increments a value?', '++', '--', '+=0', '**', 'A', 'Easy', '++ increases an operand by one.'),

-- Q30
('C++', 'Which operator decrements a value?', '--', '++', '-+', '**', 'A', 'Easy', '-- decreases an operand by one.'),

-- Q31
('C++', 'Which operator performs addition assignment?', '=+', '+=', '++=', 'add=', 'B', 'Easy', 'x += y is equivalent to x = x + y.'),

-- Q32
('C++', 'Which operator performs multiplication assignment?', '*=', '=*', '**=', 'multiply=', 'A', 'Easy', '*= multiplies and assigns the result.'),

-- Q33
('C++', 'Which statement is used for conditional execution?', 'if', 'when', 'condition', 'check', 'A', 'Easy', 'if executes a statement or block when its condition is true.'),

-- Q34
('C++', 'Which keyword provides an alternative branch?', 'otherwise', 'else', 'default', 'alternative', 'B', 'Easy', 'else executes when the associated if condition is false.'),

-- Q35
('C++', 'Which construct is useful for multiple constant cases?', 'switch', 'select', 'choose', 'match', 'A', 'Easy', 'switch provides multi-way selection.'),

-- Q36
('C++', 'Which keyword defines a switch case?', 'case', 'option', 'when', 'branch', 'A', 'Easy', 'case labels possible switch values.'),

-- Q37
('C++', 'Which keyword handles unmatched switch cases?', 'else', 'default', 'otherwise', 'none', 'B', 'Easy', 'default is executed when no case matches.'),

-- Q38
('C++', 'What does break generally do inside a loop?', 'Exits the loop', 'Restarts the loop', 'Skips compilation', 'Creates another loop', 'A', 'Easy', 'break exits the nearest enclosing loop or switch.'),

-- Q39
('C++', 'What does continue do inside a loop?', 'Skips the rest of the current iteration', 'Terminates the program', 'Exits the function', 'Deletes the loop', 'A', 'Easy', 'continue proceeds to the next iteration.'),

-- Q40
('C++', 'Which loop is commonly used for count-controlled repetition?', 'for', 'switch', 'if', 'class', 'A', 'Easy', 'A for loop is convenient when initialization, condition, and update are related.'),

-- Q41
('C++', 'Which loop checks its condition before each iteration?', 'while', 'do-while', 'Both only after execution', 'switch', 'A', 'Easy', 'while checks its condition before executing the body.'),

-- Q42
('C++', 'Which loop executes at least once?', 'while', 'for', 'do-while', 'switch', 'C', 'Easy', 'do-while executes its body before checking its condition.'),

-- Q43
('C++', 'What does return do in a function?', 'Exits the function and may provide a value', 'Starts a loop', 'Declares a class', 'Allocates memory', 'A', 'Easy', 'return transfers control back to the caller.'),

-- Q44
('C++', 'Which is a single-line comment in C++?', '// comment', '<!-- comment -->', '# comment', '-- comment', 'A', 'Easy', '// starts a single-line comment.'),

-- Q45
('C++', 'Which syntax creates a block comment?', '/* comment */', '// comment //', '<!-- comment -->', '## comment ##', 'A', 'Easy', '/* and */ delimit block comments.'),

-- Q46
('C++', 'What is a function?', 'A named reusable block of code', 'A variable only', 'A data type only', 'A header file', 'A', 'Easy', 'Functions divide programs into reusable units.'),

-- Q47
('C++', 'What is a function parameter?', 'Named input in a function declaration or definition', 'Function output only', 'A namespace', 'A class object', 'A', 'Easy', 'Parameters specify values that a function can receive.'),

-- Q48
('C++', 'What is an argument?', 'Actual value passed to a function', 'Function return type', 'Function name', 'Header file', 'A', 'Easy', 'Arguments are supplied when a function is called.'),

-- Q49
('C++', 'What is function overloading?', 'Multiple functions with the same name but different parameter lists', 'Calling one function twice', 'Inheriting a function', 'Deleting a function', 'A', 'Easy', 'Overloaded functions have the same name but distinguishable parameter lists.'),

-- Q50
('C++', 'What is recursion?', 'A function calling itself', 'A class inheriting itself', 'A loop without a condition', 'A pointer to a variable', 'A', 'Easy', 'Recursion occurs when a function calls itself directly or indirectly.'),


-- =========================================================
-- OOP Concepts in C++ — Q51 to Q100
-- =========================================================

-- Q51
('C++', 'What does OOP stand for?', 'Object-Oriented Programming', 'Object Operating Process', 'Organized Output Programming', 'Operational Object Processing', 'A', 'Medium', 'OOP means Object-Oriented Programming.'),

-- Q52
('C++', 'Which is a fundamental OOP concept?', 'Encapsulation', 'Compilation', 'Linking', 'Preprocessing', 'A', 'Medium', 'Encapsulation is one of the major OOP principles.'),

-- Q53
('C++', 'Which is another major OOP principle?', 'Inheritance', 'Parsing', 'Tokenization', 'Linking', 'A', 'Medium', 'Inheritance allows classes to derive from other classes.'),

-- Q54
('C++', 'What is polymorphism?', 'Ability to represent one interface in multiple forms', 'Creating only one object', 'Hiding all functions', 'Allocating memory', 'A', 'Medium', 'Polymorphism allows the same interface to behave differently depending on context.'),

-- Q55
('C++', 'What is abstraction?', 'Showing essential features while hiding implementation details', 'Copying an object', 'Allocating memory', 'Creating arrays', 'A', 'Medium', 'Abstraction focuses on what an object does rather than how it does it.'),

-- Q56
('C++', 'What is encapsulation?', 'Bundling data and operations while controlling access', 'Creating loops', 'Compiling code', 'Creating namespaces only', 'A', 'Medium', 'Encapsulation combines data with related functions and controls access to them.'),

-- Q57
('C++', 'What is a class?', 'User-defined type that can contain data and functions', 'A loop', 'A compiler', 'A library only', 'A', 'Medium', 'A class defines the structure and behavior of objects.'),

-- Q58
('C++', 'What is an object?', 'An instance of a class', 'A header file', 'A function prototype', 'A namespace', 'A', 'Medium', 'Objects are instances created from class definitions.'),

-- Q59
('C++', 'Which keyword defines a class?', 'class', 'object', 'type', 'define', 'A', 'Medium', 'class introduces a class definition.'),

-- Q60
('C++', 'Which access specifier makes members accessible from anywhere permitted by the program?', 'private', 'protected', 'public', 'internal', 'C', 'Medium', 'Public members can be accessed through the appropriate object or interface from outside the class.'),

-- Q61
('C++', 'Which access specifier restricts access to the class and its friends?', 'private', 'public', 'protected', 'internal', 'A', 'Medium', 'Private members are accessible to the class and its friend declarations.'),

-- Q62
('C++', 'Which access specifier allows derived classes to access members?', 'protected', 'private', 'hidden', 'internal', 'A', 'Medium', 'Protected members are accessible within the class, friends, and derived classes.'),

-- Q63
('C++', 'What is the default access level of members in a C++ class?', 'Public', 'Private', 'Protected', 'Internal', 'B', 'Medium', 'Class members are private by default.'),

-- Q64
('C++', 'What is the default access level of members in a C++ struct?', 'Public', 'Private', 'Protected', 'Internal', 'A', 'Medium', 'Struct members are public by default.'),

-- Q65
('C++', 'What is a constructor?', 'Special member function used to initialize objects', 'Function used only for deletion', 'Static variable', 'Namespace', 'A', 'Medium', 'Constructors initialize objects when they are created.'),

-- Q66
('C++', 'What is the name of a constructor?', 'Same as the class name', 'Always constructor()', 'Always init()', 'Any random name', 'A', 'Medium', 'A constructor has the same name as its class.'),

-- Q67
('C++', 'Does a constructor have a return type?', 'Yes, void', 'Yes, int', 'No', 'Only bool', 'C', 'Medium', 'Constructors do not have return types.'),

-- Q68
('C++', 'What is a destructor?', 'Special member function used when an object is destroyed', 'Function that creates an object', 'A static variable', 'A namespace', 'A', 'Medium', 'Destructors perform cleanup when an object lifetime ends.'),

-- Q69
('C++', 'What symbol identifies a destructor?', '!', '~', '#', '@', 'B', 'Medium', 'A destructor name is preceded by ~.'),

-- Q70
('C++', 'Can a destructor take parameters?', 'Yes', 'No', 'Only one', 'Only static parameters', 'B', 'Medium', 'Destructors cannot take parameters.'),

-- Q71
('C++', 'Can a class have multiple constructors?', 'Yes', 'No', 'Only two', 'Only one', 'A', 'Medium', 'Constructors can be overloaded with different parameter lists.'),

-- Q72
('C++', 'What is a default constructor?', 'Constructor callable with no arguments', 'Constructor with exactly three arguments', 'Destructor', 'Static constructor', 'A', 'Medium', 'A default constructor can be called without arguments.'),

-- Q73
('C++', 'What is a parameterized constructor?', 'Constructor accepting parameters', 'Constructor with no parameters', 'Destructor', 'Friend function', 'A', 'Medium', 'Parameterized constructors initialize objects using supplied values.'),

-- Q74
('C++', 'What is a copy constructor?', 'Constructor that initializes an object from another object of the same class', 'Function that copies files', 'Destructor', 'Static method only', 'A', 'Medium', 'A copy constructor initializes an object from another object of the same class.'),

-- Q75
('C++', 'Which form represents a typical copy constructor parameter?', 'const ClassName&', 'int', 'float', 'void* only', 'A', 'Medium', 'A typical copy constructor takes a reference to a const object of the same class.'),

-- Q76
('C++', 'What is inheritance?', 'Deriving a new class from an existing class', 'Copying a variable', 'Creating a loop', 'Allocating heap memory', 'A', 'Medium', 'Inheritance enables a derived class to reuse and extend a base class.'),

-- Q77
('C++', 'Which symbol is used to specify inheritance?', ':', '::', '->', '=>', 'A', 'Medium', 'A colon introduces base-class specifications in a class declaration.'),

-- Q78
('C++', 'Which is a valid inheritance declaration?', 'class Dog : public Animal { };', 'class Dog extends Animal { };', 'class Dog inherits Animal { };', 'class Dog -> Animal { };', 'A', 'Medium', 'C++ uses a base-specifier such as public Animal.'),

-- Q79
('C++', 'What is single inheritance?', 'One derived class inherits from one base class', 'One class inherits from many classes', 'Many classes inherit one class', 'No inheritance', 'A', 'Medium', 'Single inheritance has one base class and one derived class.'),

-- Q80
('C++', 'What is multiple inheritance?', 'One derived class inherits from multiple base classes', 'One class inherits one class', 'One base class only', 'No classes', 'A', 'Medium', 'Multiple inheritance allows a class to have more than one direct base class.'),

-- Q81
('C++', 'What is multilevel inheritance?', 'A class derives from a class that itself derives from another class', 'One class has multiple parents', 'Multiple unrelated classes', 'No inheritance', 'A', 'Medium', 'Multilevel inheritance forms an inheritance chain.'),

-- Q82
('C++', 'What is hierarchical inheritance?', 'Multiple derived classes inherit from the same base class', 'One class has multiple base classes', 'A class inherits itself', 'No derived classes', 'A', 'Medium', 'Hierarchical inheritance has one base and multiple derived classes.'),

-- Q83
('C++', 'What is hybrid inheritance?', 'Combination of multiple inheritance structures', 'Only single inheritance', 'Only multilevel inheritance', 'No inheritance', 'A', 'Medium', 'Hybrid inheritance combines two or more inheritance patterns.'),

-- Q84
('C++', 'What is method overriding?', 'Derived class provides a new implementation for a virtual function inherited from a base class', 'Defining two functions with different parameters', 'Renaming a method', 'Deleting a method', 'A', 'Medium', 'Overriding is associated with virtual dispatch and compatible base and derived member functions.'),

-- Q85
('C++', 'What is function overloading?', 'Same function name with different parameter lists', 'Same function body repeated', 'Inheritance', 'Encapsulation', 'A', 'Medium', 'Overloading provides multiple functions distinguished by their parameter lists.'),

-- Q86
('C++', 'Is return type alone sufficient to overload functions?', 'Yes', 'No', 'Only for void', 'Only for constructors', 'B', 'Medium', 'Functions cannot be overloaded solely by return type.'),

-- Q87
('C++', 'What is a virtual function?', 'Member function that supports dynamic dispatch through a base-class interface', 'Function that cannot execute', 'Static function', 'Macro', 'A', 'Medium', 'Virtual functions enable runtime polymorphism when called through appropriate base-class references or pointers.'),

-- Q88
('C++', 'Which keyword declares a virtual function?', 'virtual', 'dynamic', 'runtime', 'overrideonly', 'A', 'Medium', 'virtual introduces virtual dispatch for a member function.'),

-- Q89
('C++', 'Which keyword explicitly indicates overriding?', 'override', 'overload', 'virtualize', 'replace', 'A', 'Medium', 'override helps the compiler verify that a derived function overrides a virtual base function.'),

-- Q90
('C++', 'What is a pure virtual function?', 'Virtual function declared with = 0', 'Static function', 'Private function', 'Inline function', 'A', 'Medium', 'A pure virtual function is declared using = 0.'),

-- Q91
('C++', 'What is an abstract class?', 'A class that cannot be instantiated directly', 'A class with no variables', 'A class with only static functions', 'A class with no methods', 'A', 'Medium', 'A class with at least one pure virtual function is abstract.'),

-- Q92
('C++', 'Can an abstract class be instantiated directly?', 'Yes', 'No', 'Only using new', 'Only using malloc', 'B', 'Medium', 'Abstract classes cannot be directly instantiated.'),

-- Q93
('C++', 'What is a friend function?', 'Non-member function granted access to private or protected members', 'Always a member function', 'Constructor', 'Destructor', 'A', 'Medium', 'A friend function is not a member but can access permitted private or protected members.'),

-- Q94
('C++', 'Which keyword declares a friend function?', 'friend', 'trusted', 'access', 'allow', 'A', 'Medium', 'friend grants special access.'),

-- Q95
('C++', 'What is a static data member?', 'Class member shared by all objects of the class', 'Separate copy for every object', 'Local variable only', 'Constant macro', 'A', 'Medium', 'A static data member has one shared instance associated with the class.'),

-- Q96
('C++', 'What is a static member function?', 'Member function associated with the class rather than a particular object', 'Function that cannot be called', 'Constructor only', 'Destructor only', 'A', 'Medium', 'Static member functions can be called through the class and have no this pointer.'),

-- Q97
('C++', 'Can a static member function directly access non-static data members?', 'Yes', 'No', 'Only through this', 'Always through super', 'B', 'Medium', 'A static member function has no implicit this pointer.'),

-- Q98
('C++', 'What is the this pointer?', 'Pointer to the current object in a non-static member function', 'Pointer to the class definition', 'Pointer to the compiler', 'Global pointer', 'A', 'Medium', 'this refers to the current object.'),

-- Q99
('C++', 'Can this be used in a static member function?', 'Yes', 'No', 'Only with static_cast', 'Only in constructors', 'B', 'Medium', 'Static member functions do not operate with a current object.'),

-- Q100
('C++', 'What is a namespace used for?', 'Organizing names and avoiding naming conflicts', 'Allocating memory', 'Creating loops', 'Opening files', 'A', 'Medium', 'Namespaces help organize identifiers and prevent collisions.'),


-- =========================================================
-- STL, Templates, Pointers & Memory — Q101 to Q150
-- =========================================================

-- Q101
('C++', 'What does STL stand for?', 'Standard Template Library', 'Simple Type Library', 'System Template Language', 'Standard Tool List', 'A', 'Medium', 'STL is the collection of standard containers, algorithms, iterators, and related components.'),

-- Q102
('C++', 'Which STL container stores elements in contiguous memory?', 'vector', 'list', 'map', 'set', 'A', 'Medium', 'std::vector stores elements contiguously.'),

-- Q103
('C++', 'Which header provides std::vector?', 'vector', 'arraylist', 'list', 'container', 'A', 'Medium', 'std::vector is declared in vector.'),

-- Q104
('C++', 'Which vector function adds an element at the end?', 'push_back()', 'add_end()', 'append_element()', 'insert_end_only()', 'A', 'Medium', 'push_back() appends an element to the vector.'),

-- Q105
('C++', 'Which function removes the last vector element?', 'pop_back()', 'remove_last()', 'delete_end()', 'erase_last_only()', 'A', 'Medium', 'pop_back() removes the last element.'),

-- Q106
('C++', 'Which function returns the number of elements in a vector?', 'size()', 'length()', 'count()', 'elements()', 'A', 'Medium', 'size() returns the number of elements.'),

-- Q107
('C++', 'What does vector::capacity() represent?', 'Number of elements the allocated storage can hold without reallocation', 'Number of elements currently stored', 'Total bytes of the program', 'Maximum integer value', 'A', 'Medium', 'Capacity indicates the amount of allocated storage available for elements.'),

-- Q108
('C++', 'Which container is a doubly linked list?', 'list', 'vector', 'array', 'stack', 'A', 'Medium', 'std::list is typically implemented as a doubly linked list.'),

-- Q109
('C++', 'Which container provides double-ended queue functionality?', 'deque', 'stack', 'map', 'set', 'A', 'Medium', 'std::deque supports efficient insertion and removal at both ends.'),

-- Q110
('C++', 'Which container follows LIFO semantics?', 'stack', 'queue', 'vector', 'map', 'A', 'Medium', 'A stack follows Last-In, First-Out.'),

-- Q111
('C++', 'Which container follows FIFO semantics?', 'queue', 'stack', 'set', 'map', 'A', 'Medium', 'A queue follows First-In, First-Out.'),

-- Q112
('C++', 'Which container provides priority-based access?', 'priority_queue', 'queue', 'stack', 'list', 'A', 'Medium', 'priority_queue provides access to the highest-priority element according to its comparison.'),

-- Q113
('C++', 'Which STL container stores unique sorted keys?', 'set', 'vector', 'list', 'deque', 'A', 'Medium', 'std::set stores unique keys in sorted order.'),

-- Q114
('C++', 'Which container allows duplicate sorted keys?', 'multiset', 'set', 'unordered_set', 'map', 'A', 'Medium', 'multiset permits equivalent keys.'),

-- Q115
('C++', 'Which container stores key-value pairs in sorted key order?', 'map', 'vector', 'stack', 'set', 'A', 'Medium', 'std::map stores key-value pairs ordered by key.'),

-- Q116
('C++', 'Which container allows duplicate keys in sorted order?', 'multimap', 'map', 'set', 'unordered_map', 'A', 'Medium', 'multimap permits multiple elements with equivalent keys.'),

-- Q117
('C++', 'Which containers use hashing rather than ordered tree-like organization?', 'unordered_map and unordered_set', 'map and set', 'list and vector', 'stack and queue', 'A', 'Medium', 'Unordered associative containers use hash-based organization.'),

-- Q118
('C++', 'What is an iterator?', 'Object used to traverse elements of a container', 'A compiler', 'A class constructor', 'A memory allocator only', 'A', 'Medium', 'Iterators provide a generalized way to access container elements.'),

-- Q119
('C++', 'Which function returns an iterator to the first element?', 'begin()', 'first()', 'start()', 'front_iterator()', 'A', 'Medium', 'begin() returns an iterator to the beginning.'),

-- Q120
('C++', 'Which function returns an iterator representing one past the last element?', 'end()', 'last()', 'finish()', 'after()', 'A', 'Medium', 'end() points one position past the final element.'),

-- Q121
('C++', 'Which algorithm sorts a range?', 'sort()', 'arrange()', 'ordering()', 'sort_range_only()', 'A', 'Medium', 'std::sort() sorts elements in a range.'),

-- Q122
('C++', 'Which header provides many standard algorithms?', 'algorithm', 'algorithms', 'sort', 'stl', 'A', 'Medium', 'Standard algorithms such as sort, find, and reverse are declared in algorithm.'),

-- Q123
('C++', 'Which algorithm searches for a value in a range?', 'find()', 'searchvalue()', 'locate()', 'lookup()', 'A', 'Medium', 'std::find() searches for an element in a range.'),

-- Q124
('C++', 'What is a template?', 'Mechanism for writing generic code', 'A compiler setting', 'A runtime object only', 'A file extension', 'A', 'Medium', 'Templates allow classes and functions to operate with different types.'),

-- Q125
('C++', 'Which keyword introduces a template declaration?', 'template', 'generic', 'typenameonly', 'type', 'A', 'Medium', 'C++ uses the template keyword.'),

-- Q126
('C++', 'Which keyword commonly introduces a type template parameter?', 'typename', 'type', 'datatype', 'generic', 'A', 'Medium', 'typename can introduce a type parameter in a template parameter list.'),

-- Q127
('C++', 'Can a function template work with different data types?', 'Yes', 'No', 'Only integers', 'Only strings', 'A', 'Medium', 'Function templates can be instantiated for compatible types.'),

-- Q128
('C++', 'What is template specialization?', 'Providing a specific implementation for a template for particular arguments', 'Deleting a template', 'Converting a template to a macro', 'Hiding a template', 'A', 'Medium', 'Specialization customizes template behavior for particular types or values.'),

-- Q129
('C++', 'What is a pointer?', 'Variable that stores an address', 'A class only', 'A function only', 'A reference only', 'A', 'Medium', 'A pointer stores an address of an object or function as appropriate.'),

-- Q130
('C++', 'Which operator gets the address of an object?', '&', '*', '%', '#', 'A', 'Medium', 'Unary & produces an address.'),

-- Q131
('C++', 'Which operator dereferences a pointer?', '*', '&', '->', '.', 'A', 'Medium', 'Unary * accesses the pointed-to object.'),

-- Q132
('C++', 'Which operator accesses a member through an object?', '.', '->', '::', '#', 'A', 'Medium', 'The dot operator accesses members directly through an object.'),

-- Q133
('C++', 'Which operator accesses a member through a pointer to an object?', '->', '.', '::', '=>', 'A', 'Medium', '-> combines pointer dereferencing with member access.'),

-- Q134
('C++', 'What is a reference?', 'An alias for an existing object', 'A separate pointer object always', 'A class', 'A namespace', 'A', 'Medium', 'A reference provides an alternative name for an existing object.'),

-- Q135
('C++', 'Which symbol declares a reference?', '&', '*', '@', '%', 'A', 'Medium', 'For example, int &r = x; declares r as a reference to x.'),

-- Q136
('C++', 'Can a reference normally be reseated to refer to another object?', 'Yes', 'No', 'Only with reassign()', 'Only for integers', 'B', 'Medium', 'A reference is bound to an object after initialization.'),

-- Q137
('C++', 'What is dynamic memory allocation in C++?', 'Obtaining storage during runtime', 'Creating a header', 'Compiling code', 'Defining namespaces', 'A', 'Medium', 'Dynamic allocation obtains storage while the program executes.'),

-- Q138
('C++', 'Which operator allocates a single object dynamically?', 'new', 'malloc', 'alloc', 'create', 'A', 'Medium', 'new dynamically creates an object.'),

-- Q139
('C++', 'Which operator releases an object created with scalar new?', 'delete', 'free', 'remove', 'destroy', 'A', 'Medium', 'delete destroys a single dynamically allocated object.'),

-- Q140
('C++', 'Which operator allocates an array dynamically?', 'new[]', 'arraynew', 'alloc[]', 'create[]', 'A', 'Medium', 'new[] allocates an array.'),

-- Q141
('C++', 'Which operator releases an array created with new[]?', 'delete[]', 'delete only', 'free[]', 'remove[]', 'A', 'Medium', 'Arrays allocated with new[] must be released using delete[].'),

-- Q142
('C++', 'What is a memory leak?', 'Allocated memory that is not released and becomes unreachable', 'A syntax error', 'A compiler warning only', 'A file error', 'A', 'Medium', 'Leaked dynamic memory remains allocated without a usable reference.'),

-- Q143
('C++', 'What is RAII?', 'Resource Acquisition Is Initialization', 'Runtime Allocation Is Internal', 'Resource Access Is Immediate', 'Random Allocation In Initialization', 'A', 'Medium', 'RAII ties resource lifetime to object lifetime.'),

-- Q144
('C++', 'Which C++ feature is commonly used to manage resources automatically?', 'Smart pointers', 'Raw arrays only', 'Macros only', 'Global variables', 'A', 'Medium', 'Smart pointers manage dynamically allocated objects using RAII.'),

-- Q145
('C++', 'Which smart pointer provides exclusive ownership?', 'unique_ptr', 'shared_ptr', 'weak_ptr', 'exclusive_pointer', 'A', 'Medium', 'std::unique_ptr represents exclusive ownership.'),

-- Q146
('C++', 'Which smart pointer supports shared ownership?', 'shared_ptr', 'unique_ptr', 'weak_ptr', 'common_ptr', 'A', 'Medium', 'std::shared_ptr uses reference counting for shared ownership.'),

-- Q147
('C++', 'Which smart pointer does not own the referenced object?', 'weak_ptr', 'unique_ptr', 'shared_ptr', 'owner_ptr', 'A', 'Medium', 'std::weak_ptr observes an object managed by shared_ptr without owning it.'),

-- Q148
('C++', 'Which header provides smart pointers?', 'memory', 'pointer', 'smart', 'ptr', 'A', 'Medium', 'Smart pointer classes are provided by memory.'),

-- Q149
('C++', 'What is a dangling pointer?', 'Pointer referring to an object whose lifetime has ended', 'Pointer initialized to a valid object', 'Pointer to a constant only', 'Pointer to a class definition', 'A', 'Medium', 'A dangling pointer no longer points to a live object.'),

-- Q150
('C++', 'What is a null pointer?', 'Pointer representing no valid object or function address', 'Pointer to integer zero object always', 'Pointer to the first array element', 'Uninitialized pointer', 'A', 'Medium', 'A null pointer does not point to a valid object or function.'),


-- =========================================================
-- Exceptions, Files, Modern C++ & Advanced Concepts — Q151 to Q200
-- =========================================================

-- Q151
('C++', 'What is exception handling?', 'Mechanism for handling exceptional runtime conditions', 'Memory allocation', 'Class inheritance only', 'Compilation', 'A', 'Hard', 'Exception handling separates exceptional-condition handling from normal program flow.'),

-- Q152
('C++', 'Which keyword starts an exception-handling block?', 'try', 'check', 'handle', 'attempt', 'A', 'Hard', 'Code that may throw an exception is placed in a try block.'),

-- Q153
('C++', 'Which keyword throws an exception?', 'throw', 'raise', 'exception', 'send', 'A', 'Hard', 'throw transfers control to an appropriate handler.'),

-- Q154
('C++', 'Which keyword catches an exception?', 'catch', 'handle', 'except', 'receive', 'A', 'Hard', 'catch defines an exception handler.'),

-- Q155
('C++', 'What does catch(...) mean?', 'Catches an exception of any type', 'Catches only integers', 'Catches no exceptions', 'Throws an exception', 'A', 'Hard', 'An ellipsis handler can catch any exception type.'),

-- Q156
('C++', 'What happens if an exception is not handled?', 'It may lead to std::terminate()', 'It is always ignored', 'It becomes a comment', 'It automatically retries', 'A', 'Hard', 'If exception handling cannot find a suitable handler, program termination is normally initiated.'),

-- Q157
('C++', 'Which standard exception indicates an invalid argument?', 'std::invalid_argument', 'std::bad_input', 'std::wrong_value', 'std::argument_error', 'A', 'Hard', 'std::invalid_argument represents an invalid argument condition.'),

-- Q158
('C++', 'Which header provides many standard exception classes?', 'stdexcept', 'exceptions', 'errors', 'exceptiontypes', 'A', 'Hard', 'stdexcept declares standard logic and runtime error classes.'),

-- Q159
('C++', 'Which stream is commonly used for file output?', 'ofstream', 'ifstream', 'fstreamin', 'fileoutstream', 'A', 'Hard', 'std::ofstream is used for output to files.'),

-- Q160
('C++', 'Which stream is commonly used for file input?', 'ifstream', 'ofstream', 'fileinput', 'fstreaminonly', 'A', 'Hard', 'std::ifstream is used for input from files.'),

-- Q161
('C++', 'Which stream can support both input and output?', 'fstream', 'iostreamfile', 'bothstream', 'fileio', 'A', 'Hard', 'std::fstream supports both input and output operations.'),

-- Q162
('C++', 'Which header provides file stream classes?', 'fstream', 'fileio', 'streams', 'files', 'A', 'Hard', 'fstream declares ifstream, ofstream, and fstream.'),

-- Q163
('C++', 'What does open() generally do for a file stream?', 'Associates the stream with a file', 'Deletes the file', 'Compiles the file', 'Renames the file', 'A', 'Hard', 'open() connects a file stream to a file.'),

-- Q164
('C++', 'Which function closes a file stream?', 'close()', 'end()', 'shutdown()', 'finishfile()', 'A', 'Hard', 'close() closes the associated file.'),

-- Q165
('C++', 'Which class is commonly used for strings in modern C++?', 'std::string', 'String', 'CStringOnly', 'text', 'A', 'Hard', 'std::string is the standard library string class.'),

-- Q166
('C++', 'Which header provides std::string?', 'string', 'stringlib', 'text', 'cstringonly', 'A', 'Hard', 'std::string is declared in string.'),

-- Q167
('C++', 'Which function returns the length of a std::string?', 'length()', 'strlen() only', 'sizeOfString()', 'countChars()', 'A', 'Hard', 'std::string::length() returns the number of characters.'),

-- Q168
('C++', 'Which function can append text to a std::string?', 'append()', 'addText()', 'concatOnly()', 'joinString()', 'A', 'Hard', 'append() adds characters to the string.'),

-- Q169
('C++', 'Which function accesses a character with bounds checking?', 'at()', 'getchar()', 'character()', 'safeCharOnly()', 'A', 'Hard', 'std::string::at() performs bounds checking and can throw std::out_of_range.'),

-- Q170
('C++', 'What is auto used for?', 'Type deduction for a variable declaration', 'Automatic garbage collection', 'Creating classes', 'Creating namespaces', 'A', 'Hard', 'auto lets the compiler deduce the variable type from its initializer.'),

-- Q171
('C++', 'What is nullptr?', 'C++ null pointer literal', 'Integer zero only', 'Empty string', 'Undefined pointer', 'A', 'Hard', 'nullptr represents a null pointer and has type std::nullptr_t.'),

-- Q172
('C++', 'What is a lambda expression?', 'Anonymous function object that can be defined inline', 'A class constructor', 'A pointer type', 'A namespace', 'A', 'Hard', 'Lambdas provide concise inline callable objects.'),

-- Q173
('C++', 'Which syntax begins a basic lambda?', '[]', '{}', '()', '<>', 'A', 'Hard', 'The capture clause of a lambda begins with [].'),

-- Q174
('C++', 'What is a lambda capture?', 'Specifies how surrounding variables are made available to the lambda', 'Captures keyboard input', 'Captures files', 'Captures exceptions only', 'A', 'Hard', 'Lambda captures control access to variables from the surrounding scope.'),

-- Q175
('C++', 'What does [&] generally mean in a lambda capture?', 'Capture automatic variables by reference', 'Capture nothing', 'Capture all by value', 'Capture only this', 'A', 'Hard', '[&] captures eligible automatic variables by reference.'),

-- Q176
('C++', 'What does [=] generally mean?', 'Capture automatic variables by value', 'Capture all by reference', 'Capture nothing', 'Capture only static variables', 'A', 'Hard', '[=] requests value capture of odr-usable automatic variables as applicable.'),

-- Q177
('C++', 'What is constexpr used for?', 'Declaring entities that can participate in compile-time evaluation when requirements are met', 'Creating runtime-only variables', 'Creating pointers', 'Opening files', 'A', 'Hard', 'constexpr enables compile-time evaluation where the expression and context permit it.'),

-- Q178
('C++', 'What is consteval?', 'Specifies an immediate function that must be evaluated at compile time when called', 'Creates a constant pointer only', 'Defines a class', 'Allocates memory', 'A', 'Hard', 'consteval is used for immediate functions.'),

-- Q179
('C++', 'What is constinit primarily used for?', 'Requiring static or thread-storage initialization to be constant initialization', 'Creating immutable objects everywhere', 'Creating dynamic memory', 'Defining templates', 'A', 'Hard', 'constinit helps ensure required static or thread-storage initialization is constant initialization.'),

-- Q180
('C++', 'What is move semantics?', 'Transferring resources from one object to another when appropriate', 'Moving source files', 'Moving classes between namespaces', 'Copying every object', 'A', 'Hard', 'Move semantics can transfer ownership or resources instead of performing expensive deep copies.'),

-- Q181
('C++', 'Which reference type is commonly used for move operations?', 'Rvalue reference', 'Character reference', 'Static reference', 'File reference', 'A', 'Hard', 'Rvalue references use &&.'),

-- Q182
('C++', 'Which utility performs an unconditional cast to an rvalue reference?', 'std::move', 'std::transfer', 'std::shift', 'std::relocate', 'A', 'Hard', 'std::move casts an expression to an xvalue, enabling move overloads where available.'),

-- Q183
('C++', 'What is copy assignment?', 'Assigning the state of one existing object to another existing object', 'Creating a new object only', 'Calling a destructor', 'Allocating memory', 'A', 'Hard', 'Copy assignment updates an already-existing object state from another object.'),

-- Q184
('C++', 'What is a move constructor?', 'Constructor that can initialize an object from a suitable rvalue object', 'Constructor that copies files', 'Destructor', 'Static constructor', 'A', 'Hard', 'A move constructor can transfer resources from a temporary or other suitable rvalue object.'),

-- Q185
('C++', 'What is the Rule of Three?', 'If a class needs certain copy or destruction special members, it may need a destructor, copy constructor, and copy assignment operator', 'Three inheritance levels', 'Three constructors only', 'Three namespaces', 'A', 'Hard', 'The Rule of Three is a guideline for resource-managing classes.'),

-- Q186
('C++', 'What is the Rule of Five?', 'Extends the Rule of Three by considering move constructor and move assignment operator', 'Requires five constructors', 'Requires five classes', 'Requires five pointers', 'A', 'Hard', 'The Rule of Five includes destructor, copy constructor, copy assignment, move constructor, and move assignment.'),

-- Q187
('C++', 'What is the Rule of Zero?', 'Prefer types whose resource management is handled by member objects, avoiding custom special-member management', 'Use zero variables', 'Avoid constructors', 'Use zero classes', 'A', 'Hard', 'The Rule of Zero encourages RAII members so custom resource-management special members are unnecessary.'),

-- Q188
('C++', 'What is an inline function?', 'Function for which multiple-definition and linkage rules allow inline semantics; compilers may or may not inline its call', 'Function that must always be inserted into code', 'Static function only', 'Macro only', 'A', 'Hard', 'inline affects language linkage and ODR rules; it does not guarantee call inlining.'),

-- Q189
('C++', 'Which keyword suggests inline semantics?', 'inline', 'fast', 'insert', 'expand', 'A', 'Hard', 'The inline specifier provides inline semantics.'),

-- Q190
('C++', 'What is operator overloading?', 'Giving operators behavior for user-defined types', 'Changing operator precedence', 'Creating new operators with arbitrary symbols', 'Removing operators', 'A', 'Hard', 'Existing C++ operators can be overloaded for appropriate user-defined types.'),

-- Q191
('C++', 'Can C++ create an entirely new operator symbol?', 'Yes', 'No', 'Only inside classes', 'Only for pointers', 'B', 'Hard', 'C++ allows overloading existing operators, not inventing arbitrary new operator symbols.'),

-- Q192
('C++', 'Which operator cannot be overloaded?', '+', '==', '::', '[]', 'C', 'Hard', 'The scope resolution operator :: cannot be overloaded.'),

-- Q193
('C++', 'What is type casting?', 'Converting a value or expression to another type', 'Creating a class', 'Opening a file', 'Allocating an array', 'A', 'Hard', 'C++ provides several explicit cast operators.'),

-- Q194
('C++', 'Which cast is commonly used for well-defined compile-time conversions?', 'static_cast', 'dynamic_cast', 'reinterpret_cast', 'memory_cast', 'A', 'Hard', 'static_cast handles many compile-time checked conversions.'),

-- Q195
('C++', 'Which cast is associated with runtime-checked downcasting in polymorphic class hierarchies?', 'dynamic_cast', 'static_cast', 'const_cast', 'reinterpret_cast', 'A', 'Hard', 'dynamic_cast can perform runtime-checked conversions in polymorphic hierarchies.'),

-- Q196
('C++', 'Which cast can add or remove cv-qualification?', 'const_cast', 'dynamic_cast', 'static_cast only', 'type_cast', 'A', 'Hard', 'const_cast changes cv-qualification.'),

-- Q197
('C++', 'Which cast performs low-level reinterpretation between types?', 'reinterpret_cast', 'dynamic_cast', 'const_cast', 'static_cast only', 'A', 'Hard', 'reinterpret_cast is intended for low-level reinterpretation and should be used carefully.'),

-- Q198
('C++', 'What is a segmentation fault or access violation commonly associated with?', 'Invalid memory access', 'Correct object construction', 'Valid inheritance', 'Function overloading', 'A', 'Hard', 'Invalid memory access can cause an operating-system-level memory-access fault.'),

-- Q199
('C++', 'Which practice generally improves modern C++ memory safety?', 'Prefer RAII and appropriate smart pointers', 'Use raw new everywhere', 'Never release dynamic memory', 'Use uninitialized pointers', 'A', 'Hard', 'RAII and suitable smart pointers reduce manual resource-management errors.'),

-- Q200
('C++', 'Which is generally considered a good C++ programming practice?', 'Use clear design, RAII, appropriate STL facilities, and avoid unnecessary manual memory management', 'Ignore compiler warnings', 'Use uninitialized variables', 'Access memory outside object bounds', 'A', 'Hard', 'Modern C++ practices emphasize safety, maintainability, resource management, and appropriate standard-library use.');


-- =========================================================
-- Verification 1: Total C++ questions
-- Expected result: 200
-- =========================================================

SELECT COUNT(*) AS cpp_questions
FROM questions
WHERE skill = 'C++';


-- =========================================================
-- Verification 2: Unique C++ questions
-- Expected result: 200
-- =========================================================

SELECT COUNT(DISTINCT question) AS unique_cpp_questions
FROM questions
WHERE skill = 'C++';


-- =========================================================
-- Verification 3: All skills question count
-- =========================================================

SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
