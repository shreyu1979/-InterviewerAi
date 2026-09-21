USE ai_interviewer;

-- =====================================================
-- POWER BI — 200 MCQs
-- =====================================================
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard
-- =====================================================

SET SQL_SAFE_UPDATES = 0;

-- Delete existing Power BI questions
DELETE FROM questions
WHERE skill = 'Power BI';

SET SQL_SAFE_UPDATES = 1;

-- =====================================================
-- Power BI Fundamentals & Interface — Q1–Q50
-- =====================================================

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Power BI', 'What is Microsoft Power BI?', 'Programming language', 'Business intelligence and data visualization platform', 'Operating system', 'Text editor', 'B', 'Easy', 'Power BI is used to connect, transform, analyze, visualize, and share data.'),

-- Q2
('Power BI', 'Which company develops Power BI?', 'Google', 'Microsoft', 'Amazon', 'Oracle', 'B', 'Easy', 'Power BI is a Microsoft product.'),

-- Q3
('Power BI', 'What is the main purpose of Power BI?', 'Data analysis and visualization', 'Video editing', 'Operating system management', 'Web hosting', 'A', 'Easy', 'Power BI helps users analyze data and create interactive reports and dashboards.'),

-- Q4
('Power BI', 'Which application is primarily used to create Power BI reports on a computer?', 'Power BI Desktop', 'Power BI Writer', 'Power BI Editor', 'Power BI Studio only', 'A', 'Easy', 'Power BI Desktop is the primary authoring application.'),

-- Q5
('Power BI', 'What is Power BI Service?', 'Cloud-based Power BI platform', 'Desktop operating system', 'Database engine', 'Programming language', 'A', 'Easy', 'Power BI Service is Microsoft''s cloud platform for publishing and sharing BI content.'),

-- Q6
('Power BI', 'What is Power BI Mobile?', 'Mobile application for viewing and interacting with Power BI content', 'Database server', 'Desktop compiler', 'Spreadsheet program', 'A', 'Easy', 'Power BI Mobile apps allow users to access reports and dashboards on mobile devices.'),

-- Q7
('Power BI', 'What is a Power BI report?', 'Collection of one or more report pages containing visualizations', 'Database table only', 'Single data row', 'Programming file', 'A', 'Easy', 'Reports contain visualizations organized across pages.'),

-- Q8
('Power BI', 'What is a dashboard in Power BI Service?', 'A single-page canvas containing tiles', 'A database table', 'A DAX formula', 'A Power Query step', 'A', 'Easy', 'A dashboard in Power BI Service is a single-page collection of tiles.'),

-- Q9
('Power BI', 'Can a Power BI report contain multiple pages?', 'Yes', 'No', 'Only two pages', 'Only in Desktop', 'A', 'Easy', 'Reports can contain multiple report pages.'),

-- Q10
('Power BI', 'What is a visual in Power BI?', 'Graphical representation of data', 'Database server', 'Formula only', 'Data source', 'A', 'Easy', 'Visuals display analyzed data as charts, tables, cards, maps, and more.'),

-- Q11
('Power BI', 'Which visual is commonly used to compare categories?', 'Bar chart', 'Card', 'Gauge only', 'Slicer', 'A', 'Easy', 'Bar charts are effective for category comparisons.'),

-- Q12
('Power BI', 'Which visual is commonly used to show trends over time?', 'Line chart', 'Card', 'Pie chart only', 'Table only', 'A', 'Easy', 'Line charts are commonly used for time-series trends.'),

-- Q13
('Power BI', 'Which visual displays a single important number?', 'Card', 'Line chart', 'Scatter chart', 'Map', 'A', 'Easy', 'Card visuals display key metrics such as total sales.'),

-- Q14
('Power BI', 'What is a slicer?', 'Interactive filter visual', 'Database', 'Formula', 'Chart title', 'A', 'Easy', 'Slicers allow users to filter report data interactively.'),

-- Q15
('Power BI', 'What does a table visual display?', 'Data in rows and columns', 'Only a single number', 'Only geographic data', 'Only images', 'A', 'Easy', 'Table visuals display fields and values in tabular form.'),

-- Q16
('Power BI', 'What does a matrix visual support?', 'Hierarchical row and column layouts', 'Video editing', 'Database creation', 'Programming compilation', 'A', 'Easy', 'Matrix visuals support hierarchical and pivot-style analysis.'),

-- Q17
('Power BI', 'What is a KPI visual used for?', 'Tracking performance against a target', 'Creating databases', 'Editing images', 'Writing code', 'A', 'Easy', 'KPI visuals compare an indicator with a target or goal.'),

-- Q18
('Power BI', 'What is a gauge visual useful for?', 'Showing progress toward a target', 'Storing raw data', 'Creating formulas', 'Writing DAX only', 'A', 'Easy', 'Gauges visualize a value relative to a target or range.'),

-- Q19
('Power BI', 'Which visual is suitable for showing relationships between two numerical variables?', 'Scatter chart', 'Card', 'Slicer', 'Pie chart', 'A', 'Easy', 'Scatter charts show relationships between numeric values.'),

-- Q20
('Power BI', 'Which visual is commonly used for proportions?', 'Pie chart', 'Line chart', 'Scatter chart', 'Table only', 'A', 'Easy', 'Pie charts can show parts of a whole.'),

-- Q21
('Power BI', 'What is a semantic model in Power BI?', 'Data model containing tables, relationships, measures, and metadata', 'Image file', 'Dashboard tile only', 'Power BI password', 'A', 'Easy', 'A semantic model provides structured data for reports and analysis.'),

-- Q22
('Power BI', 'What was the older commonly used term for Power BI semantic model?', 'Dataset', 'Workbook', 'Worksheet', 'Recordset', 'A', 'Easy', 'Power BI historically used the term dataset; Microsoft increasingly uses semantic model.'),

-- Q23
('Power BI', 'What is a workspace?', 'Collaborative area for Power BI content', 'A single chart', 'A database field', 'A DAX function', 'A', 'Easy', 'Workspaces organize and manage reports, semantic models, dashboards, and other content.'),

-- Q24
('Power BI', 'What is Power BI Desktop mainly used for?', 'Building models and reports', 'Managing operating system files', 'Writing Java programs', 'Sending emails', 'A', 'Easy', 'Desktop is primarily an authoring and modeling environment.'),

-- Q25
('Power BI', 'What is Power BI Service mainly used for?', 'Publishing, sharing, and collaborating on BI content', 'Writing Python programs', 'Editing videos', 'Creating operating systems', 'A', 'Easy', 'The Service supports publishing, sharing, collaboration, and online consumption.'),

