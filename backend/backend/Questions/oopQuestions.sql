USE ai_interviewer;

-- OOP 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'OOP';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- =========================================================
-- OOP FUNDAMENTALS & CONCEPTS — Q1-Q50
-- =========================================================

-- Q1
('OOP', 'What does OOP stand for?', 'Object-Oriented Programming', 'Object-Operating Program', 'Object-Oriented Process', 'Operating Object Programming', 'A', 'Easy', 'OOP stands for Object-Oriented Programming.'),

-- Q2
('OOP', 'What is the main focus of OOP?', 'Functions only', 'Objects and their interactions', 'Hardware', 'Database tables', 'B', 'Easy', 'OOP organizes programs around objects containing data and behavior.'),

-- Q3
('OOP', 'Which is a fundamental OOP concept?', 'Encapsulation', 'Compilation', 'Linking', 'Parsing', 'A', 'Easy', 'Encapsulation is one of the core principles of OOP.'),

-- Q4
('OOP', 'Which of the following is NOT a core OOP principle?', 'Abstraction', 'Encapsulation', 'Inheritance', 'Compilation', 'D', 'Easy', 'Compilation is a language-processing activity, not an OOP principle.'),

-- Q5
('OOP', 'An object is best described as:', 'A blueprint', 'An instance of a class', 'A compiler', 'A loop', 'B', 'Easy', 'An object is a concrete instance created from a class.'),

-- Q6
('OOP', 'A class is primarily a:', 'Blueprint for objects', 'Memory address', 'Database', 'Loop structure', 'A', 'Easy', 'A class defines the properties and behaviors objects can have.'),

-- Q7
('OOP', 'Which concept combines data and methods into one unit?', 'Inheritance', 'Encapsulation', 'Polymorphism', 'Abstraction', 'B', 'Easy', 'Encapsulation bundles data and related methods together.'),

-- Q8
('OOP', 'Which concept hides unnecessary implementation details?', 'Abstraction', 'Inheritance', 'Association', 'Overloading', 'A', 'Easy', 'Abstraction exposes essential features while hiding unnecessary details.'),

-- Q9
('OOP', 'Which OOP feature allows a class to acquire properties from another class?', 'Encapsulation', 'Inheritance', 'Abstraction', 'Composition', 'B', 'Easy', 'Inheritance enables reuse and extension of an existing class.'),

-- Q10
('OOP', 'Polymorphism means:', 'One interface, many forms', 'One object only', 'Multiple databases', 'Hidden data', 'A', 'Easy', 'Polymorphism allows the same operation to behave differently depending on context.'),

-- Q11
('OOP', 'Which principle protects an object internal state?', 'Encapsulation', 'Inheritance', 'Compilation', 'Recursion', 'A', 'Easy', 'Encapsulation controls access to internal data.'),

-- Q12
('OOP', 'Which OOP concept improves code reuse through parent-child relationships?', 'Inheritance', 'Abstraction', 'Casting', 'Parsing', 'A', 'Easy', 'Inheritance lets derived classes reuse existing functionality.'),

-- Q13
('OOP', 'Which is an example of an object?', 'Car as a class', 'A particular car created from Car', 'A method definition', 'A variable type', 'B', 'Easy', 'A particular car represents an instance of the Car class.'),

-- Q14
('OOP', 'Which represents behavior in an object?', 'Method', 'Attribute', 'Identifier', 'Constant', 'A', 'Easy', 'Methods define actions an object can perform.'),

-- Q15
('OOP', 'Which represents the state of an object?', 'Methods', 'Attributes', 'Loops', 'Operators', 'B', 'Easy', 'Attributes store information describing an object current state.'),

-- Q16
('OOP', 'What is an attribute?', 'Object data/property', 'Object constructor only', 'Class name', 'Package', 'A', 'Easy', 'Attributes represent data associated with an object or class.'),

-- Q17
('OOP', 'What is a method?', 'A behavior/function associated with a class or object', 'A memory address', 'A database', 'A variable type', 'A', 'Easy', 'Methods define operations performed by objects.'),

-- Q18
('OOP', 'Which relationship represents an is-a relationship?', 'Association', 'Inheritance', 'Aggregation', 'Composition', 'B', 'Easy', 'Inheritance commonly represents an is-a relationship.'),

-- Q19
('OOP', 'Which relationship commonly represents a has-a relationship?', 'Inheritance', 'Composition', 'Polymorphism', 'Abstraction', 'B', 'Easy', 'Composition models one object containing or owning another.'),

-- Q20
('OOP', 'What is object state?', 'Values of its attributes at a particular time', 'Its source-code file', 'Its class name', 'Its compiler', 'A', 'Easy', 'State is represented by the current values of an object properties.'),

-- Q21
('OOP', 'Which principle separates interface from implementation?', 'Abstraction', 'Inheritance', 'Aggregation', 'Association', 'A', 'Easy', 'Abstraction separates what an object does from how it does it.'),

-- Q22
('OOP', 'Which OOP concept helps prevent direct unwanted access to data?', 'Encapsulation', 'Polymorphism', 'Inheritance', 'Recursion', 'A', 'Easy', 'Access controls and encapsulation restrict direct access to internal state.'),

-- Q23
('OOP', 'Which is a major benefit of OOP?', 'Modularity', 'Guaranteed zero bugs', 'No memory usage', 'No testing required', 'A', 'Easy', 'OOP can divide systems into manageable classes and objects.'),

-- Q24
('OOP', 'Which programming style mainly organizes programs around procedures?', 'Procedural programming', 'OOP', 'Declarative programming', 'Functional programming', 'A', 'Easy', 'Procedural programming emphasizes procedures or functions.'),

-- Q25
('OOP', 'OOP generally organizes software around:', 'Objects', 'CPU registers', 'Files only', 'SQL queries', 'A', 'Easy', 'Objects are the primary units of organization in OOP.'),

-- Q26
('OOP', 'What does message passing between objects mean?', 'Objects communicate by invoking operations', 'Objects exchange source files', 'Objects change the compiler', 'Objects delete classes', 'A', 'Easy', 'Objects communicate by requesting operations from one another.'),

-- Q27
('OOP', 'Which concept allows different classes to respond to the same operation differently?', 'Polymorphism', 'Encapsulation', 'Composition', 'Aggregation', 'A', 'Easy', 'Polymorphism supports different implementations behind a common operation.'),

