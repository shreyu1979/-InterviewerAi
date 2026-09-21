USE ai_interviewer;

-- =====================================================
-- Excel 200 MCQs
-- =====================================================
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard
-- =====================================================

SET SQL_SAFE_UPDATES = 0;

-- Delete existing Excel questions
DELETE FROM questions
WHERE skill = 'Excel';

SET SQL_SAFE_UPDATES = 1;

-- =====================================================
-- Excel Fundamentals & Interface — Q1 to Q50
-- =====================================================

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Excel', 'What is the default file extension of a modern Excel workbook?', '.xls', '.xlsx', '.csv', '.docx', 'B', 'Easy', 'The default Excel workbook format is .xlsx.'),

-- Q2
('Excel', 'Which symbol is used to start a formula in Excel?', '#', '=', '@', '$', 'B', 'Easy', 'Excel formulas begin with the equals sign.'),

-- Q3
('Excel', 'What is the intersection of a row and column called?', 'Range', 'Cell', 'Workbook', 'Worksheet', 'B', 'Easy', 'The intersection of a row and column is a cell.'),

-- Q4
('Excel', 'Which shortcut is used to save an Excel workbook?', 'Ctrl + P', 'Ctrl + S', 'Ctrl + C', 'Ctrl + X', 'B', 'Easy', 'Ctrl + S saves the current workbook.'),

-- Q5
('Excel', 'Which shortcut is used to copy selected cells?', 'Ctrl + C', 'Ctrl + V', 'Ctrl + X', 'Ctrl + Z', 'A', 'Easy', 'Ctrl + C copies the selected content.'),

-- Q6
('Excel', 'Which shortcut is used to paste copied content?', 'Ctrl + V', 'Ctrl + P', 'Ctrl + C', 'Ctrl + A', 'A', 'Easy', 'Ctrl + V pastes copied content.'),

-- Q7
('Excel', 'Which shortcut is used to undo the last action?', 'Ctrl + Y', 'Ctrl + Z', 'Ctrl + U', 'Ctrl + D', 'B', 'Easy', 'Ctrl + Z undoes the last action.'),

-- Q8
('Excel', 'Which shortcut selects all cells in the current worksheet?', 'Ctrl + S', 'Ctrl + A', 'Ctrl + F', 'Ctrl + H', 'B', 'Easy', 'Ctrl + A selects the current data region or the entire worksheet depending on context.'),

-- Q9
('Excel', 'What is a collection of worksheets called?', 'Workbook', 'Cell', 'Range', 'Formula', 'A', 'Easy', 'A workbook can contain multiple worksheets.'),

-- Q10
('Excel', 'Which area displays the content or formula of the active cell?', 'Status Bar', 'Formula Bar', 'Ribbon', 'Name Box', 'B', 'Easy', 'The Formula Bar displays the content of the active cell.'),

-- Q11
('Excel', 'Which Excel feature contains commands grouped into tabs?', 'Formula Bar', 'Ribbon', 'Status Bar', 'Name Box', 'B', 'Easy', 'The Ribbon contains commands organized into tabs and groups.'),

-- Q12
('Excel', 'What is the Name Box used for?', 'Displaying the active cell address', 'Calculating formulas', 'Creating charts', 'Sorting data', 'A', 'Easy', 'The Name Box displays the address or name of the active cell.'),

-- Q13
('Excel', 'What is a worksheet?', 'A single spreadsheet page inside a workbook', 'A collection of workbooks', 'A formula', 'A chart', 'A', 'Easy', 'A worksheet is an individual spreadsheet page within a workbook.'),

-- Q14
('Excel', 'Which part of Excel displays the current cell mode and other information?', 'Status Bar', 'Ribbon', 'Formula Bar', 'Name Box', 'A', 'Easy', 'The Status Bar displays information about the current worksheet and selection.'),

-- Q15
('Excel', 'Which option changes the orientation of text inside a cell?', 'Alignment', 'Font Size', 'Fill Color', 'Borders', 'A', 'Easy', 'Alignment options can change the orientation and position of cell content.'),

-- Q16
('Excel', 'Which feature combines multiple selected cells into one larger cell?', 'Merge & Center', 'Wrap Text', 'Format Painter', 'AutoSum', 'A', 'Easy', 'Merge & Center combines selected cells into a single cell.'),

-- Q17
('Excel', 'What does the Wrap Text option do?', 'Displays long text on multiple lines within a cell', 'Deletes extra text', 'Creates a chart', 'Sorts the data', 'A', 'Easy', 'Wrap Text displays cell content on multiple lines when necessary.'),

-- Q18
('Excel', 'Which feature automatically adjusts column width to fit the content?', 'AutoFit', 'AutoSum', 'Wrap Text', 'Merge Cells', 'A', 'Easy', 'AutoFit adjusts the column width based on the content.'),

-- Q19
('Excel', 'Which shortcut opens the Format Cells dialog box?', 'Ctrl + F', 'Ctrl + 1', 'Ctrl + 2', 'Ctrl + 5', 'B', 'Easy', 'Ctrl + 1 opens the Format Cells dialog box.'),

-- Q20
('Excel', 'Which number format is commonly used to display monetary values?', 'Currency', 'General', 'Text', 'Scientific', 'A', 'Easy', 'Currency format is used for monetary values.'),

-- Q21
('Excel', 'What is a cell reference?', 'The address identifying a cell', 'The name of a workbook', 'A chart title', 'A formula result', 'A', 'Easy', 'A cell reference identifies the location of a cell, such as A1.'),

-- Q22
('Excel', 'Which reference changes when a formula is copied to another cell?', 'Relative reference', 'Absolute reference', 'Fixed reference', 'Named reference', 'A', 'Easy', 'Relative references automatically adjust when copied.'),

-- Q23
('Excel', 'Which symbol is used to create an absolute reference?', '$', '#', '@', '%', 'A', 'Easy', 'The dollar sign is used for absolute references such as $A$1.'),

-- Q24
('Excel', 'Which shortcut opens the Find dialog box?', 'Ctrl + F', 'Ctrl + G', 'Ctrl + H', 'Ctrl + D', 'A', 'Easy', 'Ctrl + F opens Find.'),