-- Q26
('Power BI', 'Which file extension is commonly used for Power BI Desktop files?', '.pbix', '.xlsx', '.docx', '.pptx', 'A', 'Easy', '.pbix is the standard Power BI Desktop file format.'),

-- Q27
('Power BI', 'What is a template file commonly associated with Power BI?', '.pbit', '.pbitx', '.template', '.pbtemplate', 'A', 'Easy', '.pbit files are Power BI templates.'),

-- Q28
('Power BI', 'What does a PBIX file generally contain?', 'Report, model, and related Power BI content', 'Only images', 'Only SQL code', 'Only dashboard links', 'A', 'Easy', 'PBIX files can contain the report definition and imported or model data depending on the model.'),

-- Q29
('Power BI', 'What is Power Query used for?', 'Data extraction and transformation', 'Dashboard sharing only', 'User authentication only', 'Chart animation', 'A', 'Easy', 'Power Query connects to data and performs transformations.'),

-- Q30
('Power BI', 'What language powers Power Query transformations?', 'M', 'DAX', 'SQL only', 'VBA', 'A', 'Easy', 'Power Query uses the M language.'),

-- Q31
('Power BI', 'What is DAX?', 'Data Analysis Expressions language', 'Database Access XML', 'Data Application Extension', 'Dashboard Analysis XML', 'A', 'Easy', 'DAX is used for calculations in Power BI semantic models.'),

-- Q32
('Power BI', 'Which language is mainly used for Power BI data modeling calculations?', 'DAX', 'M', 'HTML', 'CSS', 'A', 'Easy', 'DAX is used for measures, calculated columns, and calculated tables.'),

-- Q33
('Power BI', 'Which language is mainly used for Power Query transformations?', 'M', 'DAX', 'Java', 'C++', 'A', 'Easy', 'Power Query uses M for data extraction and transformation steps.'),

-- Q34
('Power BI', 'What is the difference between Power Query and DAX?', 'Power Query transforms data; DAX performs model calculations', 'Both are exactly the same', 'DAX imports files only', 'Power Query creates dashboards only', 'A', 'Easy', 'They serve different stages of the BI workflow.'),

-- Q35
('Power BI', 'What is a report page?', 'Canvas containing Power BI visuals', 'Database server', 'DAX formula', 'Data source', 'A', 'Easy', 'Report pages contain visualizations and other report elements.'),

-- Q36
('Power BI', 'What is drill-down?', 'Moving from summarized data to more detailed levels', 'Deleting data', 'Refreshing a report', 'Exporting data', 'A', 'Easy', 'Drill-down lets users explore lower levels of a hierarchy.'),

-- Q37
('Power BI', 'What is drill-through?', 'Navigating to a detailed page filtered for a selected context', 'Deleting a report page', 'Creating an index', 'Importing Excel data', 'A', 'Easy', 'Drill-through opens a detail page filtered by the selected item.'),

-- Q38
('Power BI', 'What is a tooltip?', 'Additional information displayed when hovering over a visual', 'A database', 'A data source', 'A DAX variable', 'A', 'Easy', 'Tooltips provide contextual details without changing the main visual.'),

-- Q39
('Power BI', 'What is cross-filtering?', 'Selecting data in one visual filters another visual', 'Filtering only columns during import', 'Deleting duplicate data', 'Filtering files', 'A', 'Easy', 'Power BI visuals can interact through filtering.'),

-- Q40
('Power BI', 'What is cross-highlighting?', 'Selecting part of one visual highlights related portions of another', 'Changing chart colors manually', 'Highlighting formulas', 'Formatting cells', 'A', 'Easy', 'Cross-highlighting emphasizes related data while retaining context.'),

-- Q41
('Power BI', 'What is a hierarchy?', 'Ordered levels of related data', 'Database password', 'Chart type', 'Power Query error', 'A', 'Easy', 'A hierarchy can contain levels such as Year, Quarter, Month, and Day.'),

-- Q42
('Power BI', 'Which is an example of a date hierarchy?', 'Year → Quarter → Month → Day', 'Country → Product → Date', 'Sales → Profit → Revenue', 'Name → ID → Address', 'A', 'Easy', 'Date hierarchies organize time at multiple levels.'),

-- Q43
('Power BI', 'What is a bookmark in Power BI?', 'Saves a particular report view or state', 'Saves only a password', 'Creates a database', 'Imports Excel data', 'A', 'Easy', 'Bookmarks capture report states including filters and visual visibility.'),

-- Q44
('Power BI', 'What can bookmarks be used to create?', 'Interactive navigation and storytelling', 'SQL databases', 'Operating systems', 'New programming languages', 'A', 'Easy', 'Bookmarks can support navigation, toggles, and guided experiences.'),

-- Q45
('Power BI', 'What is a button in Power BI often used for?', 'Navigation or triggering actions', 'Data storage', 'Creating databases', 'Writing DAX', 'A', 'Easy', 'Buttons can trigger navigation, bookmarks, drill-through, and other actions.'),

-- Q46
('Power BI', 'What is a theme in Power BI?', 'Set of visual formatting settings', 'Database structure', 'DAX formula', 'Data source', 'A', 'Easy', 'Themes provide consistent colors, fonts, and visual formatting.'),

-- Q47
('Power BI', 'What is the purpose of a report theme?', 'Maintain consistent report appearance', 'Improve database storage', 'Create tables', 'Change DAX syntax', 'A', 'Easy', 'Themes help maintain consistent visual design.'),

-- Q48
('Power BI', 'What is a custom visual?', 'Additional visualization created or provided beyond built-in visuals', 'A database table', 'A Power Query function', 'A DAX variable', 'A', 'Easy', 'Custom visuals extend Power BI''s visualization capabilities.'),

-- Q49
('Power BI', 'Where can users commonly obtain certified Power BI visuals?', 'AppSource', 'BIOS', 'Git compiler', 'Windows Registry only', 'A', 'Easy', 'Microsoft AppSource provides Power BI visuals and other extensions.'),

-- Q50
('Power BI', 'What is the main goal of data visualization?', 'Make patterns and insights easier to understand', 'Increase file size', 'Hide all data', 'Replace databases', 'A', 'Easy', 'Visualization communicates trends, comparisons, and relationships clearly.'),

-- =====================================================
-- Data Sources & Power Query — Q51–Q100
-- =====================================================

-- Q51
('Power BI', 'Which file can Power BI commonly import?', 'Excel workbook', 'Word document only', 'Executable file only', 'BIOS file', 'A', 'Medium', 'Power BI can connect to Excel workbooks.'),

