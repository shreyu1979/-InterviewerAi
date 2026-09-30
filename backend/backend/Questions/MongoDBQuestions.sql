USE ai_interviewer;

-- ============================================================
-- MongoDB — 200 MCQs
-- Skill: MongoDB
--
-- Difficulty:
-- Q1-Q50    = Easy
-- Q51-Q150  = Medium
-- Q151-Q200 = Hard
-- ============================================================

SET SQL_SAFE_UPDATES = 0;

-- Delete existing MongoDB questions before inserting the new set
DELETE FROM questions
WHERE skill = 'MongoDB';

SET SQL_SAFE_UPDATES = 1;

-- ============================================================
-- MongoDB Fundamentals — Q1 to Q50
-- ============================================================

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('MongoDB', 'What type of database is MongoDB?',
 'Relational database',
 'Document-oriented NoSQL database',
 'Graph database',
 'Hierarchical database',
 'B', 'Easy',
 'MongoDB stores data as flexible BSON documents.'),

-- Q2
('MongoDB', 'What format is primarily used to represent MongoDB documents internally?',
 'XML',
 'CSV',
 'BSON',
 'HTML',
 'C', 'Easy',
 'BSON is MongoDB''s binary representation of JSON-like documents.'),

-- Q3
('MongoDB', 'What is the MongoDB equivalent of a relational database table?',
 'Document',
 'Collection',
 'Field',
 'Index',
 'B', 'Easy',
 'A collection is similar to a table.'),

-- Q4
('MongoDB', 'What is the MongoDB equivalent of a relational database row?',
 'Collection',
 'Database',
 'Document',
 'Index',
 'C', 'Easy',
 'A document is similar to a row.'),

-- Q5
('MongoDB', 'What is the MongoDB equivalent of a relational database column?',
 'Field',
 'Collection',
 'Document',
 'Database',
 'A', 'Easy',
 'Fields store individual values inside documents.'),

-- Q6
('MongoDB', 'Which command starts the modern MongoDB shell?',
 'mongo',
 'mongosh',
 'mongodb',
 'mongoshell',
 'B', 'Easy',
 'mongosh is the current MongoDB shell.'),

-- Q7
('MongoDB', 'Which method is commonly used to display the current database?',
 'db.show()',
 'db.current()',
 'db',
 'show.current()',
 'C', 'Easy',
 'Entering db in mongosh displays the current database.'),

-- Q8
('MongoDB', 'Which command lists databases?',
 'show dbs',
 'list dbs',
 'db.list()',
 'show databases()',
 'A', 'Easy',
 'show dbs lists databases with stored data.'),

-- Q9
('MongoDB', 'Which command lists collections in the current database?',
 'show collections',
 'db.collections()',
 'list collections',
 'show tables',
 'A', 'Easy',
 'show collections displays collections in the current database.'),

-- Q10
('MongoDB', 'Which syntax selects or switches to a database?',
 'use databaseName',
 'select databaseName',
 'open databaseName',
 'db.use(databaseName)',
 'A', 'Easy',
 'use switches the current database context.'),

-- Q11
('MongoDB', 'MongoDB documents are generally represented using which structure?',
 'Key-value pairs',
 'Only arrays',
 'Rows and columns',
 'Linked lists',
 'A', 'Easy',
 'Documents contain fields represented as key-value pairs.'),

-- Q12
('MongoDB', 'Which field normally identifies a MongoDB document uniquely?',
 '_id',
 'id',
 'key',
 'primary',
 'A', 'Easy',
 'Every MongoDB document has a unique _id within its collection.'),

-- Q13
('MongoDB', 'What data type is commonly used automatically for _id?',
 'String',
 'ObjectId',
 'Boolean',
 'Decimal128',
 'B', 'Easy',
 'MongoDB commonly generates an ObjectId when _id is not supplied.'),

-- Q14
('MongoDB', 'Can MongoDB documents contain nested documents?',
 'No',
 'Yes',
 'Only in Atlas',
 'Only with indexes',
 'B', 'Easy',
 'Documents can contain embedded documents.'),

-- Q15
('MongoDB', 'Can MongoDB documents contain arrays?',
 'No',
 'Yes',
 'Only numeric arrays',
 'Only string arrays',
 'B', 'Easy',
 'Arrays are supported as BSON values.'),

-- Q16
('MongoDB', 'Which is a major advantage of MongoDB''s document model?',
 'Fixed schema only',
 'Flexible schema',
 'No indexing',
 'No querying',
 'B', 'Easy',
 'Different documents in a collection can have different fields.'),

-- Q17
('MongoDB', 'What is BSON?',
 'Binary JSON-like document format',
 'SQL language',
 'Web protocol',
 'MongoDB GUI',
 'A', 'Easy',
 'BSON extends JSON-like structures with additional data types.'),

-- Q18
('MongoDB', 'Which data type can BSON support that standard JSON does not directly represent?',
 'Date',
 'String',
 'Number',
 'Boolean',
 'A', 'Easy',
 'BSON has a native Date type.'),

-- Q19
('MongoDB', 'What does NoSQL generally mean?',
 'No Structured Query Language databases only',
 'Non-relational database systems',
 'No data storage',
 'No queries allowed',
 'B', 'Easy',
 'NoSQL broadly refers to non-relational database technologies.'),

-- Q20
('MongoDB', 'Which language is commonly used with MongoDB commands in mongosh?',
 'JavaScript',
 'COBOL',
 'Fortran',
 'Assembly',
 'A', 'Easy',
 'mongosh provides a JavaScript and Node.js-based shell environment.'),

-- Q21
('MongoDB', 'Which MongoDB component is responsible for storing data?',
 'Database server',
 'Browser',
 'Compiler',
 'HTML engine',
 'A', 'Easy',
 'The MongoDB server manages databases and stored data.'),

-- Q22
('MongoDB', 'What does a collection contain?',
 'Documents',
 'Tables only',
 'Programs',
 'Servers',
 'A', 'Easy',
 'Collections contain MongoDB documents.'),

-- Q23
('MongoDB', 'Is a collection required to have a predefined schema?',
 'Always',
 'No',
 'Only for _id',
 'Only in Compass',
 'B', 'Easy',
 'MongoDB collections can have flexible document structures.'),

-- Q24
('MongoDB', 'Which MongoDB tool provides a graphical interface?',
 'MongoDB Compass',
 'MongoPaint',
 'MongoEditor',
 'MongoGUI only',
 'A', 'Easy',
 'MongoDB Compass is a GUI for working with MongoDB.'),