-- Q28
('OOP', 'Which principle encourages exposing only what is necessary?', 'Abstraction', 'Inheritance', 'Association', 'Overloading', 'A', 'Easy', 'Abstraction reduces unnecessary implementation exposure.'),

-- Q29
('OOP', 'Which is usually defined before objects are created?', 'Class', 'Instance', 'Runtime object', 'Reference value', 'A', 'Easy', 'A class provides the structure from which objects are instantiated.'),

-- Q30
('OOP', 'What is instantiation?', 'Creating an object from a class', 'Deleting a class', 'Compiling a method', 'Hiding a variable', 'A', 'Easy', 'Instantiation creates an instance of a class.'),

-- Q31
('OOP', 'What is object identity?', 'The property that distinguishes one object from another', 'Objects method name', 'Objects class keyword', 'Objects source code', 'A', 'Easy', 'Identity allows individual objects to be distinguished even with similar state.'),

-- Q32
('OOP', 'Which OOP principle is most closely related to data hiding?', 'Encapsulation', 'Inheritance', 'Polymorphism', 'Association', 'A', 'Easy', 'Encapsulation supports controlled access and data hiding.'),

-- Q33
('OOP', 'What does modularity mean in OOP?', 'Dividing a system into manageable components', 'Removing all classes', 'Using one large function', 'Avoiding objects', 'A', 'Easy', 'Modularity breaks software into understandable and maintainable units.'),

-- Q34
('OOP', 'Which is a potential disadvantage of poorly designed OOP?', 'Excessive complexity', 'Better reuse', 'Better organization', 'Improved maintainability', 'A', 'Easy', 'Poor abstractions and excessive relationships can make systems complex.'),

-- Q35
('OOP', 'Which principle is primarily concerned with hiding implementation details?', 'Abstraction', 'Association', 'Inheritance', 'Aggregation', 'A', 'Easy', 'Abstraction hides implementation details behind a simpler interface.'),

-- Q36
('OOP', 'Which term describes a class derived from another class?', 'Subclass', 'Package', 'Interface', 'Module', 'A', 'Easy', 'A subclass inherits from a superclass or base class.'),

-- Q37
('OOP', 'Another name for a parent class is:', 'Superclass', 'Child class', 'Instance', 'Object', 'A', 'Easy', 'Superclass is another common name for a parent or base class.'),

-- Q38
('OOP', 'Another name for a child class is:', 'Subclass', 'Superclass', 'Interface', 'Module', 'A', 'Easy', 'A subclass derives from another class.'),

-- Q39
('OOP', 'What is coupling?', 'Degree of dependency between components', 'Number of methods in a class', 'Number of objects created', 'Amount of memory used', 'A', 'Easy', 'Coupling measures how strongly components depend on each other.'),

-- Q40
('OOP', 'Good software design generally prefers:', 'Low coupling', 'High unnecessary coupling', 'No classes', 'Global variables everywhere', 'A', 'Easy', 'Low coupling makes components easier to modify and test independently.'),

-- Q41
('OOP', 'What is cohesion?', 'How closely related responsibilities within a module are', 'Dependency between modules', 'Number of objects', 'Number of constructors', 'A', 'Easy', 'High cohesion means a component has focused, related responsibilities.'),

-- Q42
('OOP', 'Good design generally aims for:', 'High cohesion', 'Low cohesion', 'Maximum dependencies', 'One huge class', 'A', 'Easy', 'High cohesion improves clarity and maintainability.'),

-- Q43
('OOP', 'Which approach often favors combining objects instead of extending classes?', 'Composition', 'Inheritance', 'Recursion', 'Casting', 'A', 'Easy', 'Composition builds behavior by combining objects.'),

-- Q44
('OOP', 'Which principle is often summarized as prefer composition over inheritance?', 'Object design principle', 'Database normalization', 'Compilation rule', 'Syntax rule', 'A', 'Easy', 'Composition can reduce rigid inheritance hierarchies.'),

-- Q45
('OOP', 'What is an interface?', 'A contract describing available operations', 'A database table', 'A memory address', 'A compiler', 'A', 'Easy', 'An interface defines a contract that implementing classes follow.'),

-- Q46
('OOP', 'What is an abstract class?', 'A class intended as a base abstraction and generally not instantiated directly', 'A class with no methods', 'A class containing only variables', 'A private class', 'A', 'Easy', 'Abstract classes provide common abstraction and may define abstract operations.'),

-- Q47
('OOP', 'What is dynamic dispatch?', 'Selecting an overridden implementation at runtime', 'Compiling source code', 'Creating variables', 'Allocating a database', 'A', 'Easy', 'Dynamic dispatch determines the actual method implementation during runtime.'),

-- Q48
('OOP', 'What is static binding?', 'Binding a call at compile time', 'Binding only after program termination', 'Binding through databases', 'Binding objects permanently', 'A', 'Easy', 'Static binding resolves the target operation during compilation.'),

-- Q49
('OOP', 'Which is commonly associated with runtime polymorphism?', 'Method overriding', 'Method overloading only', 'Variable declaration', 'Constructor definition', 'A', 'Easy', 'Overriding enables a subclass implementation to be selected at runtime.'),

-- Q50
('OOP', 'Which is commonly associated with compile-time polymorphism?', 'Method overloading', 'Dynamic dispatch', 'Runtime overriding', 'Object destruction', 'A', 'Easy', 'Overloaded methods are selected based on compile-time information.'),


-- =========================================================
-- CLASSES, OBJECTS & ENCAPSULATION — Q51-Q100
-- =========================================================

-- Q51
('OOP', 'What is the purpose of a constructor?', 'Initialize an object', 'Delete a class', 'Compile a program', 'Hide all methods', 'A', 'Medium', 'Constructors initialize objects when they are created.'),

-- Q52
('OOP', 'A destructor is primarily used to:', 'Perform cleanup when an object is destroyed', 'Create objects', 'Define inheritance', 'Overload operators', 'A', 'Medium', 'Destructors can release resources associated with an object lifetime.'),

-- Q53
('OOP', 'Which access modifier generally allows access from anywhere permitted by the language?', 'Public', 'Private', 'Protected', 'Internal-only', 'A', 'Medium', 'Public members are generally accessible through the class interface.'),