-- Q52
('Power BI', 'Can Power BI connect to SQL Server?', 'Yes', 'No', 'Only through screenshots', 'Only through Word', 'A', 'Medium', 'SQL Server is a supported data source.'),

-- Q53
('Power BI', 'Can Power BI connect to CSV files?', 'Yes', 'No', 'Only after converting to Word', 'Only through PowerPoint', 'A', 'Medium', 'CSV is a common data source.'),

-- Q54
('Power BI', 'Which option generally loads data into Power BI while allowing transformations?', 'Transform Data', 'Print Data', 'Format Data', 'Draw Data', 'A', 'Medium', 'Transform Data opens Power Query for data preparation.'),

-- Q55
('Power BI', 'What is Power Query Editor?', 'Environment for transforming and preparing data', 'Chart viewer', 'Dashboard viewer', 'DAX-only editor', 'A', 'Medium', 'Power Query Editor provides tools for data transformation.'),

-- Q56
('Power BI', 'What is an applied step in Power Query?', 'A transformation operation recorded in the query', 'A chart', 'A DAX measure', 'A dashboard tile', 'A', 'Medium', 'Power Query records transformations as Applied Steps.'),

-- Q57
('Power BI', 'What happens when a Power Query step is changed?', 'Later dependent steps may update accordingly', 'The entire computer shuts down', 'All reports are deleted', 'DAX is disabled', 'A', 'Medium', 'Power Query transformations form a sequence of dependent steps.'),

-- Q58
('Power BI', 'What is data type detection?', 'Identifying appropriate types for columns', 'Creating dashboards', 'Sorting charts', 'Creating measures', 'A', 'Medium', 'Correct data types are important for calculations and modeling.'),

-- Q59
('Power BI', 'Which data type is suitable for whole numbers?', 'Whole Number', 'Text', 'Date', 'Binary', 'A', 'Medium', 'Whole Number stores integer values.'),

-- Q60
('Power BI', 'Which data type is suitable for decimal values?', 'Decimal Number', 'Whole Number', 'Text only', 'Date only', 'A', 'Medium', 'Decimal Number stores numeric values with decimal precision.'),

-- Q61
('Power BI', 'Which type is suitable for dates?', 'Date', 'Text only', 'Boolean', 'Binary', 'A', 'Medium', 'Date stores date values.'),

-- Q62
('Power BI', 'Which type is suitable for true or false values?', 'True/False', 'Text', 'Date', 'Decimal', 'A', 'Medium', 'True/False stores Boolean values.'),

-- Q63
('Power BI', 'What does Remove Columns do in Power Query?', 'Removes selected columns from the query result', 'Deletes the database', 'Removes the Power BI report', 'Deletes all rows', 'A', 'Medium', 'It removes unwanted columns during transformation.'),

-- Q64
('Power BI', 'What does Remove Rows do?', 'Removes selected rows based on a transformation option', 'Deletes columns', 'Deletes the report', 'Removes measures', 'A', 'Medium', 'Power Query provides multiple options for removing rows.'),

-- Q65
('Power BI', 'What does Filter Rows do in Power Query?', 'Keeps rows satisfying specified conditions', 'Deletes all columns', 'Creates charts', 'Changes report themes', 'A', 'Medium', 'Filtering limits the rows included in the transformed data.'),

-- Q66
('Power BI', 'What does Sort do in Power Query?', 'Arranges rows according to selected columns', 'Creates a dashboard', 'Creates measures', 'Encrypts data', 'A', 'Medium', 'Sorting changes row order.'),

-- Q67
('Power BI', 'What does Replace Values do?', 'Replaces specified values in a column', 'Deletes a table', 'Creates a chart', 'Creates a relationship', 'A', 'Medium', 'Replace Values changes matching values during transformation.'),

-- Q68
('Power BI', 'What does Split Column do?', 'Splits one column into multiple columns', 'Combines tables', 'Deletes rows', 'Creates a report page', 'A', 'Medium', 'Columns can be split by delimiter or position.'),

-- Q69
('Power BI', 'What does Merge Columns do?', 'Combines multiple columns into one', 'Deletes columns', 'Creates relationships', 'Creates dashboards', 'A', 'Medium', 'Merge Columns combines column values into a new column.'),

-- Q70
('Power BI', 'What is Merge Queries in Power Query?', 'Combines tables based on matching columns', 'Combines chart titles', 'Combines reports', 'Combines measures', 'A', 'Medium', 'Merge Queries performs a join-like operation between tables.'),

-- Q71
('Power BI', 'What is Append Queries?', 'Stacks rows from multiple tables', 'Joins columns using keys', 'Creates a chart', 'Creates a measure', 'A', 'Medium', 'Append combines tables vertically.'),

-- Q72
('Power BI', 'Merge Queries is conceptually similar to which SQL operation?', 'JOIN', 'DELETE', 'UPDATE', 'DROP', 'A', 'Medium', 'Merge Queries combines tables based on matching fields.'),

-- Q73
('Power BI', 'Append Queries is conceptually similar to which SQL operation?', 'UNION', 'JOIN', 'UPDATE', 'DROP', 'A', 'Medium', 'Append stacks rows similarly to a UNION.'),

-- Q74
('Power BI', 'What does Group By do in Power Query?', 'Groups rows and performs aggregations', 'Creates report pages', 'Adds users', 'Creates bookmarks', 'A', 'Medium', 'Group By can calculate sums, counts, averages, and other aggregations.'),

-- Q75
('Power BI', 'What does Fill Down do?', 'Fills blank cells using the value above', 'Deletes blank rows', 'Sorts values', 'Creates charts', 'A', 'Medium', 'Fill Down copies values downward in selected columns.'),

-- Q76
('Power BI', 'What does Fill Up do?', 'Fills blank cells using the value below', 'Creates a new table', 'Deletes columns', 'Sorts rows', 'A', 'Medium', 'Fill Up propagates values upward.'),

-- Q77
('Power BI', 'What is a custom column in Power Query?', 'New column created using an M expression', 'DAX measure', 'Chart column', 'Database column created on server', 'A', 'Medium', 'Custom Columns can be created using M formulas.'),

-- Q78
('Power BI', 'What is Conditional Column in Power Query?', 'Column created based on specified conditions', 'DAX measure', 'Chart filter', 'Dashboard tile', 'A', 'Medium', 'Conditional Columns use if/then logic.'),

-- Q79
('Power BI', 'What does Transpose do in Power Query?', 'Converts rows to columns and columns to rows', 'Deletes data', 'Creates measures', 'Creates charts', 'A', 'Medium', 'Transpose changes the orientation of tabular data.'),