-- Q25
('MongoDB', 'What does MongoDB Atlas provide?',
 'Cloud database service',
 'Programming compiler',
 'Operating system',
 'CSS framework',
 'A', 'Easy',
 'Atlas is MongoDB''s managed cloud database platform.'),

-- Q26
('MongoDB', 'What is an embedded document?',
 'A document stored inside another document',
 'A deleted document',
 'An encrypted database',
 'An index',
 'A', 'Easy',
 'Embedded documents represent nested data within a parent document.'),

-- Q27
('MongoDB', 'What is denormalization commonly used for in MongoDB?',
 'Improving data access patterns',
 'Removing all data',
 'Disabling queries',
 'Creating SQL tables',
 'A', 'Easy',
 'Denormalized data can reduce the need for joins and improve read performance.'),

-- Q28
('MongoDB', 'What is normalization?',
 'Organizing data to reduce redundancy',
 'Creating indexes only',
 'Encrypting documents',
 'Compressing BSON',
 'A', 'Easy',
 'Normalization separates related data to reduce duplication.'),

-- Q29
('MongoDB', 'Which model is generally more natural for MongoDB?',
 'Document model',
 'Relational table model only',
 'Spreadsheet model',
 'File-system model',
 'A', 'Easy',
 'MongoDB is designed around documents and collections.'),

-- Q30
('MongoDB', 'What is a BSON document composed of?',
 'Fields',
 'Tables',
 'Rows only',
 'SQL statements',
 'A', 'Easy',
 'A document consists of fields and their values.'),

-- Q31
('MongoDB', 'Which value represents a MongoDB ObjectId?',
 'ObjectId("...")',
 'ID("...")',
 'MongoID("...")',
 'Object("...")',
 'A', 'Easy',
 'ObjectId values are represented using the ObjectId() constructor.'),

-- Q32
('MongoDB', 'What is one reason ObjectId is useful?',
 'It can provide a unique identifier',
 'It stores images only',
 'It creates indexes automatically on every field',
 'It replaces collections',
 'A', 'Easy',
 'ObjectId is designed to be unique and is commonly used for _id.'),

-- Q33
('MongoDB', 'Which statement about MongoDB schema is correct?',
 'Every document must have identical fields',
 'Documents can have flexible structures',
 'Documents cannot contain arrays',
 'Documents cannot be nested',
 'B', 'Easy',
 'MongoDB supports flexible document structures.'),

-- Q34
('MongoDB', 'What does schema validation allow?',
 'Enforcing selected document rules',
 'Deleting indexes',
 'Starting the server',
 'Creating SQL tables',
 'A', 'Easy',
 'MongoDB supports validation rules for controlling document structure.'),

-- Q35
('MongoDB', 'What is a capped collection?',
 'A collection with a fixed maximum size',
 'A collection without documents',
 'A temporary SQL table',
 'An encrypted collection',
 'A', 'Easy',
 'Capped collections maintain a fixed size and preserve insertion order.'),

-- Q36
('MongoDB', 'Which MongoDB concept is closest to a primary key?',
 '_id',
 '$id',
 'primaryKey',
 'key_id',
 'A', 'Easy',
 '_id uniquely identifies documents within a collection.'),

-- Q37
('MongoDB', 'What happens if an inserted document has no _id?',
 'MongoDB normally generates one',
 'The server always rejects it',
 'The document is converted to SQL',
 'The collection is deleted',
 'A', 'Easy',
 'MongoDB generates an _id if one is not supplied.'),

-- Q38
('MongoDB', 'Which MongoDB feature supports storing binary data?',
 'BSON binary type',
 'SQL BLOB only',
 'HTML',
 'CSS',
 'A', 'Easy',
 'BSON supports a binary data type.'),

-- Q39
('MongoDB', 'Which data type is appropriate for true/false values?',
 'Boolean',
 'ObjectId',
 'Date',
 'Regex',
 'A', 'Easy',
 'BSON supports Boolean values.'),

-- Q40
('MongoDB', 'Which data type stores dates?',
 'Date',
 'String only',
 'Boolean',
 'ObjectId only',
 'A', 'Easy',
 'MongoDB has a BSON Date type.'),

-- Q41
('MongoDB', 'Which statement about field names is correct?',
 'MongoDB fields have names',
 'Fields cannot be named',
 'All fields must be numeric',
 'Fields are SQL columns',
 'A', 'Easy',
 'Every document field has a field name.'),

-- Q42
('MongoDB', 'MongoDB primarily follows which data storage structure?',
 'Documents inside collections',
 'Rows inside tables',
 'Cells inside spreadsheets',
 'Files inside HTML',
 'A', 'Easy',
 'Collections store documents.'),

-- Q43
('MongoDB', 'Which is NOT a MongoDB database object?',
 'Collection',
 'Document',
 'Index',
 'HTML tag',
 'D', 'Easy',
 'HTML tags are unrelated to MongoDB''s database model.'),

-- Q44
('MongoDB', 'Which statement is true about MongoDB documents?',
 'They can contain nested structures',
 'They can contain only strings',
 'They cannot contain arrays',
 'They must always be flat',
 'A', 'Easy',
 'Nested documents and arrays are core MongoDB features.'),

-- Q45
('MongoDB', 'Which MongoDB feature helps model one-to-many relationships?',
 'Embedding or references',
 'CSS classes',
 'HTML forms',
 'SQL triggers only',
 'A', 'Easy',
 'Relationships can be modeled through embedded documents or references.'),

-- Q46
('MongoDB', 'What is a reference in MongoDB?',
 'A field storing an identifier pointing to another document',
 'An HTML link',
 'An index type',
 'A database password',
 'A', 'Easy',
 'References can connect documents using identifiers.'),

-- Q47
('MongoDB', 'Which approach is often preferred when related data is frequently accessed together?',
 'Embedding',
 'Splitting every field into a collection',
 'Deleting the data',
 'Using only SQL',
 'A', 'Easy',
 'Embedding can make related data available in one document.'),

-- Q48
('MongoDB', 'What is a MongoDB driver?',
 'A library used by applications to communicate with MongoDB',
 'A hardware device',
 'A database table',
 'A browser extension only',
 'A', 'Easy',
 'Drivers allow application code to connect to MongoDB.'),