-- Q25
('Excel', 'Which shortcut opens the Replace dialog box?', 'Ctrl + H', 'Ctrl + R', 'Ctrl + F', 'Ctrl + Shift + H', 'A', 'Easy', 'Ctrl + H opens Replace.'),

-- Q26
('Excel', 'Which feature copies formatting from one cell to another?', 'Format Painter', 'AutoSum', 'Sort', 'Filter', 'A', 'Easy', 'Format Painter copies formatting between cells.'),

-- Q27
('Excel', 'Which shortcut opens the Print dialog or print interface?', 'Ctrl + P', 'Ctrl + R', 'Ctrl + T', 'Ctrl + L', 'A', 'Easy', 'Ctrl + P opens the print interface.'),

-- Q28
('Excel', 'Which feature freezes selected rows or columns while scrolling?', 'Freeze Panes', 'Split', 'Group', 'Protect Sheet', 'A', 'Easy', 'Freeze Panes keeps selected rows or columns visible while scrolling.'),

-- Q29
('Excel', 'What can the Fill Handle be used for?', 'Copying formulas or creating sequences', 'Printing worksheets', 'Changing passwords', 'Creating databases', 'A', 'Easy', 'The Fill Handle can copy formulas and extend patterns.'),

-- Q30
('Excel', 'Which shortcut inserts a new worksheet?', 'Shift + F11', 'Ctrl + F11', 'Alt + F11', 'Ctrl + Shift + N', 'A', 'Easy', 'Shift + F11 inserts a new worksheet.'),

-- Q31
('Excel', 'Which function quickly adds numbers in a range?', 'SUM', 'COUNT', 'AVERAGE', 'MAX', 'A', 'Easy', 'SUM adds numbers in a selected range.'),

-- Q32
('Excel', 'Which function calculates the average of numbers?', 'AVERAGE', 'SUM', 'COUNT', 'MEDIAN', 'A', 'Easy', 'AVERAGE calculates the arithmetic mean.'),

-- Q33
('Excel', 'What does AutoFit do?', 'Automatically adjusts row height or column width', 'Deletes blank cells', 'Creates formulas', 'Sorts records', 'A', 'Easy', 'AutoFit adjusts dimensions based on content.'),

-- Q34
('Excel', 'Which feature changes the background color of a cell?', 'Fill Color', 'Font Color', 'Border', 'Alignment', 'A', 'Easy', 'Fill Color changes the background color of a cell.'),

-- Q35
('Excel', 'Which feature changes the color of text in a cell?', 'Font Color', 'Fill Color', 'Border Color', 'Theme', 'A', 'Easy', 'Font Color changes the text color.'),

-- Q36
('Excel', 'Which shortcut makes selected text bold?', 'Ctrl + B', 'Ctrl + I', 'Ctrl + U', 'Ctrl + E', 'A', 'Easy', 'Ctrl + B applies bold formatting.'),

-- Q37
('Excel', 'Which shortcut applies italic formatting?', 'Ctrl + I', 'Ctrl + B', 'Ctrl + U', 'Ctrl + T', 'A', 'Easy', 'Ctrl + I applies italic formatting.'),

-- Q38
('Excel', 'Which shortcut underlines selected text?', 'Ctrl + U', 'Ctrl + B', 'Ctrl + L', 'Ctrl + R', 'A', 'Easy', 'Ctrl + U applies underline formatting.'),

-- Q39
('Excel', 'Which function returns the largest value in a range?', 'MAX', 'MIN', 'HIGH', 'LARGE', 'A', 'Easy', 'MAX returns the largest value in a range.'),

-- Q40
('Excel', 'Which function returns the smallest value in a range?', 'MIN', 'MAX', 'LOW', 'SMALL', 'A', 'Easy', 'MIN returns the smallest value in a range.'),

-- Q41
('Excel', 'Which function counts cells containing numbers?', 'COUNT', 'COUNTA', 'COUNTBLANK', 'SUM', 'A', 'Easy', 'COUNT counts cells containing numeric values.'),

-- Q42
('Excel', 'Which function counts non-empty cells?', 'COUNTA', 'COUNT', 'COUNTBLANK', 'COUNTIF', 'A', 'Easy', 'COUNTA counts cells that are not empty.'),

-- Q43
('Excel', 'Which cell reference is absolute?', '$A$1', 'A1', 'A$1', '$A1', 'A', 'Easy', '$A$1 locks both the column and row.'),

-- Q44
('Excel', 'Which reference locks the row but allows the column to change?', 'A$1', '$A$1', 'A1', '$A1', 'A', 'Easy', 'A$1 locks row 1 while allowing the column to change.'),

-- Q45
('Excel', 'Which reference locks the column but allows the row to change?', '$A1', '$A$1', 'A$1', 'A1', 'A', 'Easy', '$A1 locks column A while allowing the row to change.'),

-- Q46
('Excel', 'Which tab contains options for changing page orientation?', 'Page Layout', 'Home', 'Data', 'Review', 'A', 'Easy', 'Page Layout contains page setup and orientation options.'),

-- Q47
('Excel', 'Which tab contains sorting and filtering commands?', 'Data', 'Insert', 'View', 'Review', 'A', 'Easy', 'The Data tab contains sorting and filtering commands.'),

-- Q48
('Excel', 'Which tab contains commands for inserting charts?', 'Insert', 'Data', 'Review', 'Formula', 'A', 'Easy', 'The Insert tab contains chart commands.'),

-- Q49
('Excel', 'Which tab contains spelling and protection tools?', 'Review', 'Data', 'Home', 'View', 'A', 'Easy', 'The Review tab contains spelling, comments, and protection tools.'),

-- Q50
('Excel', 'Which tab contains options for changing worksheet view and zoom?', 'View', 'Home', 'Data', 'Insert', 'A', 'Easy', 'The View tab contains view and zoom options.'),

-- =====================================================
-- Excel Formulas & Functions — Q51 to Q100
-- =====================================================