-- Q80
('Power BI', 'What does Use First Row as Headers do?', 'Promotes the first row to column names', 'Deletes the first row', 'Creates a dashboard', 'Sorts data', 'A', 'Medium', 'It uses first-row values as column headers.'),

-- Q81
('Power BI', 'What is Unpivot Columns used for?', 'Converts columns into attribute-value rows', 'Deletes columns', 'Creates charts', 'Adds relationships', 'A', 'Medium', 'Unpivot converts wide-format data into an attribute-value structure.'),

-- Q82
('Power BI', 'What is Pivot Column in Power Query?', 'Converts unique values into separate columns', 'Deletes rows', 'Creates DAX measures', 'Creates bookmarks', 'A', 'Medium', 'Pivot Column transforms row values into columns.'),

-- Q83
('Power BI', 'What does Close & Apply do in Power Query?', 'Applies transformations and loads the result into the model', 'Deletes the query', 'Closes Power BI', 'Creates a dashboard only', 'A', 'Medium', 'It applies query changes and returns to the report or model.'),

-- Q84
('Power BI', 'What is query folding?', 'Pushing transformations back to the source when supported', 'Compressing PBIX files', 'Folding worksheets', 'Hiding queries', 'A', 'Medium', 'Query folding allows supported transformations to execute at the data source.'),

-- Q85
('Power BI', 'Why is query folding useful?', 'It can improve refresh performance and reduce data transfer', 'It changes chart colors', 'It creates bookmarks', 'It disables filtering', 'A', 'Medium', 'Processing transformations at the source can reduce work in Power BI.'),

-- Q86
('Power BI', 'What is a data source credential?', 'Authentication information used to access a data source', 'DAX formula', 'Chart title', 'Report page', 'A', 'Medium', 'Credentials authorize Power BI to connect to protected sources.'),

-- Q87
('Power BI', 'What is a gateway used for?', 'Connecting Power BI Service to certain on-premises data sources', 'Creating charts', 'Writing DAX', 'Editing report themes', 'A', 'Medium', 'On-premises data gateways enable cloud Power BI services to access supported local data.'),

-- Q88
('Power BI', 'Which gateway mode supports multiple users and shared data sources?', 'Standard mode', 'Personal mode only', 'Desktop mode', 'Report mode', 'A', 'Medium', 'Standard mode is designed for shared enterprise scenarios.'),

-- Q89
('Power BI', 'What is data refresh?', 'Updating data from its source', 'Changing report colors', 'Recreating visuals', 'Renaming a report', 'A', 'Medium', 'Refresh retrieves updated source data and updates the semantic model.'),

-- Q90
('Power BI', 'What is scheduled refresh?', 'Automatic refresh at configured times', 'Manual formatting', 'Automatic chart creation', 'Scheduled report deletion', 'A', 'Medium', 'Scheduled refresh updates supported semantic models automatically.'),

-- Q91
('Power BI', 'What is an incremental refresh?', 'Refreshing only relevant portions of data instead of everything', 'Adding columns manually', 'Rebuilding charts', 'Updating passwords', 'A', 'Medium', 'Incremental refresh reduces the amount of data processed during refresh.'),

-- Q92
('Power BI', 'What is a parameter in Power Query?', 'Named value that can control query behavior', 'Chart type', 'DAX measure only', 'Report page', 'A', 'Medium', 'Parameters can make queries dynamic and reusable.'),

-- Q93
('Power BI', 'What is a query in Power Query?', 'A defined set of steps that retrieves and transforms data', 'A dashboard', 'A chart', 'A workspace', 'A', 'Medium', 'Queries contain source and transformation steps.'),

-- Q94
('Power BI', 'What is a data source?', 'Location or system from which data is retrieved', 'Chart title', 'Report page', 'DAX variable', 'A', 'Medium', 'Examples include databases, files, APIs, and online services.'),

-- Q95
('Power BI', 'Which source is commonly used for web-based data?', 'Web connector', 'Paint connector', 'BIOS connector', 'Desktop connector', 'A', 'Medium', 'Power BI provides connectors for web data.'),

-- Q96
('Power BI', 'Can Power BI connect to APIs?', 'Yes', 'No', 'Only through screenshots', 'Only through Excel', 'A', 'Medium', 'Power BI can retrieve data from supported web APIs and connectors.'),

-- Q97
('Power BI', 'What does profiling data in Power Query help identify?', 'Quality and distribution of values', 'User passwords', 'Chart themes', 'Dashboard permissions only', 'A', 'Medium', 'Column profiling helps inspect errors, empty values, and value distributions.'),

-- Q98
('Power BI', 'Why should data types be checked before analysis?', 'Incorrect types can cause calculation and modeling problems', 'They change dashboard permissions', 'They delete visuals', 'They disable Power Query', 'A', 'Medium', 'Correct data types are essential for accurate calculations.'),

-- Q99
('Power BI', 'What is data cleansing?', 'Identifying and correcting data quality problems', 'Creating charts only', 'Publishing reports', 'Creating workspaces', 'A', 'Medium', 'Data cleansing handles issues such as duplicates, missing values, and inconsistent formats.'),

-- Q100
('Power BI', 'Which Power BI component is most closely associated with data transformation?', 'Power Query', 'DAX', 'Dashboard', 'Bookmark', 'A', 'Medium', 'Power Query is designed for data preparation and transformation.'),

-- =====================================================
-- Data Modeling & DAX — Q101–Q150
-- =====================================================

-- Q101
('Power BI', 'What is data modeling?', 'Structuring tables and relationships for analysis', 'Creating chart colors', 'Publishing reports only', 'Exporting PDFs', 'A', 'Medium', 'Modeling organizes data for efficient and meaningful analysis.'),

-- Q102
('Power BI', 'What is a fact table?', 'Table containing measurable business events or metrics', 'Table containing only report titles', 'Table containing users only', 'Table containing chart settings', 'A', 'Medium', 'Fact tables commonly contain numeric measures and foreign keys.'),

-- Q103
('Power BI', 'What is a dimension table?', 'Table containing descriptive attributes used to analyze facts', 'Table containing only calculations', 'Chart table', 'Dashboard table', 'A', 'Medium', 'Dimensions describe entities such as products, customers, and dates.'),

-- Q104
('Power BI', 'Which model is commonly recommended for Power BI analytical models?', 'Star schema', 'Circular schema', 'Flat-file-only schema', 'Random schema', 'A', 'Medium', 'Star schemas often provide clear relationships and efficient analytical queries.'),