-- Q49
('MongoDB', 'Which language can use an official MongoDB driver?',
 'Python',
 'Java',
 'JavaScript',
 'All of the above',
 'D', 'Easy',
 'MongoDB provides drivers for many programming languages.'),

-- Q50
('MongoDB', 'Which operation category includes inserting, reading, updating, and deleting?',
 'CRUD',
 'ACID only',
 'HTTP',
 'DOM',
 'A', 'Easy',
 'CRUD stands for Create, Read, Update, Delete.'),

-- ============================================================
-- Documents, Collections & CRUD — Q51 to Q100
-- ============================================================

-- Q51
('MongoDB', 'Which method inserts one document?',
 'insertOne()',
 'insertSingle()',
 'addOne()',
 'createOne()',
 'A', 'Medium',
 'insertOne() inserts a single document.'),

-- Q52
('MongoDB', 'Which method inserts multiple documents?',
 'insertMany()',
 'insertMultiple()',
 'addMany()',
 'createMany()',
 'A', 'Medium',
 'insertMany() inserts an array of documents.'),

-- Q53
('MongoDB', 'Which method retrieves documents from a collection?',
 'find()',
 'getAll()',
 'select()',
 'read()',
 'A', 'Medium',
 'find() queries documents.'),

-- Q54
('MongoDB', 'Which method retrieves one matching document?',
 'findOne()',
 'getOne()',
 'selectOne()',
 'readOne()',
 'A', 'Medium',
 'findOne() returns one matching document.'),

-- Q55
('MongoDB', 'What does find({}) generally do?',
 'Returns all documents',
 'Deletes all documents',
 'Updates all documents',
 'Creates a collection',
 'A', 'Medium',
 'An empty filter matches all documents.'),

-- Q56
('MongoDB', 'Which method deletes one matching document?',
 'deleteOne()',
 'removeOne()',
 'dropOne()',
 'eraseOne()',
 'A', 'Medium',
 'deleteOne() deletes the first matching document.'),

-- Q57
('MongoDB', 'Which method deletes multiple matching documents?',
 'deleteMany()',
 'removeMany()',
 'eraseMany()',
 'dropMany()',
 'A', 'Medium',
 'deleteMany() removes all documents matching the filter.'),

-- Q58
('MongoDB', 'Which method updates one matching document?',
 'updateOne()',
 'changeOne()',
 'modifyOne()',
 'editOne()',
 'A', 'Medium',
 'updateOne() updates one matching document.'),

-- Q59
('MongoDB', 'Which method updates multiple matching documents?',
 'updateMany()',
 'changeMany()',
 'modifyMany()',
 'editMany()',
 'A', 'Medium',
 'updateMany() updates all matching documents.'),

-- Q60
('MongoDB', 'Which operator sets a field to a value?',
 '$set',
 '$put',
 '$value',
 '$assign',
 'A', 'Medium',
 '$set assigns a value to a field.'),

-- Q61
('MongoDB', 'Which operator removes a field?',
 '$unset',
 '$removeField',
 '$delete',
 '$drop',
 'A', 'Medium',
 '$unset removes a specified field.'),

-- Q62
('MongoDB', 'Which operator increments a numeric field?',
 '$inc',
 '$increase',
 '$addNumber',
 '$plus',
 'A', 'Medium',
 '$inc increases or decreases a numeric value.'),

-- Q63
('MongoDB', 'Which operator adds an element to an array?',
 '$push',
 '$appendArray',
 '$insertArray',
 '$addArray',
 'A', 'Medium',
 '$push adds an element to an array.'),

-- Q64
('MongoDB', 'Which operator adds an array element only if it is not already present?',
 '$addToSet',
 '$uniquePush',
 '$addUnique',
 '$distinctAdd',
 'A', 'Medium',
 '$addToSet prevents duplicate values.'),

-- Q65
('MongoDB', 'Which operator removes matching elements from an array?',
 '$pull',
 '$remove',
 '$deleteArray',
 '$extract',
 'A', 'Medium',
 '$pull removes array elements matching a condition.'),

-- Q66
('MongoDB', 'Which operator removes the first or last array element?',
 '$pop',
 '$pullOne',
 '$shift',
 '$arrayRemove',
 'A', 'Medium',
 '$pop removes either the first or last array element.'),

-- Q67
('MongoDB', 'Which operator renames a field?',
 '$rename',
 '$changeName',
 '$fieldName',
 '$alias',
 'A', 'Medium',
 '$rename changes a field''s name.'),

-- Q68
('MongoDB', 'What does deleteMany({}) do?',
 'Deletes all documents in the collection',
 'Deletes the collection itself',
 'Deletes one document',
 'Drops the database',
 'A', 'Medium',
 'An empty filter matches all documents.'),

-- Q69
('MongoDB', 'What does drop() on a collection do?',
 'Removes the collection',
 'Removes one document',
 'Updates the collection',
 'Creates an index',
 'A', 'Medium',
 'drop() removes the collection and its data.'),

-- Q70
('MongoDB', 'Which command can create a collection explicitly?',
 'db.createCollection()',
 'db.newCollection()',
 'db.makeTable()',
 'create.table()',
 'A', 'Medium',
 'db.createCollection() explicitly creates a collection.'),

-- Q71
('MongoDB', 'What happens if you insert a document into a non-existing collection?',
 'MongoDB can create the collection automatically',
 'It always fails',
 'It creates a SQL table',
 'It shuts down',
 'A', 'Medium',
 'MongoDB can create a collection implicitly during insertion.'),

-- Q72
('MongoDB', 'Which is a valid document?',
 '{name: "Asha", age: 20}',
 '(name="Asha")',
 '[name="Asha"]',
 '<name>Asha</name>',
 'A', 'Medium',
 'MongoDB documents use JSON-like object syntax.'),

-- Q73
('MongoDB', 'Which query finds documents where age is greater than 18?',
 '{age: {$gt: 18}}',
 '{age: {$greater: 18}}',
 '{age > 18}',
 '{age: greater(18)}',
 'A', 'Medium',
 '$gt means greater than.'),

-- Q74
('MongoDB', 'Which query finds age greater than or equal to 18?',
 '{age: {$gte: 18}}',
 '{age: {$ge: 18}}',
 '{age >= 18}',
 '{age: {$greaterEqual: 18}}',
 'A', 'Medium',
 '$gte means greater than or equal to.'),

-- Q75
('MongoDB', 'Which operator means less than?',
 '$lt',
 '$less',
 '$lower',
 '$min',
 'A', 'Medium',
 '$lt is the less-than comparison operator.'),