-- Q51
('Excel', 'Which function adds values based on one or more conditions?', 'SUMIF', 'COUNT', 'AVERAGE', 'MAX', 'A', 'Medium', 'SUMIF adds values that meet a specified condition.'),

-- Q52
('Excel', 'Which function counts cells that meet a condition?', 'COUNTIF', 'SUMIF', 'COUNTA', 'COUNTBLANK', 'A', 'Medium', 'COUNTIF counts cells that satisfy a criterion.'),

-- Q53
('Excel', 'Which function calculates an average based on a condition?', 'AVERAGEIF', 'AVERAGE', 'SUMIF', 'COUNTIF', 'A', 'Medium', 'AVERAGEIF calculates an average for cells meeting a criterion.'),

-- Q54
('Excel', 'Which function returns one value if a condition is TRUE and another if FALSE?', 'IF', 'AND', 'OR', 'NOT', 'A', 'Medium', 'IF returns different values based on a logical condition.'),

-- Q55
('Excel', 'Which function checks whether all supplied conditions are TRUE?', 'AND', 'OR', 'IF', 'NOT', 'A', 'Medium', 'AND returns TRUE only when all conditions are TRUE.'),

-- Q56
('Excel', 'Which function checks whether at least one condition is TRUE?', 'OR', 'AND', 'IF', 'NOT', 'A', 'Medium', 'OR returns TRUE when at least one condition is TRUE.'),

-- Q57
('Excel', 'Which function reverses a logical value?', 'NOT', 'IF', 'AND', 'OR', 'A', 'Medium', 'NOT reverses TRUE to FALSE and FALSE to TRUE.'),

-- Q58
('Excel', 'Which function combines text from multiple cells?', 'CONCAT', 'COUNT', 'SUM', 'JOIN', 'A', 'Medium', 'CONCAT combines text from multiple cells.'),

-- Q59
('Excel', 'Which function joins multiple text values using a specified delimiter?', 'TEXTJOIN', 'CONCAT', 'LEFT', 'RIGHT', 'A', 'Medium', 'TEXTJOIN combines text using a delimiter.'),

-- Q60
('Excel', 'Which function extracts characters from the beginning of a text string?', 'LEFT', 'RIGHT', 'MID', 'START', 'A', 'Medium', 'LEFT returns characters from the beginning of text.'),

-- Q61
('Excel', 'Which function extracts characters from the end of a text string?', 'RIGHT', 'LEFT', 'MID', 'END', 'A', 'Medium', 'RIGHT returns characters from the end of text.'),

-- Q62
('Excel', 'Which function extracts characters from the middle of a text string?', 'MID', 'LEFT', 'RIGHT', 'CENTER', 'A', 'Medium', 'MID extracts characters starting at a specified position.'),

-- Q63
('Excel', 'Which function returns the number of characters in a text string?', 'LEN', 'COUNT', 'SIZE', 'CHARCOUNT', 'A', 'Medium', 'LEN returns the number of characters in text.'),

-- Q64
('Excel', 'Which function removes extra spaces from text?', 'TRIM', 'CLEAN', 'SPACE', 'REMOVE', 'A', 'Medium', 'TRIM removes extra spaces from text.'),

-- Q65
('Excel', 'Which function converts text to uppercase?', 'UPPER', 'LOWER', 'PROPER', 'CAPS', 'A', 'Medium', 'UPPER converts text to uppercase.'),

-- Q66
('Excel', 'Which function converts text to lowercase?', 'LOWER', 'UPPER', 'PROPER', 'SMALL', 'A', 'Medium', 'LOWER converts text to lowercase.'),

-- Q67
('Excel', 'Which function capitalizes the first letter of each word?', 'PROPER', 'UPPER', 'LOWER', 'CAPITALIZE', 'A', 'Medium', 'PROPER converts text to proper case.'),

-- Q68
('Excel', 'Which function rounds a number to a specified number of digits?', 'ROUND', 'ROUNDUP', 'ROUNDDOWN', 'INT', 'A', 'Medium', 'ROUND rounds a number to the specified number of digits.'),

-- Q69
('Excel', 'Which function always rounds a number upward away from zero?', 'ROUNDUP', 'ROUND', 'ROUNDDOWN', 'CEILING', 'A', 'Medium', 'ROUNDUP rounds away from zero.'),

-- Q70
('Excel', 'Which function always rounds a number downward toward zero?', 'ROUNDDOWN', 'ROUND', 'ROUNDUP', 'FLOOR', 'A', 'Medium', 'ROUNDDOWN rounds toward zero.'),

-- Q71
('Excel', 'Which function returns the current date?', 'TODAY', 'DATE', 'NOW', 'CURRENTDATE', 'A', 'Medium', 'TODAY returns the current date.'),

-- Q72
('Excel', 'Which function returns the current date and time?', 'NOW', 'TODAY', 'TIME', 'CURRENT', 'A', 'Medium', 'NOW returns the current date and time.'),

-- Q73
('Excel', 'Which function creates a date from year, month, and day?', 'DATE', 'DAY', 'MONTH', 'YEAR', 'A', 'Medium', 'DATE creates a date from year, month, and day values.'),

-- Q74
('Excel', 'Which function extracts the day from a date?', 'DAY', 'DATE', 'MONTH', 'YEAR', 'A', 'Medium', 'DAY returns the day component of a date.'),

-- Q75
('Excel', 'Which function extracts the month from a date?', 'MONTH', 'DAY', 'DATE', 'YEAR', 'A', 'Medium', 'MONTH returns the month component of a date.'),

-- Q76
('Excel', 'Which function extracts the year from a date?', 'YEAR', 'DAY', 'MONTH', 'DATE', 'A', 'Medium', 'YEAR returns the year component of a date.'),

-- Q77
('Excel', 'Which function returns the absolute value of a number?', 'ABS', 'INT', 'SIGN', 'VALUE', 'A', 'Medium', 'ABS returns the absolute value.'),

-- Q78
('Excel', 'Which function rounds a number down to the nearest integer?', 'INT', 'ROUND', 'FLOOR', 'TRUNCATE', 'A', 'Medium', 'INT rounds a number down to the nearest integer.'),