-- Q105
('Power BI', 'In a star schema, the fact table is generally connected to:', 'Dimension tables', 'Charts', 'Workspaces', 'Dashboards', 'A', 'Medium', 'Dimension tables provide descriptive context for fact records.'),

-- Q106
('Power BI', 'What is a primary key?', 'Column that uniquely identifies records', 'Column containing only duplicates', 'Report ID', 'Chart title', 'A', 'Medium', 'Primary keys uniquely identify rows in a table.'),

-- Q107
('Power BI', 'What is a foreign key?', 'Column containing values that reference another table''s key', 'Password', 'Dashboard ID', 'DAX function', 'A', 'Medium', 'Foreign keys establish relationships between tables.'),

-- Q108
('Power BI', 'What is a relationship in Power BI?', 'Connection between columns in different tables', 'Connection between charts only', 'Connection between workspaces', 'Connection between users only', 'A', 'Medium', 'Relationships allow filters to propagate between related tables.'),

-- Q109
('Power BI', 'What does one-to-many relationship mean?', 'One row on one side relates to multiple rows on the other side', 'Every row has no relationship', 'One table contains one column', 'One chart contains many colors', 'A', 'Medium', 'One dimension record can relate to many fact records.'),

-- Q110
('Power BI', 'Which side of a typical dimension-to-fact relationship has unique values?', 'One side', 'Many side', 'Both always', 'Neither', 'A', 'Medium', 'The dimension side generally contains unique key values.'),

-- Q111
('Power BI', 'What is filter propagation?', 'Filters moving through model relationships', 'Formatting moving between visuals', 'Password sharing', 'Data export', 'A', 'Medium', 'Relationships allow filter context to affect related tables.'),

-- Q112
('Power BI', 'What is a calculated column?', 'Column whose values are calculated row by row', 'Dashboard tile', 'Power Query step only', 'Workspace field', 'A', 'Medium', 'Calculated columns use DAX and are evaluated for each row.'),

-- Q113
('Power BI', 'What is a measure?', 'Dynamic calculation evaluated according to filter context', 'Static text column only', 'Report page', 'Data source', 'A', 'Medium', 'Measures calculate results dynamically based on the current context.'),

-- Q114
('Power BI', 'Which is generally preferred for aggregations in reports?', 'Measures', 'Manual values', 'Text columns', 'Report titles', 'A', 'Medium', 'Measures are dynamic and respond to filters and slicers.'),

-- Q115
('Power BI', 'Which language is used to create measures?', 'DAX', 'M only', 'HTML', 'CSS', 'A', 'Medium', 'Measures are written using DAX.'),

-- Q116
('Power BI', 'Which DAX function adds values?', 'SUM', 'ADDONLY', 'TOTALVALUE', 'PLUSALL', 'A', 'Medium', 'SUM adds values in a column.'),

-- Q117
('Power BI', 'Which DAX function counts rows?', 'COUNTROWS', 'ROWCOUNTONLY', 'COUNTALLROWS', 'ROWSCOUNT', 'A', 'Medium', 'COUNTROWS counts rows in a table expression.'),

-- Q118
('Power BI', 'Which DAX function counts non-blank values in a column?', 'COUNTA', 'COUNTROWS', 'COUNTBLANK', 'COUNTALL', 'A', 'Medium', 'COUNTA counts non-blank values.'),

-- Q119
('Power BI', 'Which DAX function counts blank values?', 'COUNTBLANK', 'BLANKCOUNT', 'COUNTEMPTY', 'EMPTYCOUNT', 'A', 'Medium', 'COUNTBLANK counts blank values in a column.'),

-- Q120
('Power BI', 'Which DAX function calculates an average?', 'AVERAGE', 'AVGONLY', 'MEAN', 'AVERAGEVALUE', 'A', 'Medium', 'AVERAGE calculates the arithmetic mean.'),

-- Q121
('Power BI', 'Which DAX function returns the largest value?', 'MAX', 'LARGEST', 'HIGH', 'TOPVALUE', 'A', 'Medium', 'MAX returns the maximum value.'),

-- Q122
('Power BI', 'Which DAX function returns the smallest value?', 'MIN', 'LOWEST', 'SMALLVALUE', 'BOTTOM', 'A', 'Medium', 'MIN returns the minimum value.'),

-- Q123
('Power BI', 'What does the DAX IF function do?', 'Performs a logical test', 'Sorts data', 'Creates relationships', 'Refreshes data', 'A', 'Medium', 'IF returns different results based on a condition.'),

-- Q124
('Power BI', 'Which DAX function evaluates an expression over a table?', 'SUMX', 'SUMTABLEONLY', 'TABLESUM', 'ITERATESUMONLY', 'A', 'Medium', 'SUMX iterates over a table and sums an expression for each row.'),

-- Q125
('Power BI', 'What type of function is SUMX?', 'Iterator', 'Text function', 'Date function only', 'Relationship function', 'A', 'Medium', 'SUMX iterates row by row over a table expression.'),

-- Q126
('Power BI', 'Which is an iterator function?', 'AVERAGEX', 'AVERAGEONLY', 'AVGROW', 'MEANXONLY', 'A', 'Medium', 'AVERAGEX evaluates an expression for each row and averages the results.'),

-- Q127
('Power BI', 'Which DAX function can modify filter context?', 'CALCULATE', 'MODIFYFILTERONLY', 'FILTERCHANGE', 'CONTEXTSET', 'A', 'Medium', 'CALCULATE evaluates an expression in a modified filter context.'),

-- Q128
('Power BI', 'Why is CALCULATE important in DAX?', 'It changes filter context for calculations', 'It imports CSV files', 'It creates charts', 'It manages workspaces', 'A', 'Medium', 'CALCULATE is central to advanced DAX calculations.'),

-- Q129
('Power BI', 'What is filter context?', 'Set of filters affecting a calculation', 'Power Query transformation', 'Chart theme', 'Workspace permission', 'A', 'Medium', 'Filter context determines which data is considered by a measure.'),

-- Q130
('Power BI', 'What is row context?', 'Context representing the current row during row-by-row evaluation', 'Dashboard filter only', 'Workspace permission', 'Chart selection', 'A', 'Medium', 'Row context is common in calculated columns and iterator functions.'),

-- Q131
('Power BI', 'What does FILTER() in DAX return?', 'A filtered table', 'A single number only', 'A chart', 'A relationship', 'A', 'Medium', 'FILTER returns a table containing rows that meet a condition.'),

-- Q132
('Power BI', 'Which DAX function removes filters from specified tables or columns?', 'REMOVEFILTERS', 'DELETEFILTER', 'CLEARFILTERSONLY', 'FILTEROFF', 'A', 'Medium', 'REMOVEFILTERS clears filters from specified tables or columns.'),