-- Q76
('MongoDB', 'Which operator means less than or equal to?',
 '$lte',
 '$le',
 '$lessEqual',
 '$max',
 'A', 'Medium',
 '$lte means less than or equal to.'),

-- Q77
('MongoDB', 'Which operator means not equal?',
 '$ne',
 '$notEqual',
 '$neq',
 '$different',
 'A', 'Medium',
 '$ne matches values that are not equal.'),

-- Q78
('MongoDB', 'Which operator matches any value from a specified array?',
 '$in',
 '$any',
 '$contains',
 '$matchAny',
 'A', 'Medium',
 '$in matches any listed value.'),

-- Q79
('MongoDB', 'Which operator excludes values from a specified array?',
 '$nin',
 '$notIn',
 '$exclude',
 '$without',
 'A', 'Medium',
 '$nin means not in.'),

-- Q80
('MongoDB', 'Which operator checks whether a field exists?',
 '$exists',
 '$present',
 '$has',
 '$available',
 'A', 'Medium',
 '$exists tests field presence.'),

-- Q81
('MongoDB', 'Which operator performs regular-expression matching?',
 '$regex',
 '$pattern',
 '$regexpMatch',
 '$searchText',
 'A', 'Medium',
 '$regex matches strings using regular expressions.'),

-- Q82
('MongoDB', 'Which operator performs logical AND?',
 '$and',
 '$all',
 '$both',
 '$every',
 'A', 'Medium',
 '$and requires all specified conditions to match.'),

-- Q83
('MongoDB', 'Which operator performs logical OR?',
 '$or',
 '$either',
 '$any',
 '$union',
 'A', 'Medium',
 '$or matches documents satisfying at least one condition.'),

-- Q84
('MongoDB', 'Which operator negates another query expression?',
 '$not',
 '$negate',
 '$no',
 '$inverse',
 'A', 'Medium',
 '$not inverts a specified query expression.'),

-- Q85
('MongoDB', 'Which operator matches none of several expressions?',
 '$nor',
 '$none',
 '$notAll',
 '$excludeAll',
 'A', 'Medium',
 '$nor matches documents that fail all listed expressions.'),

-- Q86
('MongoDB', 'What is projection?',
 'Selecting which fields appear in query results',
 'Creating a database',
 'Encrypting data',
 'Removing a collection',
 'A', 'Medium',
 'Projection controls returned fields.'),

-- Q87
('MongoDB', 'Which method can be chained to specify projection?',
 'project()',
 'fields()',
 'selectFields()',
 'showFields()',
 'A', 'Medium',
 'In modern mongosh, find() results can be followed by .project().'),

-- Q88
('MongoDB', 'Which projection includes only name?',
 '.project({name: 1})',
 '.project(name: true)',
 '.fields(name)',
 '.include(name)',
 'A', 'Medium',
 '1 includes a field in a projection.'),

-- Q89
('MongoDB', 'Which projection excludes age?',
 '.project({age: 0})',
 '.project({age: -1})',
 '.exclude(age)',
 '.remove(age)',
 'A', 'Medium',
 '0 excludes a field.'),

-- Q90
('MongoDB', 'What does sorting ascending mean?',
 'Lowest to highest',
 'Highest to lowest',
 'Random order',
 'Insertion order only',
 'A', 'Medium',
 'Ascending order uses increasing values.'),

-- Q91
('MongoDB', 'Which sort value represents ascending order?',
 '1',
 '-1',
 '0',
 '2',
 'A', 'Medium',
 'MongoDB uses 1 for ascending and -1 for descending.'),

-- Q92
('MongoDB', 'Which sort value represents descending order?',
 '-1',
 '1',
 '0',
 '2',
 'A', 'Medium',
 '-1 specifies descending order.'),

-- Q93
('MongoDB', 'Which method limits the number of returned documents?',
 'limit()',
 'restrict()',
 'max()',
 'countLimit()',
 'A', 'Medium',
 'limit() restricts result count.'),

-- Q94
('MongoDB', 'Which method skips a number of documents?',
 'skip()',
 'ignore()',
 'offsetDocuments()',
 'jump()',
 'A', 'Medium',
 'skip() skips documents before returning results.'),

-- Q95
('MongoDB', 'What is pagination commonly implemented using?',
 'skip() and limit()',
 'drop() and delete()',
 'insert() and drop()',
 '$unset only',
 'A', 'Medium',
 'skip() and limit() can implement basic pagination.'),

-- Q96
('MongoDB', 'What does countDocuments() return?',
 'Number of matching documents',
 'Number of collections',
 'Number of databases',
 'Number of indexes only',
 'A', 'Medium',
 'It counts documents matching an optional filter.'),

-- Q97
('MongoDB', 'What does distinct() return?',
 'Unique values for a field',
 'Duplicate documents',
 'Collection names only',
 'Index names only',
 'A', 'Medium',
 'distinct() returns unique values for a specified field.'),

-- Q98
('MongoDB', 'Which update option inserts a document if no match exists?',
 'upsert',
 'insertIfMissing',
 'createIfNone',
 'autoInsert',
 'A', 'Medium',
 'upsert: true updates a matching document or inserts one if none matches.'),

-- Q99
('MongoDB', 'Which operation is used to replace an entire document?',
 'replaceOne()',
 'replaceDocument()',
 'updateAll()',
 'overwriteOne()',
 'A', 'Medium',
 'replaceOne() replaces the matched document except for its immutable _id.'),

-- Q100
('MongoDB', 'Which operation returns information about an update?',
 'updateOne() result',
 'find() only',
 'show update()',
 'readUpdate()',
 'A', 'Medium',
 'Update methods return an operation result containing information such as matched and modified counts.'),

-- ============================================================
-- Queries, Aggregation & Indexes — Q101 to Q150
-- ============================================================

-- Q101
('MongoDB', 'What is an aggregation pipeline?',
 'A sequence of data-processing stages',
 'A database connection',
 'A collection type',
 'A security role',
 'A', 'Medium',
 'Aggregation pipelines process documents through multiple stages.'),

-- Q102
('MongoDB', 'Which method runs an aggregation pipeline?',
 'aggregate()',
 'pipeline()',
 'process()',
 'aggregateQuery()',
 'A', 'Medium',
 'collection.aggregate() executes an aggregation pipeline.'),