-- Q79
('Excel', 'Which function truncates a number to a specified number of digits?', 'TRUNC', 'ROUND', 'INT', 'CUT', 'A', 'Medium', 'TRUNC removes the fractional part or truncates to specified digits.'),

-- Q80
('Excel', 'Which function returns the remainder after division?', 'MOD', 'DIV', 'REMAINDER', 'REST', 'A', 'Medium', 'MOD returns the remainder after division.'),

-- Q81
('Excel', 'Which function raises a number to a power?', 'POWER', 'POW', 'EXPONENT', 'RAISE', 'A', 'Medium', 'POWER returns a number raised to a specified power.'),

-- Q82
('Excel', 'Which function returns the square root of a number?', 'SQRT', 'ROOT', 'POWER', 'SQUARE', 'A', 'Medium', 'SQRT returns the positive square root.'),

-- Q83
('Excel', 'Which function returns a value from a specified row and column in a range?', 'INDEX', 'MATCH', 'LOOKUP', 'OFFSET', 'A', 'Medium', 'INDEX returns a value at a specified row and column position.'),

-- Q84
('Excel', 'Which function searches for a value and returns its position?', 'MATCH', 'INDEX', 'LOOKUP', 'SEARCH', 'A', 'Medium', 'MATCH returns the position of a lookup value.'),

-- Q85
('Excel', 'Which function performs a vertical lookup?', 'VLOOKUP', 'HLOOKUP', 'LOOKUP', 'INDEX', 'A', 'Medium', 'VLOOKUP searches vertically in the first column of a table.'),

-- Q86
('Excel', 'Which function performs a horizontal lookup?', 'HLOOKUP', 'VLOOKUP', 'LOOKUP', 'INDEX', 'A', 'Medium', 'HLOOKUP searches horizontally across the first row.'),

-- Q87
('Excel', 'Which newer lookup function can search in any direction?', 'XLOOKUP', 'VLOOKUP', 'HLOOKUP', 'LOOKUP', 'A', 'Medium', 'XLOOKUP can perform flexible horizontal and vertical lookups.'),

-- Q88
('Excel', 'Which function handles errors by returning an alternative result?', 'IFERROR', 'ERROR', 'IFNA', 'ISERROR', 'A', 'Medium', 'IFERROR returns an alternative value when a formula produces an error.'),

-- Q89
('Excel', 'Which function checks whether a value is an error?', 'ISERROR', 'IFERROR', 'ERRORCHECK', 'ISERRVALUE', 'A', 'Medium', 'ISERROR returns TRUE when the value is an error.'),

-- Q90
('Excel', 'Which function checks whether a cell contains text?', 'ISTEXT', 'ISNUMBER', 'ISBLANK', 'ISLOGICAL', 'A', 'Medium', 'ISTEXT checks whether a value is text.'),

-- Q91
('Excel', 'Which function checks whether a cell contains a number?', 'ISNUMBER', 'ISTEXT', 'ISBLANK', 'ISVALUE', 'A', 'Medium', 'ISNUMBER checks whether a value is numeric.'),

-- Q92
('Excel', 'What does the MATCH function return?', 'The relative position of a lookup value', 'The value itself', 'The cell formatting', 'The worksheet name', 'A', 'Medium', 'MATCH returns the relative position of a lookup value.'),

-- Q93
('Excel', 'Which function counts blank cells in a range?', 'COUNTBLANK', 'COUNT', 'COUNTA', 'BLANKCOUNT', 'A', 'Medium', 'COUNTBLANK counts empty cells in a range.'),

-- Q94
('Excel', 'Which function returns the largest value based on criteria?', 'MAXIFS', 'MAX', 'LARGE', 'SUMIFS', 'A', 'Medium', 'MAXIFS returns the maximum value that meets specified criteria.'),

-- Q95
('Excel', 'Which function returns the smallest value based on criteria?', 'MINIFS', 'MIN', 'SMALL', 'COUNTIFS', 'A', 'Medium', 'MINIFS returns the minimum value that meets specified criteria.'),

-- Q96
('Excel', 'What does ROUNDDOWN do?', 'Rounds a number toward zero', 'Rounds a number away from zero', 'Rounds only positive numbers', 'Converts numbers to text', 'A', 'Medium', 'ROUNDDOWN rounds toward zero.'),

-- Q97
('Excel', 'Which function returns the rank of a number in a list?', 'RANK', 'POSITION', 'ORDER', 'SORT', 'A', 'Medium', 'RANK returns the rank of a number in a list.'),

-- Q98
('Excel', 'Which function calculates the median of a set of numbers?', 'MEDIAN', 'MEAN', 'AVERAGE', 'MODE', 'A', 'Medium', 'MEDIAN returns the middle value of a dataset.'),

-- Q99
('Excel', 'Which function returns the most frequently occurring value?', 'MODE', 'MEDIAN', 'AVERAGE', 'FREQUENCY', 'A', 'Medium', 'MODE returns the most frequently occurring value.'),

-- Q100
('Excel', 'What does the SQRT function return?', 'The positive square root', 'The square of a number', 'The cube root', 'The absolute value', 'A', 'Medium', 'SQRT returns the positive square root.'),

-- =====================================================
-- Data Management, Sorting, Filtering & Charts — Q101 to Q150
-- =====================================================

-- Q101
('Excel', 'Which feature arranges data in ascending or descending order?', 'Sort', 'Filter', 'Group', 'Validate', 'A', 'Medium', 'Sort arranges data according to selected criteria.'),

-- Q102
('Excel', 'What is ascending numeric order?', 'Low to high', 'High to low', 'Random order', 'Alphabetical only', 'A', 'Medium', 'Ascending numeric order runs from low to high.'),

-- Q103
('Excel', 'What is descending numeric order?', 'High to low', 'Low to high', 'Random order', 'Alphabetical only', 'A', 'Medium', 'Descending numeric order runs from high to low.'),

-- Q104
('Excel', 'Which feature displays only rows that meet specified criteria?', 'Filter', 'Sort', 'Group', 'Freeze Panes', 'A', 'Medium', 'Filter displays only records that meet the selected criteria.'),