-- Q133
('Power BI', 'Which DAX function can preserve selected filters while modifying others?', 'KEEPFILTERS', 'SAVEDFILTERS', 'FILTERKEEP', 'PRESERVEONLY', 'A', 'Medium', 'KEEPFILTERS changes how filter arguments interact with existing context.'),

-- Q134
('Power BI', 'Which DAX function can return a value when a result is blank?', 'COALESCE', 'IFNULLONLY', 'BLANKVALUE', 'NONBLANK', 'A', 'Medium', 'COALESCE returns the first expression that is not blank.'),

-- Q135
('Power BI', 'Which DAX function returns a blank value?', 'BLANK', 'EMPTY', 'NULLVALUE', 'NOTHING', 'A', 'Medium', 'BLANK() produces a DAX blank value.'),

-- Q136
('Power BI', 'Which DAX function returns distinct values?', 'DISTINCT', 'UNIQUEONLY', 'DISTINCTVALUEONLY', 'UNIQUE', 'A', 'Medium', 'DISTINCT returns a one-column table of distinct values.'),

-- Q137
('Power BI', 'Which function can return a table of unique combinations of columns?', 'SUMMARIZE', 'UNIQUEGROUP', 'GROUPUNIQUE', 'DISTINCTROWSONLY', 'A', 'Medium', 'SUMMARIZE can create grouped table results.'),

-- Q138
('Power BI', 'Which function can create a summarized table?', 'SUMMARIZE', 'SUMMARYTABLEONLY', 'GROUPTABLE', 'AGGREGATETABLE', 'A', 'Medium', 'SUMMARIZE groups data and can add calculated expressions.'),

-- Q139
('Power BI', 'What is a calculated table?', 'Table created using a DAX expression', 'Excel table', 'Power Query-only table', 'Dashboard table visual', 'A', 'Medium', 'Calculated tables are created using DAX expressions.'),

-- Q140
('Power BI', 'What is a date table?', 'Dedicated table containing a continuous set of dates for time analysis', 'Table containing only today''s date', 'Dashboard page', 'Power Query parameter', 'A', 'Medium', 'Date tables provide a consistent calendar for time-based analysis.'),

-- Q141
('Power BI', 'Why is a date table useful?', 'It supports reliable time intelligence analysis', 'It creates charts automatically', 'It replaces all fact tables', 'It disables filters', 'A', 'Medium', 'A proper date dimension supports calculations such as year-to-date and prior-period comparisons.'),

-- Q142
('Power BI', 'What is time intelligence?', 'Analysis involving periods and dates', 'Data security', 'Chart formatting', 'Database indexing', 'A', 'Medium', 'Time intelligence compares metrics across dates and periods.'),

-- Q143
('Power BI', 'Which DAX function can calculate year-to-date totals?', 'TOTALYTD', 'YTDONLY', 'YEARCALC', 'TOTALYEARVALUE', 'A', 'Medium', 'TOTALYTD evaluates an expression year-to-date.'),

-- Q144
('Power BI', 'Which function can calculate previous-year values?', 'SAMEPERIODLASTYEAR', 'PREVIOUSYEARVALUE', 'LASTYEARONLY', 'YEARBEFORE', 'A', 'Medium', 'SAMEPERIODLASTYEAR shifts a date context back one year.'),

-- Q145
('Power BI', 'Which DAX function returns the current date?', 'TODAY', 'CURRENTDATE', 'NOWDATE', 'DATECURRENT', 'A', 'Medium', 'TODAY() returns the current date.'),

-- Q146
('Power BI', 'Which DAX function returns the current date and time?', 'NOW', 'CURRENT', 'DATETIME', 'TIMEVALUE', 'A', 'Medium', 'NOW() returns the current date and time.'),

-- Q147
('Power BI', 'What is a KPI measure?', 'Calculation used to track an important performance indicator', 'Database field only', 'Power Query step', 'Chart title', 'A', 'Medium', 'KPI measures quantify business performance.'),

-- Q148
('Power BI', 'What is a calculated column''s major characteristic?', 'It is evaluated for each row and stored in the model', 'It exists only during report viewing', 'It is always a dashboard', 'It cannot use DAX', 'A', 'Medium', 'Calculated columns are materialized in the model after processing.'),

-- Q149
('Power BI', 'What is a measure''s major characteristic?', 'It is evaluated dynamically based on filter context', 'It always stores one value per row', 'It cannot respond to slicers', 'It is only a text label', 'A', 'Medium', 'Measures dynamically recalculate as report context changes.'),

-- Q150
('Power BI', 'Which is generally better for a reusable aggregation?', 'Measure', 'Manual typing', 'Static text', 'Chart title', 'A', 'Medium', 'Measures are reusable and respond dynamically to report context.'),

-- =====================================================
-- Visualization, Reports, Service & Advanced Concepts — Q151–Q200
-- =====================================================

-- Q151
('Power BI', 'What is row-level security (RLS)?', 'Restricting data users can see based on roles', 'Protecting worksheet rows from deletion', 'Hiding charts', 'Encrypting PBIX files only', 'A', 'Hard', 'RLS restricts data access according to defined roles and filters.'),

-- Q152
('Power BI', 'Where is RLS commonly defined for a Power BI model?', 'Modeling/security roles', 'Chart formatting', 'Power Query column names', 'Dashboard theme', 'A', 'Hard', 'Roles and their filters can be configured in Power BI Desktop and managed after publishing.'),

-- Q153
('Power BI', 'What is dynamic RLS?', 'RLS where filtering depends on the current user''s identity or attributes', 'RLS that changes chart colors', 'Automatic deletion of rows', 'Dynamic chart sorting only', 'A', 'Hard', 'Dynamic RLS can use user identity to determine permitted data.'),

-- Q154
('Power BI', 'Which DAX function is commonly used to retrieve the current user''s identity?', 'USERPRINCIPALNAME', 'CURRENTUSERONLY', 'USERNAMEONLY', 'USERID', 'A', 'Hard', 'USERPRINCIPALNAME() can return the current user''s principal name.'),

-- Q155
('Power BI', 'What is a workspace role?', 'Permission level controlling actions in a workspace', 'DAX calculation', 'Chart type', 'Data type', 'A', 'Hard', 'Workspace roles determine what users can do with workspace content.'),

-- Q156
('Power BI', 'Which is a Power BI workspace role?', 'Viewer', 'ReaderSQL', 'ChartAdmin', 'FormulaUser', 'A', 'Hard', 'Viewer is one of the standard workspace roles.'),