-- Q103
('MongoDB', 'Which aggregation stage filters documents?',
 '$match',
 '$filterDocuments',
 '$whereOnly',
 '$select',
 'A', 'Medium',
 '$match filters documents based on query conditions.'),

-- Q104
('MongoDB', 'Which stage groups documents?',
 '$group',
 '$collect',
 '$cluster',
 '$combine',
 'A', 'Medium',
 '$group groups documents by a specified expression.'),

-- Q105
('MongoDB', 'Which stage selects or reshapes fields?',
 '$project',
 '$fields',
 '$select',
 '$reshapeOnly',
 'A', 'Medium',
 '$project includes, excludes, or computes fields.'),

-- Q106
('MongoDB', 'Which stage sorts documents?',
 '$sort',
 '$order',
 '$arrange',
 '$sequence',
 'A', 'Medium',
 '$sort orders pipeline documents.'),

-- Q107
('MongoDB', 'Which stage limits output documents?',
 '$limit',
 '$max',
 '$restrict',
 '$top',
 'A', 'Medium',
 '$limit restricts the number of documents passed forward.'),

-- Q108
('MongoDB', 'Which stage skips documents?',
 '$skip',
 '$ignore',
 '$offset',
 '$jump',
 'A', 'Medium',
 '$skip skips a specified number of documents.'),

-- Q109
('MongoDB', 'Which stage deconstructs an array field?',
 '$unwind',
 '$explode',
 '$splitArray',
 '$flatten',
 'A', 'Medium',
 '$unwind outputs one document for each array element.'),

-- Q110
('MongoDB', 'Which stage can perform a join-like operation with another collection?',
 '$lookup',
 '$join',
 '$connect',
 '$link',
 'A', 'Medium',
 '$lookup combines documents from another collection.'),

-- Q111
('MongoDB', 'Which stage can write aggregation results to a collection?',
 '$merge',
 '$write',
 '$save',
 '$store',
 'A', 'Medium',
 '$merge writes pipeline results into a collection.'),

-- Q112
('MongoDB', 'Which stage can replace a collection with aggregation output?',
 '$out',
 '$replaceCollection',
 '$export',
 '$storeAll',
 'A', 'Medium',
 '$out writes pipeline results to a collection, replacing it as specified.'),

-- Q113
('MongoDB', 'Which stage can add or overwrite fields?',
 '$set',
 '$addFieldOnly',
 '$modify',
 '$appendField',
 'A', 'Medium',
 '$set adds new fields or changes existing fields.'),

-- Q114
('MongoDB', 'Which stage removes fields?',
 '$unset',
 '$removeFields',
 '$deleteFields',
 '$dropFields',
 'A', 'Medium',
 '$unset removes specified fields from pipeline documents.'),

-- Q115
('MongoDB', 'Which aggregation stage counts documents?',
 '$count',
 '$total',
 '$number',
 '$sizeCount',
 'A', 'Medium',
 '$count returns the number of documents passing through the stage.'),

-- Q116
('MongoDB', 'Which stage allows multiple aggregation pipelines within one stage?',
 '$facet',
 '$multi',
 '$parallel',
 '$pipelines',
 'A', 'Medium',
 '$facet runs multiple pipelines on the same input documents.'),

-- Q117
('MongoDB', 'Which accumulator calculates a sum?',
 '$sum',
 '$total',
 '$addAll',
 '$plus',
 'A', 'Medium',
 '$sum calculates totals in aggregation.'),

-- Q118
('MongoDB', 'Which accumulator calculates an average?',
 '$avg',
 '$average',
 '$meanValue',
 '$middle',
 'A', 'Medium',
 '$avg calculates the average.'),

-- Q119
('MongoDB', 'Which accumulator finds a maximum value?',
 '$max',
 '$highest',
 '$topValue',
 '$maximumOnly',
 'A', 'Medium',
 '$max returns the maximum value.'),

-- Q120
('MongoDB', 'Which accumulator finds a minimum value?',
 '$min',
 '$lowest',
 '$bottomValue',
 '$minimumOnly',
 'A', 'Medium',
 '$min returns the minimum value.'),

-- Q121
('MongoDB', 'What is an index?',
 'A data structure that improves query performance',
 'A collection',
 'A database user',
 'A document field type',
 'A', 'Medium',
 'Indexes allow MongoDB to find matching documents more efficiently.'),

-- Q122
('MongoDB', 'Which method creates an index?',
 'createIndex()',
 'makeIndex()',
 'newIndex()',
 'addIndex()',
 'A', 'Medium',
 'createIndex() creates an index.'),

-- Q123
('MongoDB', 'Which index is created on a field in ascending order?',
 '{field: 1}',
 '{field: -1}',
 '{field: 0}',
 '{field: 2}',
 'A', 'Medium',
 '1 represents ascending index order.'),

-- Q124
('MongoDB', 'Which index is descending?',
 '{field: -1}',
 '{field: 1}',
 '{field: 0}',
 '{field: 2}',
 'A', 'Medium',
 '-1 represents descending index order.'),

-- Q125
('MongoDB', 'Which method lists indexes?',
 'getIndexes()',
 'showIndexes()',
 'listIndex()',
 'indexes()',
 'A', 'Medium',
 'getIndexes() returns index definitions.'),

-- Q126
('MongoDB', 'Which method removes an index?',
 'dropIndex()',
 'deleteIndex()',
 'removeIndex()',
 'eraseIndex()',
 'A', 'Medium',
 'dropIndex() removes a specified index.'),

-- Q127
('MongoDB', 'What is a compound index?',
 'Index on multiple fields',
 'Index on no fields',
 'Index on one document only',
 'Temporary index',
 'A', 'Medium',
 'Compound indexes contain multiple indexed fields.'),

-- Q128
('MongoDB', 'What is a unique index?',
 'An index that prevents duplicate indexed values',
 'An index with no key',
 'An index that deletes duplicates automatically',
 'An index for arrays only',
 'A', 'Medium',
 'Unique indexes enforce uniqueness for indexed key values, subject to MongoDB index semantics.'),

-- Q129
('MongoDB', 'Which option creates a unique index?',
 '{unique: true}',
 '{distinct: true}',
 '{uniqueIndex: yes}',
 '{noDuplicates: true}',
 'A', 'Medium',
 'The unique index option enforces uniqueness.'),

-- Q130
('MongoDB', 'What is a multikey index?',
 'An index on array-valued fields',
 'An index on databases',
 'An index on multiple databases',
 'An encrypted index only',
 'A', 'Medium',
 'MongoDB automatically treats an index as multikey when it indexes array values.'),