-- Q105
('Excel', 'Which shortcut commonly applies or removes filters?', 'Ctrl + Shift + L', 'Ctrl + Shift + F', 'Ctrl + L', 'Ctrl + Alt + F', 'A', 'Medium', 'Ctrl + Shift + L toggles filters.'),

-- Q106
('Excel', 'Which feature restricts the type of data entered into a cell?', 'Data Validation', 'Conditional Formatting', 'AutoFilter', 'Data Sort', 'A', 'Medium', 'Data Validation controls the type of data that can be entered.'),

-- Q107
('Excel', 'What is an Excel Table?', 'A structured range with built-in data management features', 'A chart only', 'A workbook', 'A formula', 'A', 'Medium', 'Excel Tables provide structured references and built-in filtering and formatting.'),

-- Q108
('Excel', 'Which shortcut converts a selected range into a table?', 'Ctrl + T', 'Ctrl + Shift + T', 'Alt + T', 'Ctrl + Alt + T', 'A', 'Medium', 'Ctrl + T opens the Create Table command.'),

-- Q109
('Excel', 'Which feature automatically adds filter buttons to table headers?', 'Excel Table', 'Chart', 'PivotChart', 'Name Manager', 'A', 'Medium', 'Excel Tables automatically provide filter buttons in their headers.'),

-- Q110
('Excel', 'Which chart is commonly used to show trends over time?', 'Line Chart', 'Pie Chart', 'Doughnut Chart', 'Radar Chart', 'A', 'Medium', 'Line charts are commonly used for trends over time.'),

-- Q111
('Excel', 'Which chart is useful for comparing categories?', 'Column Chart', 'Pie Chart', 'Stock Chart', 'Surface Chart', 'A', 'Medium', 'Column charts are useful for comparing category values.'),

-- Q112
('Excel', 'Which chart shows parts of a whole?', 'Pie Chart', 'Line Chart', 'Scatter Chart', 'Column Chart', 'A', 'Medium', 'Pie charts show proportions of a whole.'),

-- Q113
('Excel', 'Which chart is best for showing the relationship between two numeric variables?', 'Scatter Chart', 'Pie Chart', 'Column Chart', 'Doughnut Chart', 'A', 'Medium', 'Scatter charts show relationships between numeric variables.'),

-- Q114
('Excel', 'Which chart uses horizontal bars?', 'Bar Chart', 'Column Chart', 'Line Chart', 'Area Chart', 'A', 'Medium', 'Bar charts display categories using horizontal bars.'),

-- Q115
('Excel', 'What is conditional formatting?', 'Conditional formatting using colors based on values', 'Chart colors only', 'Font themes', 'Page colors', 'A', 'Medium', 'Conditional formatting changes cell formatting based on rules or values.'),

-- Q116
('Excel', 'Which feature highlights duplicate values?', 'Conditional Formatting', 'Data Validation', 'Sort', 'Goal Seek', 'A', 'Medium', 'Conditional Formatting can highlight duplicate values.'),

-- Q117
('Excel', 'Which feature can remove duplicate records from a dataset?', 'Remove Duplicates', 'Delete Cells', 'Clear Formats', 'Filter Only', 'A', 'Medium', 'Remove Duplicates deletes duplicate records from a selected range.'),

-- Q118
('Excel', 'Which tool summarizes large datasets interactively?', 'PivotTable', 'WordArt', 'Format Painter', 'Scenario Manager', 'A', 'Medium', 'PivotTables summarize and analyze large datasets.'),

-- Q119
('Excel', 'Which feature creates charts from PivotTable data?', 'PivotChart', 'SmartArt', 'Sparklines', 'Picture', 'A', 'Medium', 'PivotCharts visualize PivotTable data.'),

-- Q120
('Excel', 'Which area of a PivotTable contains fields used for filtering?', 'Filters', 'Values', 'Rows', 'Columns', 'A', 'Medium', 'The Filters area allows PivotTable data to be filtered.'),

-- Q121
('Excel', 'Which PivotTable area usually contains numerical calculations?', 'Values', 'Rows', 'Columns', 'Filters', 'A', 'Medium', 'The Values area contains summarized numerical calculations.'),

-- Q122
('Excel', 'Which PivotTable area displays categories vertically?', 'Rows', 'Columns', 'Values', 'Filters', 'A', 'Medium', 'The Rows area displays categories vertically.'),

-- Q123
('Excel', 'Which PivotTable area displays categories horizontally?', 'Columns', 'Rows', 'Values', 'Filters', 'A', 'Medium', 'The Columns area displays categories horizontally.'),

-- Q124
('Excel', 'What is a PivotTable used for?', 'Summarizing and analyzing data', 'Creating passwords', 'Editing pictures', 'Writing documents', 'A', 'Medium', 'PivotTables summarize and analyze data efficiently.'),

-- Q125
('Excel', 'What does the Values area of a PivotTable contain?', 'Calculations or summarized values', 'Only text labels', 'Worksheet names', 'Chart titles', 'A', 'Medium', 'The Values area contains calculations such as Sum, Count, or Average.'),

-- Q126
('Excel', 'Which function can be used to sum values based on multiple criteria?', 'SUMIFS', 'SUMIF', 'COUNTIFS', 'AVERAGEIFS', 'A', 'Medium', 'SUMIFS sums values that meet multiple criteria.'),

-- Q127
('Excel', 'Which function counts cells based on multiple criteria?', 'COUNTIFS', 'COUNTIF', 'SUMIFS', 'COUNTA', 'A', 'Medium', 'COUNTIFS counts cells that meet multiple criteria.'),

-- Q128
('Excel', 'Which function calculates an average based on multiple criteria?', 'AVERAGEIFS', 'AVERAGEIF', 'SUMIFS', 'COUNTIFS', 'A', 'Medium', 'AVERAGEIFS calculates an average using multiple criteria.'),