-- Q54
('OOP', 'Which access modifier is most restrictive for class members?', 'Private', 'Public', 'Protected', 'Global', 'A', 'Medium', 'Private members are accessible only within the class under typical OOP rules.'),

-- Q55
('OOP', 'Protected members are generally accessible within:', 'The class and its subclasses', 'Only unrelated classes', 'Only databases', 'Only the compiler', 'A', 'Medium', 'Protected access is intended for the class hierarchy.'),

-- Q56
('OOP', 'Why are getters and setters commonly used?', 'To control access to object data', 'To compile code', 'To create databases', 'To avoid classes', 'A', 'Medium', 'Accessor methods can validate and control reading or changing state.'),

-- Q57
('OOP', 'What is a getter?', 'Method used to retrieve a value', 'Method used only to delete objects', 'Constructor', 'Class declaration', 'A', 'Medium', 'A getter provides controlled access to a value.'),

-- Q58
('OOP', 'What is a setter?', 'Method used to modify a value', 'Method used to create a compiler', 'Class destructor', 'Interface', 'A', 'Medium', 'A setter changes object state, often after validation.'),

-- Q59
('OOP', 'Which design better supports encapsulation?', 'Private fields with controlled methods', 'All fields public', 'Global variables', 'No methods', 'A', 'Medium', 'Private state with controlled access protects object invariants.'),

-- Q60
('OOP', 'What is an object reference?', 'A way to refer to an object', 'A class definition', 'A constructor', 'A package', 'A', 'Medium', 'References allow programs to access existing objects.'),

-- Q61
('OOP', 'Can two objects of the same class have different attribute values?', 'Yes', 'No', 'Only in procedural programming', 'Only during compilation', 'A', 'Medium', 'Each object normally maintains its own instance state.'),

-- Q62
('OOP', 'What is an instance variable?', 'Variable belonging to an individual object', 'Variable belonging only to the compiler', 'Constant keyword', 'Package name', 'A', 'Medium', 'Instance variables represent state specific to each object.'),

-- Q63
('OOP', 'What is a class variable?', 'A variable associated with the class rather than each individual object', 'A local loop variable', 'A temporary compiler value', 'A database field', 'A', 'Medium', 'Class or static variables are shared at the class level.'),

-- Q64
('OOP', 'What is a static member generally associated with?', 'The class itself', 'Only one temporary object', 'The compiler only', 'A database', 'A', 'Medium', 'Static members belong to the class rather than a particular instance.'),

-- Q65
('OOP', 'What is method overloading?', 'Multiple methods with the same name but different parameter lists', 'Replacing a parent method in a subclass', 'Hiding a class', 'Deleting methods', 'A', 'Medium', 'Overloading provides multiple signatures for the same operation name.'),

-- Q66
('OOP', 'What is method overriding?', 'A subclass provides a new implementation of an inherited method', 'Two methods have different parameters', 'A class is deleted', 'A variable changes type', 'A', 'Medium', 'Overriding changes inherited behavior in a subclass.'),

-- Q67
('OOP', 'Which is important for valid method overloading?', 'Different parameter lists', 'Same parameters only', 'Different class names only', 'Different variable names inside the method', 'A', 'Medium', 'Overloaded methods must differ in their parameter signature according to language rules.'),

-- Q68
('OOP', 'Can return type alone normally distinguish overloaded methods?', 'No', 'Yes', 'Always', 'Only in databases', 'A', 'Medium', 'In common OOP languages, return type alone is insufficient for overloading.'),

-- Q69
('OOP', 'What is constructor overloading?', 'Having multiple constructors with different parameter lists', 'Replacing a method at runtime', 'Deleting constructors', 'Making a constructor private only', 'A', 'Medium', 'Constructor overloading allows different ways to initialize objects.'),

-- Q70
('OOP', 'What is a default constructor?', 'Constructor callable without required arguments', 'Destructor', 'Static method', 'Interface method', 'A', 'Medium', 'A default constructor can initialize an object without caller-supplied constructor arguments.'),

-- Q71
('OOP', 'What is parameterized construction?', 'Creating an object using constructor arguments', 'Creating an object without a class', 'Deleting parameters', 'Hiding attributes', 'A', 'Medium', 'Constructor parameters allow initial state to be supplied during object creation.'),

-- Q72
('OOP', 'What is constructor chaining?', 'One constructor invoking another constructor', 'One class deleting another', 'Two classes being unrelated', 'Multiple objects sharing memory', 'A', 'Medium', 'Constructor chaining reuses initialization logic.'),

-- Q73
('OOP', 'What does this commonly refer to?', 'Current object', 'Parent class only', 'Compiler', 'Database', 'A', 'Medium', 'this commonly refers to the current object instance.'),

-- Q74
('OOP', 'What is object initialization?', 'Giving an object its initial state', 'Destroying an object', 'Compiling an object', 'Removing a class', 'A', 'Medium', 'Initialization establishes valid initial values for an object.'),

-- Q75
('OOP', 'Why should object invariants be protected?', 'To keep objects in valid states', 'To increase coupling', 'To remove methods', 'To avoid constructors', 'A', 'Medium', 'Invariants are conditions that should remain true for a valid object.'),

-- Q76
('OOP', 'What is data hiding?', 'Restricting direct access to internal implementation or state', 'Deleting all data', 'Encrypting every file', 'Removing classes', 'A', 'Medium', 'Data hiding prevents inappropriate direct manipulation of internal details.'),

-- Q77
('OOP', 'Which is better for maintaining an objects rules?', 'Encapsulated state', 'Public unrestricted state', 'Global state', 'Duplicate state', 'A', 'Medium', 'Encapsulation lets the class enforce its own rules.'),

-- Q78
('OOP', 'What is an immutable object?', 'An object whose state cannot be changed after creation', 'An object with no methods', 'An object with public fields only', 'An object that cannot be referenced', 'A', 'Medium', 'Immutable objects retain the same state throughout their lifetime.'),

-- Q79
('OOP', 'One benefit of immutability is:', 'Easier reasoning about state', 'More hidden bugs', 'Higher accidental mutation', 'More global state', 'A', 'Medium', 'Immutable state reduces side effects and unexpected changes.'),

-- Q80
('OOP', 'What does object lifetime describe?', 'Period from object creation to destruction or reclamation', 'Number of methods in a class', 'Class size only', 'Compilation duration', 'A', 'Medium', 'Object lifetime is the period during which the object exists.'),