-- Q157
('Power BI', 'What is an app in Power BI Service?', 'Packaged content distributed to users', 'Mobile operating system', 'DAX formula', 'Database table', 'A', 'Hard', 'Power BI apps package content for consumers.'),

-- Q158
('Power BI', 'What is publishing?', 'Uploading a Power BI Desktop report to the Power BI Service', 'Exporting to Word only', 'Creating a database', 'Formatting a chart', 'A', 'Hard', 'Publishing sends report and model content from Desktop to a workspace in the Service.'),

-- Q159
('Power BI', 'What is sharing in Power BI?', 'Giving users access to reports or dashboards', 'Copying formulas only', 'Exporting images', 'Creating data types', 'A', 'Hard', 'Sharing allows authorized users to access Power BI content.'),

-- Q160
('Power BI', 'What is a subscription in Power BI Service?', 'Scheduled email delivery of report or dashboard snapshots or content', 'Database subscription', 'DAX function', 'Power Query step', 'A', 'Hard', 'Subscriptions can deliver Power BI content to users on a schedule.'),

-- Q161
('Power BI', 'What is an alert in Power BI?', 'Notification triggered when a supported data condition is met', 'Chart title', 'Data source', 'DAX formula', 'A', 'Hard', 'Alerts notify users when configured conditions are reached.'),

-- Q162
('Power BI', 'What is a dataflow?', 'Cloud-based data preparation process reusable across models', 'A chart', 'A DAX measure', 'A dashboard tile', 'A', 'Hard', 'Dataflows provide reusable data preparation in the Power BI and Fabric ecosystem.'),

-- Q163
('Power BI', 'What is a data gateway primarily used for?', 'Connecting cloud services to on-premises data', 'Creating DAX formulas', 'Building charts', 'Formatting tables', 'A', 'Hard', 'Gateways bridge cloud services and supported local data sources.'),

-- Q164
('Power BI', 'What is DirectQuery?', 'Storage mode where queries are sent to the underlying source at report interaction time', 'Full data import only', 'Chart rendering mode', 'Backup mode', 'A', 'Hard', 'DirectQuery leaves data in the source and queries it as needed.'),

-- Q165
('Power BI', 'What is Import mode?', 'Data is loaded into the Power BI model', 'Data always remains only in the source', 'Data is stored in Excel only', 'Data is not refreshable', 'A', 'Hard', 'Import mode loads data into the Power BI model for analysis.'),

-- Q166
('Power BI', 'What is a composite model?', 'Model combining supported storage modes or data sources', 'A model containing only one table', 'A dashboard theme', 'A chart type', 'A', 'Hard', 'Composite models can combine Import and DirectQuery scenarios.'),

-- Q167
('Power BI', 'Which storage mode generally provides fast in-memory analytical performance?', 'Import', 'DirectQuery only', 'CSV', 'XML', 'A', 'Hard', 'Imported data can use the Power BI in-memory engine for fast analysis.'),

-- Q168
('Power BI', 'What is Direct Lake?', 'A Fabric storage mode designed to access lake data directly for analytics', 'Excel import mode', 'Power Query filter', 'Dashboard type', 'A', 'Hard', 'Direct Lake is a Microsoft Fabric capability for analytical access to data in OneLake.'),

-- Q169
('Power BI', 'What is a semantic model relationship?', 'Logical connection between model tables', 'Connection between two dashboards', 'Connection between users', 'Connection between report themes', 'A', 'Hard', 'Relationships allow data filtering and analysis across tables.'),

-- Q170
('Power BI', 'What is bidirectional cross-filtering?', 'Filters can propagate in both directions across a relationship', 'Filters work only in Power Query', 'Filters move between workspaces', 'Filters delete data', 'A', 'Hard', 'Both sides of a relationship can participate in filter propagation.'),

-- Q171
('Power BI', 'Why should bidirectional relationships be used carefully?', 'They can create ambiguity or unexpected filter propagation', 'They always delete data', 'They disable DAX', 'They prevent all visuals', 'A', 'Hard', 'Complex models can develop ambiguous or unexpected filtering behavior.'),

-- Q172
('Power BI', 'What is a many-to-many relationship?', 'Relationship where both sides can contain duplicate key values', 'Relationship with only one row', 'Relationship between reports', 'Relationship between dashboards', 'A', 'Hard', 'Many-to-many relationships allow multiple matches on both sides.'),

-- Q173
('Power BI', 'What is a bridge table?', 'Table used to connect entities, often for many-to-many modeling', 'Dashboard table', 'Chart table', 'Power Query parameter', 'A', 'Hard', 'Bridge tables can resolve many-to-many relationships.'),

-- Q174
('Power BI', 'What is performance optimization in Power BI?', 'Improving model and report efficiency', 'Changing chart colors only', 'Adding unnecessary columns', 'Increasing file size', 'A', 'Hard', 'Optimization can involve model design, DAX, Power Query, and visual count.'),

-- Q175
('Power BI', 'Which practice can improve Power BI model performance?', 'Remove unnecessary columns', 'Add every available column', 'Use duplicate tables unnecessarily', 'Avoid relationships', 'A', 'Hard', 'Reducing unnecessary data lowers model size and processing requirements.'),

-- Q176
('Power BI', 'Why is a star schema often preferred?', 'It simplifies relationships and analytical queries', 'It removes all dimensions', 'It prevents filtering', 'It requires no data', 'A', 'Hard', 'Star schemas provide clear fact-to-dimension relationships.'),

-- Q177
('Power BI', 'What is cardinality in Power BI relationships?', 'Describes how many records relate between two tables', 'Number of report pages', 'Number of visuals', 'Number of workspaces', 'A', 'Hard', 'Cardinality includes one-to-one, one-to-many, and many-to-many relationships.'),

-- Q178
('Power BI', 'What is a one-to-one relationship?', 'Each row on one side corresponds to at most one row on the other side', 'One row relates to many rows', 'Every row relates to all rows', 'No rows relate', 'A', 'Hard', 'One-to-one relationships have unique matching keys on both sides.'),

-- Q179
('Power BI', 'What is visual-level filtering?', 'Filter applied to a specific visual', 'Filter applied to the entire workspace', 'Filter applied to all reports', 'Filter applied only during import', 'A', 'Hard', 'Visual-level filters affect only the selected visual.'),

-- Q180
('Power BI', 'What is page-level filtering?', 'Filter affecting visuals on a report page', 'Filter affecting only one data point', 'Filter affecting only one workspace', 'Filter affecting the entire tenant', 'A', 'Hard', 'Page-level filters apply across visuals on a report page.'),