-- Q129
('Excel', 'What is a slicer?', 'A visual filtering control for tables or PivotTables', 'A formula editor', 'A chart type', 'A worksheet', 'A', 'Medium', 'Slicers provide visual buttons for filtering tables or PivotTables.'),

-- Q130
('Excel', 'Which feature allows users to filter PivotTables using clickable buttons?', 'Slicer', 'Goal Seek', 'Scenario Manager', 'Name Manager', 'A', 'Medium', 'Slicers provide clickable filtering controls.'),

-- Q131
('Excel', 'Which feature shows miniature charts inside cells?', 'Sparklines', 'PivotCharts', 'Icons', 'Data Bars', 'A', 'Medium', 'Sparklines are small charts displayed inside cells.'),

-- Q132
('Excel', 'Which type of sparkline shows trends?', 'Line', 'Column', 'Win/Loss', 'Pie', 'A', 'Medium', 'Line sparklines show trends across data points.'),

-- Q133
('Excel', 'Which type of sparkline indicates positive and negative values?', 'Win/Loss', 'Line', 'Column', 'Pie', 'D', 'Medium', 'Win/Loss sparklines show positive and negative results.'),

-- Q134
('Excel', 'Which feature can visually represent values using colored bars inside cells?', 'Data Bars', 'Slicers', 'Filters', 'PivotTables', 'A', 'Medium', 'Data Bars display values using bars within cells.'),

-- Q135
('Excel', 'Which feature represents values using color scales?', 'Color Scales', 'Data Validation', 'Sort', 'Goal Seek', 'A', 'Medium', 'Color Scales apply colors based on relative values.'),

-- Q136
('Excel', 'Which feature displays icons based on cell values?', 'Icon Sets', 'Data Bars', 'Slicers', 'Tables', 'A', 'Medium', 'Icon Sets display icons based on value ranges.'),

-- Q137
('Excel', 'Which command updates a PivotTable after source data changes?', 'Refresh', 'Recalculate', 'Update Formula', 'Reload Sheet', 'A', 'Medium', 'Refresh updates a PivotTable with current source data.'),

-- Q138
('Excel', 'Which feature allows data to be divided into groups?', 'Group', 'Merge', 'Filter', 'Freeze', 'A', 'Medium', 'Grouping organizes related rows or columns together.'),

-- Q139
('Excel', 'Which Excel feature creates a dropdown list in a cell?', 'Data Validation', 'Conditional Formatting', 'Filter', 'Sort', 'A', 'Medium', 'Data Validation can create dropdown lists.'),

-- Q140
('Excel', 'What is grouping used for?', 'Organizing rows or columns for collapsing and expanding', 'Creating passwords', 'Formatting formulas', 'Creating databases', 'A', 'Medium', 'Grouping allows rows or columns to be collapsed and expanded.'),

-- Q141
('Excel', 'What happens when rows are filtered out?', 'They are hidden from view', 'They are permanently deleted', 'They are copied to another sheet', 'They are converted to formulas', 'A', 'Medium', 'Filtered rows remain in the worksheet but are not displayed.'),

-- Q142
('Excel', 'Which feature can sort data by multiple columns?', 'Custom Sort', 'Quick Filter', 'Data Validation', 'Format Painter', 'A', 'Medium', 'Custom Sort allows sorting by multiple levels.'),

-- Q143
('Excel', 'Which option lets you specify multiple sorting levels?', 'Custom Sort', 'Quick Sort', 'AutoFit', 'Freeze Panes', 'A', 'Medium', 'Custom Sort supports multiple sorting levels.'),

-- Q144
('Excel', 'Which chart is useful for showing cumulative trends?', 'Area Chart', 'Pie Chart', 'Doughnut Chart', 'Radar Chart', 'A', 'Medium', 'Area charts can show cumulative trends over time.'),

-- Q145
('Excel', 'What is a named range?', 'A range assigned a meaningful name', 'A worksheet name', 'A workbook name', 'A chart title', 'A', 'Medium', 'A named range gives a meaningful name to a cell or range.'),

-- Q146
('Excel', 'Which Excel tool manages named ranges?', 'Name Manager', 'Formula Manager', 'Range Manager', 'Data Manager', 'A', 'Medium', 'Name Manager creates and manages named ranges.'),

-- Q147
('Excel', 'Which feature allows formulas to use meaningful names instead of cell references?', 'Named Ranges', 'Tables only', 'Charts', 'Slicers', 'A', 'Medium', 'Named ranges make formulas easier to understand.'),

-- Q148
('Excel', 'Which tool can split one column into multiple columns based on delimiters?', 'Text to Columns', 'Flash Fill', 'AutoFill', 'Transpose', 'A', 'Medium', 'Text to Columns splits data based on delimiters or fixed widths.'),

-- Q149
('Excel', 'Which feature automatically recognizes patterns and fills data?', 'Flash Fill', 'Text to Columns', 'AutoFilter', 'Goal Seek', 'A', 'Medium', 'Flash Fill detects patterns and fills corresponding values.'),

-- Q150
('Excel', 'Which command converts rows into columns or columns into rows?', 'Transpose', 'Rotate', 'Switch', 'Transform', 'A', 'Medium', 'Transpose changes rows into columns and columns into rows.'),

-- =====================================================
-- Advanced Excel, Analysis & Protection — Q151 to Q200
-- =====================================================

-- Q151
('Excel', 'Which feature finds an input value needed to achieve a specified result?', 'Goal Seek', 'Solver', 'Scenario Manager', 'Forecast Sheet', 'A', 'Hard', 'Goal Seek finds the input required to reach a target result.'),

-- Q152
('Excel', 'Which Excel tool can optimize a result subject to constraints?', 'Solver', 'Goal Seek', 'Filter', 'Flash Fill', 'A', 'Hard', 'Solver optimizes an objective while considering constraints.'),

-- Q153
('Excel', 'Which feature stores and compares different sets of input values?', 'Scenario Manager', 'Goal Seek', 'Data Validation', 'Slicer', 'A', 'Hard', 'Scenario Manager stores different sets of values for analysis.'),