-- Q81
('OOP', 'What is composition?', 'A strong whole-part relationship', 'Method overloading', 'Inheritance only', 'Compile-time binding', 'A', 'Medium', 'Composition models ownership where the contained part is strongly associated with the whole.'),

-- Q82
('OOP', 'What is aggregation?', 'A weaker whole-part relationship', 'A constructor', 'A destructor', 'An access modifier', 'A', 'Medium', 'Aggregation represents a whole-part relationship where parts can often exist independently.'),

-- Q83
('OOP', 'Which relationship is typically stronger?', 'Composition', 'Aggregation', 'Dependency', 'Association', 'A', 'Medium', 'Composition generally implies stronger ownership and lifecycle dependence.'),

-- Q84
('OOP', 'What is association?', 'A general relationship between objects', 'A constructor', 'A data type', 'A compiler phase', 'A', 'Medium', 'Association represents a general connection between objects.'),

-- Q85
('OOP', 'What is multiplicity in object relationships?', 'Number of instances participating in a relationship', 'Number of methods', 'Number of classes compiled', 'Number of constructors', 'A', 'Medium', 'Multiplicity describes how many objects can participate in a relationship.'),

-- Q86
('OOP', 'What is a one-to-many relationship?', 'One object associated with multiple objects', 'One object with no class', 'One method with no parameters', 'One compiler with many languages', 'A', 'Medium', 'One object can be related to multiple instances of another type.'),

-- Q87
('OOP', 'What is a many-to-many relationship?', 'Multiple objects on each side can be associated', 'Only one object exists', 'No objects exist', 'One class inherits twice', 'A', 'Medium', 'Many-to-many relationships allow multiple instances to relate on both sides.'),

-- Q88
('OOP', 'What is dependency?', 'A relationship where one component relies on another', 'A type of inheritance only', 'A constructor', 'A private variable', 'A', 'Medium', 'Dependency indicates that one component requires another to perform some task.'),

-- Q89
('OOP', 'Which relationship is usually the loosest?', 'Dependency', 'Composition', 'Inheritance', 'Ownership', 'A', 'Medium', 'Dependency generally represents a temporary or usage-based relationship.'),

-- Q90
('OOP', 'What is an object-oriented model?', 'Representation of a system using objects and relationships', 'Database backup', 'Compiler output', 'Machine code', 'A', 'Medium', 'Object models represent entities, behavior, and relationships.'),

-- Q91
('OOP', 'What is responsibility in OOP?', 'A task or behavior assigned to an object or class', 'Memory address', 'Compiler setting', 'Database index', 'A', 'Medium', 'Responsibilities describe what a class or object should know or do.'),

-- Q92
('OOP', 'Which design approach assigns behavior to the object that owns the required information?', 'Responsibility-driven design', 'Random design', 'Procedural compilation', 'Database normalization', 'A', 'Medium', 'Responsibility-driven design places behavior close to relevant data.'),

-- Q93
('OOP', 'Why avoid excessive public fields?', 'They weaken encapsulation', 'They improve hiding', 'They reduce access', 'They create abstraction automatically', 'A', 'Medium', 'Public fields allow uncontrolled modification of internal state.'),

-- Q94
('OOP', 'What is a fluent interface?', 'An API designed to support readable chained method calls', 'A compiler', 'An inheritance type', 'A database schema', 'A', 'Medium', 'Fluent APIs commonly return objects to allow chained calls.'),

-- Q95
('OOP', 'What is an object pool?', 'A reusable collection of objects', 'A class hierarchy', 'A database query', 'An access modifier', 'A', 'Medium', 'Object pools reuse expensive-to-create objects.'),

-- Q96
('OOP', 'What is a factory method mainly used for?', 'Creating objects', 'Destroying classes', 'Encrypting data', 'Compiling programs', 'A', 'Medium', 'Factory methods centralize or abstract object creation.'),

-- Q97
('OOP', 'What is a value object?', 'Object primarily defined by its value rather than identity', 'Object defined only by memory address', 'Class with no attributes', 'Global variable', 'A', 'Medium', 'Value objects are considered equal when their values are equivalent.'),

-- Q98
('OOP', 'What is an entity object?', 'Object primarily distinguished by identity', 'Object with no identity', 'Static method', 'Interface only', 'A', 'Medium', 'Entities maintain identity even if their attributes change.'),

-- Q99
('OOP', 'What does encapsulated behavior mean?', 'Object controls operations on its own state', 'Any class can change all data', 'Methods are removed', 'Data is stored externally only', 'A', 'Medium', 'Encapsulated behavior keeps state management within appropriate object boundaries.'),

-- Q100
('OOP', 'Which principle helps keep classes focused?', 'Single Responsibility Principle', 'Multiple Inheritance Principle', 'Global State Principle', 'Maximum Coupling Principle', 'A', 'Medium', 'SRP encourages a class to have one primary responsibility.'),


-- =========================================================
-- INHERITANCE & POLYMORPHISM — Q101-Q150
-- =========================================================

-- Q101
('OOP', 'What is inheritance?', 'Mechanism for deriving a new class from an existing class', 'Object deletion', 'Data encryption', 'Compilation', 'A', 'Medium', 'Inheritance creates a parent-child class relationship.'),

-- Q102
('OOP', 'What is single inheritance?', 'One subclass directly inherits from one superclass', 'One class has many objects', 'One object has many methods', 'One method has many parameters', 'A', 'Medium', 'Single inheritance has one direct parent class.'),

-- Q103
('OOP', 'What is multilevel inheritance?', 'A class inherits from a class that itself inherits from another class', 'One class has multiple objects', 'Many unrelated classes', 'One method has many parameters', 'A', 'Medium', 'Multilevel inheritance forms a chain of inheritance.'),

-- Q104
('OOP', 'What is hierarchical inheritance?', 'Multiple subclasses inherit from one superclass', 'One subclass has multiple parents', 'Classes have no relationships', 'Objects inherit from methods', 'A', 'Medium', 'A single parent has multiple child classes.'),

-- Q105
('OOP', 'What is multiple inheritance?', 'A class inherits from multiple parent classes', 'A class has multiple methods', 'Multiple objects share one variable', 'Multiple constructors exist', 'A', 'Medium', 'Multiple inheritance gives a class more than one direct superclass in languages that support it.'),