-- Q181
('Power BI', 'What is report-level filtering?', 'Filter affecting the report''s pages according to its scope', 'Filter affecting only one chart', 'Filter affecting one cell', 'Filter affecting only a dashboard tile', 'A', 'Hard', 'Report-level filters can apply across report pages.'),

-- Q182
('Power BI', 'What is a visual interaction setting?', 'Controls how one visual affects another', 'Controls database passwords', 'Controls Power Query language', 'Controls workspace creation', 'A', 'Hard', 'Edit Interactions can control filtering and highlighting between visuals.'),

-- Q183
('Power BI', 'What is a decomposition tree?', 'Visual for analyzing a measure across multiple dimensions', 'Data source', 'DAX function', 'Dashboard role', 'A', 'Hard', 'The decomposition tree helps break down a metric by dimensions.'),

-- Q184
('Power BI', 'What is a waterfall chart useful for?', 'Showing how positive and negative changes contribute to a total', 'Showing geographic locations only', 'Displaying a single number', 'Filtering tables', 'A', 'Hard', 'Waterfall charts illustrate cumulative changes.'),

-- Q185
('Power BI', 'What is a funnel chart useful for?', 'Showing stages in a process and values at each stage', 'Showing relationships between two numeric variables', 'Displaying a single KPI only', 'Showing a map', 'A', 'Hard', 'Funnel charts are commonly used for processes such as sales pipelines.'),

-- Q186
('Power BI', 'What is a treemap?', 'Hierarchical data visualization using nested rectangles', 'A DAX function', 'A data source', 'A filter type', 'A', 'Hard', 'Treemaps show proportions and hierarchies using rectangles.'),

-- Q187
('Power BI', 'What is a map visual used for?', 'Geographic data visualization', 'DAX calculations', 'Data transformation', 'Security roles', 'A', 'Hard', 'Map visuals represent location-based data.'),

-- Q188
('Power BI', 'Why should geographic fields be categorized correctly?', 'To help Power BI interpret location data accurately', 'To create DAX measures', 'To increase file size', 'To disable filters', 'A', 'Hard', 'Correct data categories improve geographic interpretation.'),

-- Q189
('Power BI', 'What is a hierarchy drill-down button used for?', 'Moving between hierarchy levels', 'Deleting data', 'Refreshing the model', 'Publishing reports', 'A', 'Hard', 'Drill-down lets users move from high-level summaries to details.'),

-- Q190
('Power BI', 'What is a report page tooltip?', 'Custom tooltip page containing additional visuals or details', 'Database table', 'DAX measure', 'Workspace role', 'A', 'Hard', 'Tooltip pages provide richer contextual information when hovering.'),

-- Q191
('Power BI', 'What is a paginated report?', 'Highly formatted report designed for precise page-based output', 'Power BI dashboard only', 'DAX function', 'Excel workbook', 'A', 'Hard', 'Paginated reports are designed for printing and pixel-perfect layouts.'),

-- Q192
('Power BI', 'Which tool is traditionally associated with creating paginated reports?', 'Power BI Report Builder', 'Power BI Paint', 'Power Query Editor', 'Power BI Mobile', 'A', 'Hard', 'Power BI Report Builder is used to author paginated reports.'),

-- Q193
('Power BI', 'What is an on-premises data gateway?', 'Software that provides secure connectivity between local data and Microsoft cloud services', 'DAX editor', 'Visualization library', 'Dashboard template', 'A', 'Hard', 'It enables supported cloud services to access on-premises data.'),

-- Q194
('Power BI', 'What is a deployment pipeline?', 'Tool for managing content across development, test, and production stages', 'Power Query transformation', 'DAX calculation', 'Chart type', 'A', 'Hard', 'Deployment pipelines help manage BI content across environments.'),

-- Q195
('Power BI', 'What is lineage view?', 'View showing relationships and dependencies among Power BI artifacts', 'Chart type', 'DAX function', 'Data source only', 'A', 'Hard', 'Lineage helps users understand how reports, models, dataflows, and sources relate.'),

-- Q196
('Power BI', 'What is impact analysis?', 'Identifying downstream content affected by changes', 'Creating charts', 'Importing Excel', 'Formatting dashboards', 'A', 'Hard', 'Impact analysis helps assess dependencies before making changes.'),

-- Q197
('Power BI', 'What is Copilot in Power BI designed to assist with?', 'AI-assisted report and data-analysis tasks', 'Operating system installation', 'Hardware repair', 'SQL server replacement', 'A', 'Hard', 'Power BI Copilot can assist with supported analytics, report creation, and summarization tasks.'),

-- Q198
('Power BI', 'What is a good practice when designing a Power BI dashboard?', 'Keep visuals clear and focus on important KPIs', 'Use as many visuals as possible', 'Avoid labels', 'Use unrelated charts', 'A', 'Hard', 'Focused dashboards improve readability and decision-making.'),

-- Q199
('Power BI', 'Which combination best represents a typical Power BI workflow?', 'Connect → Transform → Model → Visualize → Publish', 'Code → Compile → Execute → Debug', 'Write → Print → Scan → Delete', 'Design → Animate → Export → Compile', 'A', 'Hard', 'A typical BI workflow involves connecting to data, preparing it, modeling it, creating visuals, and publishing.'),

-- Q200
('Power BI', 'Which statement best describes Power BI?', 'A business intelligence platform for data connectivity, transformation, modeling, analysis, visualization, and sharing', 'A programming language', 'An operating system', 'A word processor', 'A', 'Hard', 'Power BI provides an end-to-end platform for business intelligence and data analytics.');

-- =====================================================
-- Verification 1: Total Power BI Questions
-- =====================================================

SELECT COUNT(*) AS power_bi_questions
FROM questions
WHERE skill = 'Power BI';

-- Expected result: 200

-- =====================================================
-- Verification 2: Unique Power BI Questions
-- =====================================================

SELECT COUNT(DISTINCT question) AS unique_power_bi_questions
FROM questions
WHERE skill = 'Power BI';

-- Expected result: 200

-- =====================================================
-- Verification 3: Duplicate Check
-- =====================================================

SELECT
    COUNT(*) AS total_questions,
    COUNT(DISTINCT question) AS unique_questions,
    COUNT(*) - COUNT(DISTINCT question) AS duplicate_questions
FROM questions
WHERE skill = 'Power BI';

-- Expected result:
-- total_questions   = 200
-- unique_questions  = 200
-- duplicate_questions = 0

-- =====================================================
-- Verification 4: All Skills Count
-- =====================================================

SELECT
    skill,
    COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