-- Q154
('Excel', 'Which analysis tool creates a table showing different results for different input values?', 'Data Table', 'PivotTable', 'Slicer', 'Scenario', 'A', 'Hard', 'Data Tables perform what-if analysis for different inputs.'),

-- Q155
('Excel', 'What is What-If Analysis used for?', 'Analyzing how changing inputs affects results', 'Formatting cells', 'Creating charts only', 'Protecting workbooks', 'A', 'Hard', 'What-If Analysis evaluates the effect of changing input values.'),

-- Q156
('Excel', 'Which What-If Analysis tool changes one input to reach a desired result?', 'Goal Seek', 'Scenario Manager', 'Data Table', 'Solver', 'A', 'Hard', 'Goal Seek changes one input to achieve a specified result.'),

-- Q157
('Excel', 'Which feature protects worksheet contents from unwanted changes?', 'Protect Sheet', 'Freeze Panes', 'Data Validation', 'Hide Gridlines', 'A', 'Hard', 'Protect Sheet restricts changes to protected worksheet content.'),

-- Q158
('Excel', 'Which feature protects the structure of an Excel workbook?', 'Protect Workbook', 'Protect Sheet', 'Lock Cells', 'Data Validation', 'A', 'Hard', 'Protect Workbook can prevent structural changes such as adding or deleting sheets.'),

-- Q159
('Excel', 'What does locking a cell do when sheet protection is enabled?', 'Prevents changes to the locked cell', 'Deletes the cell', 'Hides the cell permanently', 'Converts the cell to text', 'A', 'Hard', 'Locked cells cannot be edited when worksheet protection is active.'),

-- Q160
('Excel', 'Which feature hides worksheet gridlines?', 'Gridlines option', 'Freeze Panes', 'Hide Rows', 'Protect Sheet', 'A', 'Hard', 'Gridlines can be hidden from the View options.'),

-- Q161
('Excel', 'Which feature can hide a worksheet from normal view?', 'Hide Sheet', 'Protect Sheet', 'Freeze Sheet', 'Lock Sheet', 'A', 'Hard', 'Hide Sheet removes the worksheet from normal view.'),

-- Q162
('Excel', 'Which feature can reveal a hidden worksheet?', 'Unhide', 'Show Sheet', 'Reveal Sheet', 'Open Sheet', 'A', 'Hard', 'Unhide displays hidden worksheets.'),

-- Q163
('Excel', 'Which error appears when a formula divides by zero?', '#DIV/0!', '#VALUE!', '#REF!', '#NAME?', 'A', 'Hard', '#DIV/0! indicates division by zero.'),

-- Q164
('Excel', 'Which error usually occurs when a formula refers to an invalid cell reference?', '#REF!', '#VALUE!', '#DIV/0!', '#N/A', 'A', 'Hard', '#REF! indicates an invalid or deleted cell reference.'),

-- Q165
('Excel', 'Which error indicates that a value is not available?', '#N/A', '#REF!', '#NAME?', '#NULL!', 'A', 'Hard', '#N/A indicates that a required value is not available.'),

-- Q166
('Excel', 'Which tool is primarily used for importing and transforming external data?', 'Power Query', 'Goal Seek', 'Solver', 'Scenario Manager', 'A', 'Hard', 'Power Query is Excel''s primary data transformation and import tool.'),

-- Q167
('Excel', 'Which feature can combine data from multiple sources before loading it into Excel?', 'Power Query', 'PivotChart', 'Conditional Formatting', 'Data Validation', 'A', 'Hard', 'Power Query can connect to and combine data from multiple sources.'),

-- Q168
('Excel', 'What language is primarily used by Power Query for data transformation?', 'M', 'VBA', 'DAX', 'SQL', 'A', 'Hard', 'Power Query uses the M language for transformations.'),

-- Q169
('Excel', 'Which language is commonly used for Excel macro programming?', 'VBA', 'M', 'DAX', 'Python only', 'A', 'Hard', 'VBA is traditionally used to create Excel macros.'),

-- Q170
('Excel', 'What does VBA stand for?', 'Visual Basic for Applications', 'Visual Business Analytics', 'Virtual Basic Application', 'Visual Binary Application', 'A', 'Hard', 'VBA stands for Visual Basic for Applications.'),

-- Q171
('Excel', 'Which feature records repetitive actions as a macro?', 'Record Macro', 'AutoFill', 'Flash Fill', 'Data Table', 'A', 'Hard', 'Record Macro captures actions and converts them into a macro.'),

-- Q172
('Excel', 'Which file extension supports Excel workbooks containing VBA macros?', '.xlsm', '.xlsx', '.csv', '.txt', 'A', 'Hard', '.xlsm is the macro-enabled Excel workbook format.'),

-- Q173
('Excel', 'Which function can dynamically return filtered data in modern Excel?', 'FILTER', 'SORT', 'LOOKUP', 'QUERY', 'A', 'Hard', 'FILTER returns data that meets specified criteria.'),

-- Q174
('Excel', 'Which function dynamically sorts an array?', 'SORT', 'ORDER', 'SORTBY only', 'RANK', 'A', 'Hard', 'SORT dynamically sorts an array.'),

-- Q175
('Excel', 'Which function sorts an array based on another range or array?', 'SORTBY', 'SORT', 'ORDERBY', 'RANKBY', 'A', 'Hard', 'SORTBY sorts one array based on values in another array.'),

-- Q176
('Excel', 'Which function returns unique values from a range?', 'UNIQUE', 'DISTINCT', 'SINGLE', 'UNIQUEVALUES', 'A', 'Hard', 'UNIQUE returns unique values from an array or range.'),

-- Q177
('Excel', 'Which function can combine arrays vertically?', 'VSTACK', 'HSTACK', 'STACK', 'VCOMBINE', 'A', 'Hard', 'VSTACK appends arrays vertically.'),

-- Q178
('Excel', 'Which function can combine arrays horizontally?', 'HSTACK', 'VSTACK', 'HJOIN', 'HCOLUMNS', 'A', 'Hard', 'HSTACK appends arrays horizontally.'),