-- Q106
('OOP', 'What is hybrid inheritance?', 'Combination of multiple inheritance structures', 'No inheritance', 'Only single inheritance', 'Object composition only', 'A', 'Medium', 'Hybrid inheritance combines two or more inheritance patterns.'),

-- Q107
('OOP', 'What is the is-a test useful for?', 'Evaluating whether inheritance may represent a valid relationship', 'Testing database queries', 'Checking syntax', 'Measuring memory', 'A', 'Medium', 'A subclass should conceptually be a specialized form of its superclass.'),

-- Q108
('OOP', 'Which relationship is usually better modeled with composition?', 'Has-a', 'Is-a', 'Compiles-a', 'Runs-a', 'A', 'Medium', 'Composition commonly represents ownership or containment.'),

-- Q109
('OOP', 'What is overriding?', 'Redefining inherited behavior in a subclass', 'Creating methods with different parameters', 'Creating a class', 'Hiding a variable', 'A', 'Medium', 'Overriding provides a specialized implementation of inherited behavior.'),

-- Q110
('OOP', 'What is overloading?', 'Same operation name with different signatures', 'Replacing inherited implementation', 'Deleting methods', 'Creating objects', 'A', 'Medium', 'Overloading provides multiple forms of an operation.'),

-- Q111
('OOP', 'Which polymorphism occurs through inheritance and overriding?', 'Runtime polymorphism', 'Compile-only polymorphism', 'Data polymorphism', 'Storage polymorphism', 'A', 'Medium', 'Runtime dispatch can select an overridden method.'),

-- Q112
('OOP', 'Which polymorphism is commonly achieved through overloading?', 'Compile-time polymorphism', 'Runtime-only polymorphism', 'Inheritance polymorphism', 'Object identity', 'A', 'Medium', 'The compiler chooses among overloaded signatures.'),

-- Q113
('OOP', 'What is dynamic binding?', 'Resolving a method implementation at runtime', 'Resolving variables at compile time only', 'Creating a class', 'Deleting an object', 'A', 'Medium', 'Dynamic binding determines the target based on runtime object type.'),

-- Q114
('OOP', 'What is early binding?', 'Binding resolved before runtime', 'Binding after program termination', 'Object destruction', 'Runtime inheritance', 'A', 'Medium', 'Early binding occurs during compilation or before runtime execution.'),

-- Q115
('OOP', 'Why is runtime polymorphism useful?', 'It allows generic code to work with different implementations', 'It eliminates all classes', 'It prevents abstraction', 'It removes inheritance', 'A', 'Medium', 'Polymorphism allows common interfaces to support varied behavior.'),

-- Q116
('OOP', 'What is substitutability?', 'A subtype can be used where its supertype is expected', 'A class replaces the compiler', 'An object replaces memory', 'A method replaces a variable', 'A', 'Medium', 'Substitutability is central to sound inheritance and polymorphism.'),

-- Q117
('OOP', 'Which principle formalizes subtype substitutability?', 'Liskov Substitution Principle', 'Single Responsibility Principle', 'Interface Segregation Principle', 'Open/Closed Principle', 'A', 'Medium', 'LSP states that valid subtype objects should be usable wherever the base type is expected.'),

-- Q118
('OOP', 'A subclass that breaks expectations of its superclass violates:', 'Liskov Substitution Principle', 'DRY', 'KISS', 'YAGNI', 'A', 'Medium', 'Violating expected superclass behavior breaks substitutability.'),

-- Q119
('OOP', 'What does the Open/Closed Principle state?', 'Open for extension, closed for modification', 'Open all fields', 'Close all classes', 'Avoid interfaces', 'A', 'Medium', 'Software should allow new behavior without unnecessary changes to stable code.'),

-- Q120
('OOP', 'Which principle discourages modifying stable existing code to add every new feature?', 'Open/Closed Principle', 'DRY', 'KISS', 'SRP', 'A', 'Medium', 'OCP encourages extension through abstractions.'),

-- Q121
('OOP', 'What does SRP stand for?', 'Single Responsibility Principle', 'Simple Runtime Process', 'Software Reuse Principle', 'Static Responsibility Program', 'A', 'Medium', 'SRP is one of the SOLID principles.'),

-- Q122
('OOP', 'What does the Single Responsibility Principle encourage?', 'One primary reason to change for a class', 'Many unrelated responsibilities', 'One global variable', 'Maximum inheritance', 'A', 'Medium', 'SRP encourages focused responsibilities.'),

-- Q123
('OOP', 'What does ISP stand for?', 'Interface Segregation Principle', 'Inheritance Software Process', 'Internal Service Program', 'Interface Static Property', 'A', 'Medium', 'ISP is a SOLID design principle.'),

-- Q124
('OOP', 'What does ISP recommend?', 'Prefer small, focused interfaces', 'One huge interface for everything', 'Avoid interfaces', 'Use global methods', 'A', 'Medium', 'Clients should not depend on methods they do not need.'),

-- Q125
('OOP', 'What does DIP stand for?', 'Dependency Inversion Principle', 'Data Inheritance Program', 'Dynamic Interface Process', 'Dependency Internal Programming', 'A', 'Medium', 'DIP is another SOLID principle.'),

-- Q126
('OOP', 'Dependency Inversion generally recommends depending on:', 'Abstractions', 'Concrete implementation details only', 'Global variables', 'Database tables', 'A', 'Medium', 'High-level modules should depend on abstractions rather than concrete details.'),

-- Q127
('OOP', 'What is dependency injection?', 'Supplying dependencies from outside a class', 'Creating dependencies randomly', 'Removing all dependencies', 'Compiling dependencies', 'A', 'Medium', 'Dependency injection separates dependency creation from dependency use.'),

-- Q128
('OOP', 'Which is a common benefit of dependency injection?', 'Improved testability', 'Increased hard-coding', 'Higher coupling', 'Less flexibility', 'A', 'Medium', 'Dependencies can be replaced with test doubles or alternate implementations.'),

-- Q129
('OOP', 'What is interface-based programming?', 'Programming against contracts rather than concrete implementations', 'Programming without methods', 'Programming only with databases', 'Programming without objects', 'A', 'Medium', 'Interfaces provide stable contracts between components.'),

-- Q130
('OOP', 'What is an abstract method?', 'Method declared as a required operation without a complete implementation in the abstraction', 'Private variable', 'Constructor only', 'Static field', 'A', 'Medium', 'Abstract methods require concrete subclasses to provide implementations in languages that support them.'),