-- Q131
('MongoDB', 'What is a text index used for?',
 'Text search',
 'Image compression',
 'Transactions',
 'Replication',
 'A', 'Medium',
 'Text indexes support text search queries.'),

-- Q132
('MongoDB', 'What is a TTL index?',
 'An index that can automatically expire documents',
 'An index for transactions',
 'An index for passwords',
 'An index for sharding only',
 'A', 'Medium',
 'TTL indexes remove documents after a configured period.'),

-- Q133
('MongoDB', 'Which option is associated with TTL expiration?',
 'expireAfterSeconds',
 'deleteAfterSeconds',
 'ttlSecondsOnly',
 'removeAfter',
 'A', 'Medium',
 'expireAfterSeconds specifies TTL expiration behavior.'),

-- Q134
('MongoDB', 'What is a partial index?',
 'An index that applies only to documents matching a filter',
 'An incomplete index',
 'An index with half the fields',
 'An index that stores partial strings only',
 'A', 'Medium',
 'Partial indexes index only documents satisfying a filter expression.'),

-- Q135
('MongoDB', 'What does explain() help determine?',
 'Query execution details',
 'User passwords',
 'Database name only',
 'Collection ownership',
 'A', 'Medium',
 'explain() provides query planning and execution information.'),

-- Q136
('MongoDB', 'Which query execution stage indicates an index scan?',
 'IXSCAN',
 'INDEXREAD',
 'INDEXSCANONLY',
 'SCANINDEX',
 'A', 'Medium',
 'IXSCAN indicates scanning an index.'),

-- Q137
('MongoDB', 'Which execution stage indicates a collection scan?',
 'COLLSCAN',
 'COLLECTIONSCAN',
 'FULLSCAN',
 'TABLESCAN',
 'A', 'Medium',
 'COLLSCAN means MongoDB scans collection documents.'),

-- Q138
('MongoDB', 'Why can too many indexes be harmful?',
 'They consume resources and can slow writes',
 'They prevent all reads',
 'They delete documents',
 'They disable aggregation',
 'A', 'Medium',
 'Indexes require storage and maintenance during writes.'),

-- Q139
('MongoDB', 'What does index selectivity generally describe?',
 'How effectively an index narrows query results',
 'Index storage size only',
 'Number of databases',
 'Number of collections',
 'A', 'Medium',
 'Highly selective indexes can reduce the number of examined documents.'),

-- Q140
('MongoDB', 'Which index supports efficient queries on multiple specified fields?',
 'Compound index',
 'Text-only index',
 'TTL index',
 'Hashed-only index',
 'A', 'Medium',
 'Compound indexes index multiple fields together.'),

-- Q141
('MongoDB', 'What is a hashed index based on?',
 'Hashed values of indexed fields',
 'Sorted strings only',
 'Dates only',
 'Array length only',
 'A', 'Medium',
 'Hashed indexes use hashed field values.'),

-- Q142
('MongoDB', 'Hashed indexes are commonly associated with which feature?',
 'Sharding',
 'HTML',
 'CSS',
 'Stored procedures',
 'A', 'Medium',
 'Hashed shard keys can distribute data based on hashed values.'),

-- Q143
('MongoDB', 'Which operator checks whether an array contains all specified elements?',
 '$all',
 '$every',
 '$containsAll',
 '$arrayAll',
 'A', 'Medium',
 '$all matches arrays containing all specified values.'),

-- Q144
('MongoDB', 'Which operator matches arrays with a specific number of elements?',
 '$size',
 '$length',
 '$countArray',
 '$arraySizeOnly',
 'A', 'Medium',
 '$size matches arrays by length.'),

-- Q145
('MongoDB', 'Which operator is useful when multiple conditions must match the same array element?',
 '$elemMatch',
 '$arrayMatch',
 '$sameElement',
 '$elementQuery',
 'A', 'Medium',
 '$elemMatch applies multiple criteria to individual array elements.'),

-- Q146
('MongoDB', 'Which operator can perform element-level array filtering in aggregation expressions?',
 '$filter',
 '$arrayWhere',
 '$whereArray',
 '$findArray',
 'A', 'Medium',
 '$filter returns array elements that satisfy a condition.'),

-- Q147
('MongoDB', 'Which expression maps each array element to a transformed value?',
 '$map',
 '$transformArray',
 '$convertArray',
 '$iterateArray',
 'A', 'Medium',
 '$map applies an expression to each array element.'),

-- Q148
('MongoDB', 'Which expression reduces array elements into one value?',
 '$reduce',
 '$collapse',
 '$aggregateArray',
 '$foldArrayOnly',
 'A', 'Medium',
 '$reduce combines array elements into a single result.'),

-- Q149
('MongoDB', 'What is a covered query?',
 'A query whose required fields can be satisfied by an index without fetching documents',
 'A query with no filter',
 'A query inside a transaction only',
 'A query that deletes documents',
 'A', 'Medium',
 'Covered queries can be answered entirely from an index under appropriate conditions.'),

-- Q150
('MongoDB', 'Which practice generally improves MongoDB query performance?',
 'Creating appropriate indexes',
 'Creating thousands of unused indexes',
 'Removing all indexes',
 'Always using collection scans',
 'A', 'Medium',
 'Well-designed indexes can significantly improve query performance.'),

-- ============================================================
-- MongoDB Advanced Concepts, Security & Operations — Q151 to Q200
-- ============================================================

-- Q151
('MongoDB', 'What is a replica set?',
 'A group of MongoDB instances maintaining the same data set',
 'A group of collections',
 'A group of indexes',
 'A single document',
 'A', 'Hard',
 'Replica sets provide redundancy and high availability.'),

-- Q152
('MongoDB', 'What is the primary node in a replica set?',
 'The member that normally receives writes',
 'A backup file',
 'A config server',
 'A query index',
 'A', 'Hard',
 'The primary normally handles writes.'),

-- Q153
('MongoDB', 'What is a secondary node?',
 'A replica-set member that replicates data from the primary',
 'A database user',
 'A collection',
 'An index',
 'A', 'Hard',
 'Secondaries replicate the primary''s data.'),

-- Q154
('MongoDB', 'What happens if a replica-set primary becomes unavailable?',
 'An eligible secondary can be elected as primary',
 'All data is automatically deleted',
 'MongoDB converts to SQL',
 'The collection is dropped',
 'A', 'Hard',
 'Replica sets support automatic elections.'),