-- Q179
('Excel', 'What are dynamic arrays?', 'Arrays that can automatically spill results into multiple cells', 'Arrays containing only numbers', 'Charts stored in cells', 'Hidden worksheets', 'A', 'Hard', 'Dynamic arrays can automatically spill results into adjacent cells.'),

-- Q180
('Excel', 'What does the spill operator # indicate in modern Excel?', 'A reference to a spilled range', 'An error code', 'A comment', 'A table reference', 'A', 'Hard', 'The spill operator references the entire spilled range from a dynamic array formula.'),

-- Q181
('Excel', 'Which symbol is used for the intersection operator in Excel?', 'Space', ':', ',', ';', 'A', 'Hard', 'A space can act as the intersection operator between references.'),

-- Q182
('Excel', 'Which operator represents a range of cells?', ':', ',', ' ', ';', 'A', 'Hard', 'The colon creates a range reference such as A1:A10.'),

-- Q183
('Excel', 'Which operator combines references into a union?', ',', ':', ' ', ';', 'A', 'Hard', 'The comma can combine separate references into a union.'),

-- Q184
('Excel', 'Which error occurs when Excel cannot recognize a function or name?', '#NAME?', '#VALUE!', '#REF!', '#NUM!', 'A', 'Hard', '#NAME? occurs when Excel does not recognize text in a formula.'),

-- Q185
('Excel', 'What does #SPILL! indicate?', 'The intended spill range is blocked or unavailable', 'A division by zero', 'An invalid worksheet name', 'A missing chart', 'A', 'Hard', '#SPILL! occurs when the intended spill range is blocked or otherwise unavailable.'),

-- Q186
('Excel', 'Which function returns the number of columns in a reference?', 'COLUMNS', 'ROWS', 'COLUMNCOUNT', 'COLS', 'A', 'Hard', 'COLUMNS returns the number of columns in a reference.'),

-- Q187
('Excel', 'Which function returns the number of rows in a reference?', 'ROWS', 'COLUMNS', 'ROWCOUNT', 'RCOUNT', 'A', 'Hard', 'ROWS returns the number of rows in a reference.'),

-- Q188
('Excel', 'Which function returns the column number of a reference?', 'COLUMN', 'COLUMNS', 'COLNUM', 'INDEXCOL', 'A', 'Hard', 'COLUMN returns the column number of a reference.'),

-- Q189
('Excel', 'Which function returns the row number of a reference?', 'ROW', 'ROWS', 'ROWNUM', 'INDEXROW', 'A', 'Hard', 'ROW returns the row number of a reference.'),

-- Q190
('Excel', 'Which function can return a reference offset from a starting cell?', 'OFFSET', 'INDEX', 'MOVE', 'SHIFT', 'A', 'Hard', 'OFFSET returns a reference offset from a starting reference.'),

-- Q191
('Excel', 'Which function can return a reference to a cell using text?', 'INDIRECT', 'REFERENCE', 'TEXTREF', 'ADDRESSREF', 'A', 'Hard', 'INDIRECT converts a text reference into an actual cell reference.'),

-- Q192
('Excel', 'Which function creates a cell reference as text?', 'ADDRESS', 'INDIRECT', 'CELLREF', 'REFERENCE', 'A', 'Hard', 'ADDRESS returns a cell reference as text.'),

-- Q193
('Excel', 'Which function searches for text within another text string without case sensitivity?', 'SEARCH', 'FIND', 'LOOKUP', 'MATCH', 'A', 'Hard', 'SEARCH is case-insensitive when locating text.'),

-- Q194
('Excel', 'Which function searches for text and is case-sensitive?', 'FIND', 'SEARCH', 'LOOKUP', 'MATCH', 'A', 'Hard', 'FIND is case-sensitive, unlike SEARCH.'),

-- Q195
('Excel', 'Which function replaces specified text within a string based on position?', 'REPLACE', 'SUBSTITUTE', 'CHANGE', 'SWAP', 'A', 'Hard', 'REPLACE replaces characters based on their position.'),

-- Q196
('Excel', 'Which function formats a numeric value as text using a specified format?', 'TEXT', 'FORMAT', 'VALUE', 'NUMBER', 'A', 'Hard', 'TEXT formats a numeric value as text according to a specified format code.'),

-- Q197
('Excel', 'Which function converts text representing a number into a numeric value?', 'VALUE', 'TEXT', 'NUMBER', 'CONVERT', 'A', 'Hard', 'VALUE converts text representing a number into a numeric value.'),

-- Q198
('Excel', 'Which feature allows multiple users to review or comment on workbook content?', 'Comments', 'Goal Seek', 'Solver', 'Data Table', 'A', 'Hard', 'Comments allow users to discuss or review workbook content.'),

-- Q199
('Excel', 'Which Excel feature tracks changes and collaboration information in supported versions?', 'Version History', 'Goal Seek', 'Data Validation', 'Name Manager', 'A', 'Hard', 'Version History can show previous versions of a workbook when supported by the storage service.'),

-- Q200
('Excel', 'Which feature is useful for viewing and restoring previous versions of a workbook?', 'Version History', 'Format Painter', 'AutoSum', 'Flash Fill', 'A', 'Hard', 'Version History allows users to review and restore earlier workbook versions when available.');

-- =====================================================
-- Verification 1: Total Excel Questions
-- Expected Result = 200
-- =====================================================

SELECT COUNT(*) AS excel_questions
FROM questions
WHERE skill = 'Excel';

-- =====================================================
-- Verification 2: Unique Excel Questions
-- Expected Result = 200
-- =====================================================

SELECT COUNT(DISTINCT question) AS unique_excel_questions
FROM questions
WHERE skill = 'Excel';

-- =====================================================
-- Verification 3: Question Count by Skill
-- =====================================================

SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;

-- =====================================================
-- Verification 4: Difficulty-wise Excel Count
-- Expected:
-- Easy   = 50
-- Medium = 100
-- Hard   = 50
-- =====================================================

SELECT difficulty, COUNT(*) AS question_count
FROM questions
WHERE skill = 'Excel'
GROUP BY difficulty
ORDER BY
    CASE difficulty
        WHEN 'Easy' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'Hard' THEN 3
    END;