-- Q131
('OOP', 'What is an abstract type?', 'Type representing a concept through an abstraction', 'Type with no variables', 'Database type', 'Compiler type', 'A', 'Medium', 'Abstract types describe behavior without requiring one concrete implementation.'),

-- Q132
('OOP', 'What is a virtual method commonly used for?', 'Supporting runtime method dispatch', 'Compiling databases', 'Hiding all data', 'Creating packages', 'A', 'Medium', 'Virtual dispatch enables overridden implementations to be selected dynamically.'),

-- Q133
('OOP', 'What is a pure virtual function in C++?', 'A virtual function declared without a base implementation using = 0', 'A static variable', 'A constructor', 'A private method only', 'A', 'Medium', 'Pure virtual functions make a C++ class abstract.'),

-- Q134
('OOP', 'Can an abstract class generally be instantiated directly?', 'No', 'Yes, always', 'Only through SQL', 'Only at compile time', 'A', 'Medium', 'Abstract classes represent incomplete abstractions intended for specialization.'),

-- Q135
('OOP', 'What is method dispatch?', 'Selecting which method implementation should execute', 'Creating a class', 'Deleting an object', 'Allocating a variable', 'A', 'Medium', 'Dispatch determines the method body used for a call.'),

-- Q136
('OOP', 'What is upcasting?', 'Treating a subclass object as its superclass type', 'Treating a parent as a child without rules', 'Converting string to integer', 'Deleting a subclass', 'A', 'Medium', 'Upcasting moves from a more specific type to a more general type.'),

-- Q137
('OOP', 'What is downcasting?', 'Converting a superclass reference to a more specific subclass type', 'Converting integer to string', 'Creating an interface', 'Hiding a method', 'A', 'Medium', 'Downcasting attempts to treat a general reference as a specific subtype.'),

-- Q138
('OOP', 'Why can unsafe downcasting be problematic?', 'The object may not actually be the target subtype', 'It always improves safety', 'It removes polymorphism', 'It prevents compilation always', 'A', 'Medium', 'Invalid downcasts can cause runtime errors or undefined behavior depending on the language.'),

-- Q139
('OOP', 'What is a type hierarchy?', 'Arrangement of related types through inheritance or abstraction', 'Database index', 'Memory stack', 'Loop structure', 'A', 'Medium', 'Type hierarchies organize related types.'),

-- Q140
('OOP', 'Deep inheritance hierarchies can lead to:', 'Increased complexity', 'Guaranteed simplicity', 'No dependencies', 'Automatic testing', 'A', 'Medium', 'Deep hierarchies can make behavior and dependencies harder to understand.'),

-- Q141
('OOP', 'What is the diamond problem?', 'Ambiguity caused by multiple inheritance paths to a common base', 'Database duplication', 'Constructor failure only', 'Method overloading', 'A', 'Medium', 'Multiple inheritance can cause ambiguity when the same base appears through different paths.'),

-- Q142
('OOP', 'Which language feature can help address the diamond problem in C++?', 'Virtual inheritance', 'Static variables', 'Templates only', 'Namespaces only', 'A', 'Medium', 'Virtual inheritance ensures a shared base subobject in relevant multiple-inheritance structures.'),

-- Q143
('OOP', 'What is covariance?', 'Allowing a more specific return type in an overriding method where supported', 'Changing parameter count', 'Removing inheritance', 'Hiding fields', 'A', 'Medium', 'Covariant returns allow an overriding method to return a more specific type.'),

-- Q144
('OOP', 'What is contravariance commonly related to?', 'Type-safe variation of input parameter types in type systems', 'Object creation', 'Constructor chaining', 'Data hiding', 'A', 'Medium', 'Contravariance concerns type substitution for inputs in generic and type-safe designs.'),

-- Q145
('OOP', 'What is invariant typing?', 'Generic types do not vary with subtype relationships', 'All classes are abstract', 'Methods cannot be overridden', 'Objects cannot be created', 'A', 'Medium', 'Invariance means Generic Child is not automatically a subtype of Generic Parent.'),

-- Q146
('OOP', 'Which principle helps prevent inheritance misuse?', 'Liskov Substitution Principle', 'DRY only', 'KISS only', 'YAGNI only', 'A', 'Medium', 'LSP tests whether inheritance represents a valid behavioral subtype relationship.'),

-- Q147
('OOP', 'What is a sealed or final class?', 'Class that cannot be subclassed', 'Class with no methods', 'Class with only private fields', 'Class that cannot create objects', 'A', 'Medium', 'Final or sealed restrictions prevent further inheritance.'),

-- Q148
('OOP', 'Why might a class be made final?', 'To prevent unsafe or unintended subclassing', 'To increase inheritance', 'To force overloading', 'To remove encapsulation', 'A', 'Medium', 'Preventing extension can preserve invariants and design guarantees.'),

-- Q149
('OOP', 'Which is generally more flexible for replacing behavior at runtime?', 'Composition', 'Deep inheritance', 'Hard-coded inheritance', 'Global state', 'A', 'Medium', 'Composed objects can often be replaced or configured independently.'),

-- Q150
('OOP', 'What is polymorphic substitution?', 'Using different concrete objects through a common type or interface', 'Replacing all classes with functions', 'Deleting objects', 'Changing source-code formatting', 'A', 'Medium', 'Polymorphism allows different implementations behind a common abstraction.'),


-- =========================================================
-- ABSTRACTION, DESIGN PRINCIPLES & ADVANCED OOP — Q151-Q200
-- =========================================================

-- Q151
('OOP', 'What does SOLID represent?', 'Five object-oriented design principles', 'Five programming languages', 'Five database commands', 'Five testing levels', 'A', 'Hard', 'SOLID is a group of five principles for maintainable OOP design.'),

-- Q152
('OOP', 'Which is NOT a SOLID principle?', 'Single Responsibility', 'Open/Closed', 'Dependency Inversion', 'Database Normalization', 'D', 'Hard', 'Database normalization is a database-design concept, not a SOLID principle.'),

-- Q153
('OOP', 'What is the main goal of SOLID?', 'Improve maintainability and flexibility of software design', 'Increase code duplication', 'Remove abstraction', 'Eliminate all classes', 'A', 'Hard', 'SOLID principles encourage loosely coupled, extensible designs.'),