-- Q155
('MongoDB', 'What is replication?',
 'Maintaining copies of data across replica-set members',
 'Encrypting data',
 'Compressing indexes',
 'Creating collections',
 'A', 'Hard',
 'Replication provides redundancy and availability.'),

-- Q156
('MongoDB', 'What is the oplog?',
 'A special capped collection recording operations for replication',
 'A user password file',
 'An index directory',
 'A query cache',
 'A', 'Hard',
 'The oplog records operations that secondaries use to replicate changes.'),

-- Q157
('MongoDB', 'Which database commonly contains replica-set oplog data?',
 'local',
 'admin',
 'config',
 'system',
 'A', 'Hard',
 'The replica-set oplog is stored in the local database.'),

-- Q158
('MongoDB', 'What is a sharded cluster?',
 'A distributed MongoDB deployment that partitions data across shards',
 'A single database',
 'A single index',
 'A backup archive',
 'A', 'Hard',
 'Sharding distributes data across multiple shards.'),

-- Q159
('MongoDB', 'What is a shard?',
 'A component that stores a portion of sharded data',
 'A database user',
 'A query operator',
 'A BSON type',
 'A', 'Hard',
 'Shards hold partitions of a sharded collection''s data.'),

-- Q160
('MongoDB', 'What is a shard key?',
 'A field or fields used to distribute documents across shards',
 'A password',
 'An index name only',
 'A collection name',
 'A', 'Hard',
 'The shard key determines data distribution.'),

-- Q161
('MongoDB', 'Which component routes client operations in a sharded cluster?',
 'mongos',
 'mongod only',
 'mongo-router',
 'mongosh',
 'A', 'Hard',
 'mongos acts as the query router.'),

-- Q162
('MongoDB', 'What do config servers store in a sharded cluster?',
 'Cluster metadata and configuration',
 'User application images only',
 'Browser settings',
 'HTML files',
 'A', 'Hard',
 'Config servers maintain metadata about the sharded cluster.'),

-- Q163
('MongoDB', 'What is a chunk in MongoDB sharding?',
 'A contiguous range of shard-key values managed as a unit',
 'A password file',
 'An index type',
 'A database user',
 'A', 'Hard',
 'Chunks represent ranges of sharded data.'),

-- Q164
('MongoDB', 'What is chunk migration?',
 'Moving a chunk between shards',
 'Moving a database to SQL',
 'Deleting a collection',
 'Renaming an index',
 'A', 'Hard',
 'MongoDB can move chunks to balance data distribution.'),

-- Q165
('MongoDB', 'What is load balancing in sharding intended to achieve?',
 'Better distribution of data and workload',
 'Deleting unused users',
 'Removing all indexes',
 'Encrypting documents',
 'A', 'Hard',
 'Balancing distributes data across shards more evenly.'),

-- Q166
('MongoDB', 'What is a transaction?',
 'A group of database operations treated as a unit',
 'A collection',
 'An index',
 'A shell command only',
 'A', 'Hard',
 'Transactions allow multiple operations to commit or abort together.'),

-- Q167
('MongoDB', 'MongoDB transactions can provide which property?',
 'Atomicity',
 'HTML rendering',
 'CSS inheritance',
 'Automatic schema removal',
 'A', 'Hard',
 'Transactions provide atomic execution of the transaction''s operations.'),

-- Q168
('MongoDB', 'What does atomicity mean?',
 'Operations in a transaction succeed or fail as a unit',
 'Data is always encrypted',
 'Queries are always faster',
 'Documents cannot contain arrays',
 'A', 'Hard',
 'Atomicity prevents partial transaction results.'),

-- Q169
('MongoDB', 'What is a session in MongoDB?',
 'A context used for operations such as transactions',
 'A collection',
 'An index',
 'A BSON type',
 'A', 'Hard',
 'Client sessions support transactions and other session-level operations.'),

-- Q170
('MongoDB', 'What is read concern?',
 'Controls consistency and isolation characteristics of reads',
 'Controls passwords',
 'Creates collections',
 'Controls field names',
 'A', 'Hard',
 'Read concern controls the consistency properties of read operations.'),

-- Q171
('MongoDB', 'What is write concern?',
 'Controls acknowledgment requirements for write operations',
 'Controls collection names',
 'Controls indexes only',
 'Controls BSON conversion',
 'A', 'Hard',
 'Write concern specifies how MongoDB acknowledges writes.'),

-- Q172
('MongoDB', 'Which write concern requests acknowledgment from the server?',
 'w: 1',
 'w: 0',
 'w: none',
 'w: false',
 'A', 'Hard',
 'w: 1 requests acknowledgment from the primary.'),

-- Q173
('MongoDB', 'What is a change stream?',
 'A mechanism for observing real-time data changes',
 'A backup file',
 'A database schema',
 'An index type',
 'A', 'Hard',
 'Change streams allow applications to react to database changes.'),

-- Q174
('MongoDB', 'Change streams are commonly built on which MongoDB deployment capability?',
 'Replica sets and sharded clusters',
 'Standalone servers only',
 'HTML servers',
 'SQL databases',
 'A', 'Hard',
 'Change streams require deployments that support the necessary replication infrastructure.'),

-- Q175
('MongoDB', 'What is MongoDB authentication?',
 'Verifying a user''s identity',
 'Sorting documents',
 'Creating indexes',
 'Compressing data',
 'A', 'Hard',
 'Authentication verifies who is connecting.'),

-- Q176
('MongoDB', 'What is authorization?',
 'Determining what an authenticated user is allowed to do',
 'Verifying a document''s BSON type',
 'Creating a database',
 'Sorting records',
 'A', 'Hard',
 'Authorization controls permissions after authentication.'),

-- Q177
('MongoDB', 'Which database commonly contains administrative users and roles?',
 'admin',
 'local',
 'config',
 'system',
 'A', 'Hard',
 'The admin database is used for cluster-wide administrative operations and users.'),

-- Q178
('MongoDB', 'What is RBAC?',
 'Role-Based Access Control',
 'Replica Backup Automatic Control',
 'Remote BSON Access Connection',
 'Read-Based Application Cache',
 'A', 'Hard',
 'RBAC assigns permissions through roles.'),

-- Q179
('MongoDB', 'Which MongoDB concept defines permissions?',
 'Roles',
 'Documents',
 'Collections',
 'Indexes',
 'A', 'Hard',
 'Roles define privileges granted to users.'),