-- Q154
('OOP', 'What does DRY stand for?', 'Do not Repeat Yourself', 'Design Runtime Yield', 'Data Repeat Yearly', 'Dynamic Runtime Yield', 'A', 'Hard', 'DRY discourages unnecessary duplication of knowledge or logic.'),

-- Q155
('OOP', 'What does KISS stand for in software design?', 'Keep It Simple, Stupid', 'Keep Interfaces Strong and Safe', 'Kernel Internal System Software', 'Key Input Software System', 'A', 'Hard', 'KISS encourages simple, understandable solutions.'),

-- Q156
('OOP', 'What does YAGNI mean?', 'You Aren''t Gonna Need It', 'Your Application Gets New Interfaces', 'Yet Another General Network Interface', 'You Always Generate New Interfaces', 'A', 'Hard', 'YAGNI discourages implementing speculative features that are not currently needed.'),

-- Q157
('OOP', 'What does program to an interface mean?', 'Depend on abstractions rather than concrete classes', 'Avoid interfaces', 'Use only global functions', 'Use only inheritance', 'A', 'Hard', 'Coding against abstractions reduces coupling to specific implementations.'),

-- Q158
('OOP', 'What is loose coupling?', 'Components have limited dependency on each other implementation details', 'Components are fully dependent', 'All fields are public', 'One class controls everything', 'A', 'Hard', 'Loose coupling makes components easier to change independently.'),

-- Q159
('OOP', 'What is tight coupling?', 'Strong dependency between components', 'Complete independence', 'High abstraction', 'No relationships', 'A', 'Hard', 'Tight coupling makes changes in one component more likely to affect others.'),

-- Q160
('OOP', 'What is high cohesion?', 'A component has closely related responsibilities', 'A component has unrelated responsibilities', 'A system has no objects', 'Classes are always inherited', 'A', 'Hard', 'High cohesion keeps responsibilities focused.'),

-- Q161
('OOP', 'Which design generally combines low coupling and high cohesion?', 'Maintainable modular design', 'Monolithic tightly coupled design', 'Global-state design', 'Duplicate-code design', 'A', 'Hard', 'Low coupling and high cohesion generally improve maintainability.'),

-- Q162
('OOP', 'What is a design pattern?', 'Reusable general solution to a recurring design problem', 'Programming syntax rule', 'Compiler command', 'Database record', 'A', 'Hard', 'Design patterns provide proven approaches to common design problems.'),

-- Q163
('OOP', 'Which pattern is used to create objects without exposing all creation details?', 'Factory', 'Observer', 'Adapter', 'Decorator', 'A', 'Hard', 'Factory patterns encapsulate object creation.'),

-- Q164
('OOP', 'Which pattern ensures one commonly shared instance?', 'Singleton', 'Adapter', 'Strategy', 'Observer', 'A', 'Hard', 'Singleton restricts a class to a controlled number of instances, commonly one.'),

-- Q165
('OOP', 'A major concern with Singleton is:', 'It can introduce hidden global state', 'It always improves testability', 'It removes dependencies', 'It prevents shared state', 'A', 'Hard', 'Global-like access can make testing and dependency management harder.'),

-- Q166
('OOP', 'Which pattern separates object construction from representation?', 'Builder', 'Observer', 'Strategy', 'Proxy', 'A', 'Hard', 'Builder separates complex construction steps from the final object.'),

-- Q167
('OOP', 'Which pattern creates families of related objects?', 'Abstract Factory', 'Adapter', 'Command', 'Decorator', 'A', 'Hard', 'Abstract Factory provides creation of related product families.'),

-- Q168
('OOP', 'Which pattern converts one interface into another expected interface?', 'Adapter', 'Factory', 'Observer', 'State', 'A', 'Hard', 'Adapter allows incompatible interfaces to work together.'),

-- Q169
('OOP', 'Which pattern adds behavior to an object dynamically?', 'Decorator', 'Factory', 'Singleton', 'Command', 'A', 'Hard', 'Decorator wraps objects to add responsibilities without changing the original class.'),

-- Q170
('OOP', 'Which pattern provides a simplified interface to a complex subsystem?', 'Facade', 'Observer', 'Strategy', 'Builder', 'A', 'Hard', 'Facade hides subsystem complexity behind a simpler interface.'),

-- Q171
('OOP', 'Which pattern encapsulates interchangeable algorithms?', 'Strategy', 'Singleton', 'Adapter', 'Prototype', 'A', 'Hard', 'Strategy allows algorithms to be selected or replaced independently.'),

-- Q172
('OOP', 'Which pattern defines a one-to-many dependency where observers are notified of changes?', 'Observer', 'Builder', 'Factory', 'Adapter', 'A', 'Hard', 'Observer supports notification from a subject to dependent observers.'),

-- Q173
('OOP', 'Which pattern encapsulates a request as an object?', 'Command', 'Strategy', 'Facade', 'Prototype', 'A', 'Hard', 'Command turns an operation or request into an object.'),

-- Q174
('OOP', 'Which pattern changes behavior based on an object current state?', 'State', 'Factory', 'Adapter', 'Builder', 'A', 'Hard', 'State allows an object to alter behavior when its internal state changes.'),

-- Q175
('OOP', 'Which pattern provides a surrogate or placeholder for another object?', 'Proxy', 'Observer', 'Factory', 'Strategy', 'A', 'Hard', 'Proxy controls or mediates access to another object.'),

-- Q176
('OOP', 'Which pattern creates a new object by copying an existing object?', 'Prototype', 'Facade', 'Adapter', 'Observer', 'A', 'Hard', 'Prototype uses cloning or copying to create objects.'),

-- Q177
('OOP', 'Which pattern defines an algorithm skeleton while allowing subclasses to customize steps?', 'Template Method', 'Singleton', 'Adapter', 'Proxy', 'A', 'Hard', 'Template Method fixes the overall algorithm structure while allowing selected steps to vary.'),

-- Q178
('OOP', 'What is composition over inheritance intended to encourage?', 'Building behavior from reusable objects', 'Creating deeper inheritance trees', 'Avoiding all abstraction', 'Increasing global state', 'A', 'Hard', 'Composition often gives more flexible behavior reuse.'),

-- Q179
('OOP', 'What is dependency inversion different from dependency injection?', 'Inversion is a design principle; injection is a technique for supplying dependencies', 'They are always exactly identical', 'Both are inheritance types', 'Both are database commands', 'A', 'Hard', 'DIP describes architecture; dependency injection is one practical implementation technique.'),

-- Q180
('OOP', 'What is a mock object?', 'Test double used to simulate a dependency', 'Production database', 'Compiler', 'Abstract class only', 'A', 'Hard', 'Mocks help isolate a unit under test.'),

-- Q181
('OOP', 'Why is OOP useful for large applications?', 'It can organize complexity into reusable components', 'It eliminates all complexity', 'It requires no design', 'It eliminates testing', 'A', 'Hard', 'Well-designed objects and abstractions can make large systems easier to manage.'),

-- Q182
('OOP', 'What is an anti-pattern?', 'Common solution approach that often causes problems', 'Official language syntax', 'Successful algorithm', 'Testing framework', 'A', 'Hard', 'Anti-patterns are recurring approaches that tend to produce poor results.'),

-- Q183
('OOP', 'What is a God Object?', 'Object or class that knows or controls too much', 'Small focused class', 'Immutable value object', 'Interface', 'A', 'Hard', 'God Objects violate separation of responsibilities and become difficult to maintain.'),

-- Q184
('OOP', 'Why is a God Object undesirable?', 'It creates excessive responsibility and coupling', 'It improves modularity', 'It reduces complexity', 'It guarantees reuse', 'A', 'Hard', 'Concentrating too much logic in one class makes the system harder to change and test.'),

-- Q185
('OOP', 'What is feature envy?', 'A method excessively interested in another object data', 'A constructor pattern', 'A type of inheritance', 'An interface rule', 'A', 'Hard', 'Feature envy can indicate misplaced responsibilities.'),

-- Q186
('OOP', 'What is a code smell?', 'Warning sign of a possible design or maintainability problem', 'Syntax error only', 'Runtime exception only', 'Compiler command', 'A', 'Hard', 'Code smells suggest areas that may benefit from refactoring.'),

-- Q187
('OOP', 'What is refactoring?', 'Improving internal code structure without changing intended behavior', 'Adding random features', 'Replacing the programming language', 'Deleting tests', 'A', 'Hard', 'Refactoring improves design while preserving externally intended behavior.'),

-- Q188
('OOP', 'What is encapsulation useful for during refactoring?', 'It localizes implementation changes', 'It increases public dependencies', 'It removes abstractions', 'It forces global access', 'A', 'Hard', 'Encapsulated implementation can change without affecting clients that use the public contract.'),

-- Q189
('OOP', 'What is information hiding?', 'Hiding design decisions likely to change from clients', 'Encrypting all data', 'Removing all interfaces', 'Deleting methods', 'A', 'Hard', 'Information hiding protects clients from unnecessary implementation details.'),

-- Q190
('OOP', 'What is separation of concerns?', 'Dividing a system so different concerns are handled independently', 'Putting all logic in one class', 'Avoiding modules', 'Using only inheritance', 'A', 'Hard', 'Separation of concerns reduces complexity by isolating distinct responsibilities.'),

-- Q191
('OOP', 'What is a bounded context in software design?', 'A boundary within which a model has a specific meaning', 'A constructor', 'A method overload', 'A memory block', 'A', 'Hard', 'Bounded contexts help prevent domain concepts from becoming ambiguous across system boundaries.'),

-- Q192
('OOP', 'What is an aggregate in domain-driven design?', 'Cluster of related objects treated as a unit for consistency', 'Database sum function', 'Static class', 'Constructor', 'A', 'Hard', 'An aggregate defines a consistency boundary around related domain objects.'),

-- Q193
('OOP', 'What is an aggregate root?', 'Main entity through which an aggregate is accessed', 'Any child object', 'Database root table', 'Interface only', 'A', 'Hard', 'The aggregate root controls access to the aggregate internal objects.'),

-- Q194
('OOP', 'What is a domain model?', 'Model representing business concepts, rules, and relationships', 'Database backup', 'Compiler output', 'UI stylesheet', 'A', 'Hard', 'A domain model represents important concepts and behavior of a problem domain.'),

-- Q195
('OOP', 'Why should domain logic often belong near relevant domain objects?', 'To keep behavior cohesive and meaningful', 'To maximize global state', 'To increase duplication', 'To eliminate classes', 'A', 'Hard', 'Related behavior placed with relevant data can improve cohesion.'),

-- Q196
('OOP', 'What is the Law of Demeter concerned with?', 'Limiting unnecessary knowledge and chained dependencies between objects', 'Database normalization', 'Compiler optimization', 'Memory allocation', 'A', 'Hard', 'The Law of Demeter encourages objects to interact mainly with close collaborators.'),

-- Q197
('OOP', 'Excessive method chaining can sometimes indicate:', 'Too much knowledge between objects', 'Perfect encapsulation', 'No dependencies', 'No relationships', 'A', 'Hard', 'Long chains may reveal violations of encapsulation or excessive coupling.'),

-- Q198
('OOP', 'What is an OOP interface contract?', 'Set of operations and expected behavior clients can rely on', 'Source-code formatting', 'Database schema only', 'Compiler executable', 'A', 'Hard', 'A contract specifies what clients can expect from an abstraction.'),

-- Q199
('OOP', 'What is the ultimate purpose of good OOP design?', 'Manage complexity and make software maintainable', 'Use as many classes as possible', 'Maximize inheritance', 'Avoid all interfaces', 'A', 'Hard', 'OOP design should make software easier to understand, extend, test, and maintain.'),

-- Q200
('OOP', 'Which combination represents strong general OOP design?', 'High cohesion, low coupling, appropriate abstraction', 'High coupling, low cohesion, global state', 'Deep inheritance everywhere', 'Public unrestricted data', 'A', 'Hard', 'Focused responsibilities, limited dependencies, and useful abstractions generally lead to maintainable designs.');


-- =========================================================
-- VERIFICATION
-- =========================================================

-- Verification 1: Total OOP questions
SELECT COUNT(*) AS oop_questions
FROM questions
WHERE skill = 'OOP';

-- Expected result: 200


-- Verification 2: Unique OOP questions
SELECT COUNT(DISTINCT question) AS unique_oop_questions
FROM questions
WHERE skill = 'OOP';

-- Expected result: 200


-- Verification 3: Skill-wise question count
SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