-- Q180
('MongoDB', 'What is TLS commonly used for in MongoDB?',
 'Encrypting network communication',
 'Creating indexes',
 'Sorting documents',
 'Grouping records',
 'A', 'Hard',
 'TLS protects data transmitted over the network.'),

-- Q181
('MongoDB', 'What is encryption at rest?',
 'Protecting stored data using encryption',
 'Encrypting only queries',
 'Encrypting HTML',
 'Encrypting database names only',
 'A', 'Hard',
 'Encryption at rest protects persisted database data.'),

-- Q182
('MongoDB', 'What is a backup?',
 'A copy of data used for recovery',
 'An index',
 'A query operator',
 'A collection field',
 'A', 'Hard',
 'Backups help restore data after loss or corruption.'),

-- Q183
('MongoDB', 'Which MongoDB utility can create binary database backups?',
 'mongodump',
 'mongobackup',
 'dbdump',
 'mongoexportdb',
 'A', 'Hard',
 'mongodump creates BSON-based binary backups.'),

-- Q184
('MongoDB', 'Which utility restores a mongodump backup?',
 'mongorestore',
 'mongoload',
 'mongorecover',
 'dbrestore',
 'A', 'Hard',
 'mongorestore restores BSON data created by mongodump.'),

-- Q185
('MongoDB', 'Which utility exports MongoDB data to JSON or CSV?',
 'mongoexport',
 'mongodump',
 'mongoextract',
 'dbexporter',
 'A', 'Hard',
 'mongoexport produces JSON or CSV output.'),

-- Q186
('MongoDB', 'Which utility imports JSON or CSV data?',
 'mongoimport',
 'mongorestore',
 'mongoload',
 'dbimporter',
 'A', 'Hard',
 'mongoimport imports JSON, CSV, or TSV data.'),

-- Q187
('MongoDB', 'Which backup tool preserves MongoDB BSON data and metadata more completely than JSON export?',
 'mongodump',
 'mongoexport',
 'mongoimport',
 'mongosh',
 'A', 'Hard',
 'mongodump is designed for database backup and restore.'),

-- Q188
('MongoDB', 'What is MongoDB schema validation commonly based on?',
 'JSON Schema rules',
 'HTML validation',
 'CSS rules',
 'SQL triggers',
 'A', 'Hard',
 'MongoDB supports JSON Schema-based validation.'),

-- Q189
('MongoDB', 'What is an application-level schema?',
 'Rules enforced by application code',
 'A MongoDB index',
 'A replica set',
 'A backup',
 'A', 'Hard',
 'Applications can enforce expected document structures themselves.'),

-- Q190
('MongoDB', 'Why should schema design consider access patterns?',
 'To optimize how data is read and updated',
 'To remove all documents',
 'To avoid using databases',
 'To convert BSON into HTML',
 'A', 'Hard',
 'MongoDB schema design is strongly influenced by application query and update patterns.'),

-- Q191
('MongoDB', 'What is the document size limit in modern MongoDB?',
 '16 MB',
 '1 MB',
 '64 MB',
 '100 MB',
 'A', 'Hard',
 'A MongoDB BSON document has a 16 MiB maximum size.'),

-- Q192
('MongoDB', 'Which MongoDB feature is designed for storing files larger than the document size limit?',
 'GridFS',
 'FileDB',
 'MongoFiles',
 'BSONFS',
 'A', 'Hard',
 'GridFS stores large files across multiple MongoDB documents.'),

-- Q193
('MongoDB', 'What does GridFS use to store large files?',
 'Multiple chunks and file metadata',
 'One unlimited BSON document',
 'SQL tables',
 'HTML files',
 'A', 'Hard',
 'GridFS splits files into chunks and stores metadata separately.'),

-- Q194
('MongoDB', 'What is a view in MongoDB?',
 'A read-only queryable representation of aggregation results',
 'A physical duplicate of a collection',
 'An index',
 'A backup',
 'A', 'Hard',
 'MongoDB views are defined by aggregation pipelines and are read-only.'),

-- Q195
('MongoDB', 'What is a time series collection designed to store?',
 'Time-dependent measurements',
 'User passwords only',
 'HTML documents',
 'Database indexes',
 'A', 'Hard',
 'Time series collections optimize storage and querying for time-based data.'),

-- Q196
('MongoDB', 'Which fields are especially important in time series data?',
 'Time and measurement information',
 'HTML and CSS',
 'Password and username only',
 'Index and database name only',
 'A', 'Hard',
 'Time series data is organized around measurements recorded over time.'),

-- Q197
('MongoDB', 'What is Atlas Search?',
 'Search functionality provided within MongoDB Atlas',
 'A Linux command',
 'A SQL database',
 'A MongoDB backup utility',
 'A', 'Hard',
 'Atlas Search provides search capabilities integrated with Atlas.'),

-- Q198
('MongoDB', 'Which tool is useful for visually exploring MongoDB collections?',
 'MongoDB Compass',
 'Microsoft Word',
 'PowerPoint',
 'Notepad only',
 'A', 'Hard',
 'Compass provides a graphical interface for MongoDB data and operations.'),

-- Q199
('MongoDB', 'Which practice is important for production MongoDB deployments?',
 'Use appropriate security, backups, monitoring, and indexes',
 'Disable authentication',
 'Remove all backups',
 'Use unlimited document sizes',
 'A', 'Hard',
 'Production systems require security, recoverability, monitoring, and performance planning.'),

-- Q200
('MongoDB', 'Which statement best describes MongoDB?',
 'A flexible document-oriented database supporting replication, indexing, aggregation, and sharding',
 'A CSS framework',
 'A programming language',
 'An operating system',
 'A', 'Hard',
 'MongoDB is a document database with extensive querying, aggregation, indexing, replication, and distributed-system capabilities.');

-- ============================================================
-- VERIFICATION 1
-- Expected result: 200
-- ============================================================

SELECT COUNT(*) AS mongodb_questions
FROM questions
WHERE skill = 'MongoDB';

-- ============================================================
-- VERIFICATION 2
-- Expected result: 200
-- ============================================================

SELECT COUNT(DISTINCT question) AS unique_mongodb_questions
FROM questions
WHERE skill = 'MongoDB';

-- ============================================================
-- VERIFICATION 3
-- Shows question count for every skill
-- ============================================================

SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;

