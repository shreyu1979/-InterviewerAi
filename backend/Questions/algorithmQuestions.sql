USE ai_interviewer;

-- Algorithms 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Algorithms';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Algorithms', 'What is an algorithm?', 'A step-by-step procedure for solving a problem', 'A programming language', 'A database', 'An operating system', 'A', 'Easy', 'An algorithm defines a finite sequence of steps to solve a problem.'),

-- Q2
('Algorithms', 'Which is an essential characteristic of an algorithm?', 'Finiteness', 'Infinite execution', 'Randomness only', 'No input', 'A', 'Easy', 'An algorithm must eventually terminate after a finite number of steps.'),

-- Q3
('Algorithms', 'What does algorithm correctness mean?', 'The algorithm produces the expected result for valid inputs', 'The algorithm always runs instantly', 'The algorithm uses no memory', 'The algorithm has many lines', 'A', 'Easy', 'Correctness means the algorithm solves the specified problem as required.'),

-- Q4
('Algorithms', 'What is input to an algorithm?', 'Data provided to the algorithm', 'Output produced by the algorithm', 'Source code only', 'Memory address', 'A', 'Easy', 'Input is the information an algorithm processes.'),

-- Q5
('Algorithms', 'What is output?', 'Result produced by an algorithm', 'Data supplied to it', 'Source code', 'Variable declaration', 'A', 'Easy', 'Output is the result generated after processing the input.'),

-- Q6
('Algorithms', 'What is pseudocode?', 'Informal representation of an algorithm', 'Machine code', 'Database language', 'Hardware instruction', 'A', 'Easy', 'Pseudocode describes algorithmic logic without strict programming language syntax.'),

-- Q7
('Algorithms', 'What is a flowchart?', 'Graphical representation of a process or algorithm', 'Database schema', 'Programming language', 'Memory structure', 'A', 'Easy', 'Flowcharts use symbols and arrows to represent algorithm steps.'),

-- Q8
('Algorithms', 'Which symbol commonly represents a decision in a flowchart?', 'Diamond', 'Rectangle', 'Circle', 'Triangle', 'A', 'Easy', 'A diamond typically represents a condition or decision.'),

-- Q9
('Algorithms', 'Which flowchart symbol commonly represents a process?', 'Rectangle', 'Diamond', 'Oval', 'Arrow', 'A', 'Easy', 'Rectangles commonly represent processing steps.'),

-- Q10
('Algorithms', 'What is algorithm analysis?', 'Studying resource requirements of an algorithm', 'Writing comments', 'Designing a database', 'Installing software', 'A', 'Easy', 'Analysis evaluates time, space, and other resource requirements.'),

-- Q11
('Algorithms', 'What is time complexity?', 'Growth of computational time with input size', 'Memory address', 'Number of variables', 'Program file size', 'A', 'Easy', 'Time complexity describes how the amount of computation grows.'),

-- Q12
('Algorithms', 'What is space complexity?', 'Growth of memory requirements with input size', 'Execution time only', 'Number of functions', 'Number of files', 'A', 'Easy', 'Space complexity measures memory usage as input size increases.'),

-- Q13
('Algorithms', 'What does Big O notation describe?', 'Asymptotic upper-bound growth', 'Exact execution time', 'Programming syntax', 'File size', 'A', 'Easy', 'Big O commonly expresses an asymptotic upper bound on resource growth.'),

-- Q14
('Algorithms', 'What does Omega notation commonly describe?', 'Asymptotic lower bound', 'Exact runtime', 'Average memory', 'Source-code length', 'A', 'Easy', 'Omega provides an asymptotic lower bound.'),

-- Q15
('Algorithms', 'What does Theta notation describe?', 'Tight asymptotic bound', 'Lower bound only', 'Upper bound only', 'Exact processor speed', 'A', 'Easy', 'Theta describes a function bounded above and below asymptotically by the same growth rate.'),

-- Q16
('Algorithms', 'Which complexity is constant?', 'O(1)', 'O(n)', 'O(log n)', 'O(n²)', 'A', 'Easy', 'O(1) indicates constant asymptotic work.'),

-- Q17
('Algorithms', 'Which complexity is logarithmic?', 'O(log n)', 'O(n)', 'O(n²)', 'O(2ⁿ)', 'A', 'Easy', 'Logarithmic algorithms reduce the problem size multiplicatively.'),

-- Q18
('Algorithms', 'Which complexity is linear?', 'O(n)', 'O(1)', 'O(log n)', 'O(n²)', 'A', 'Easy', 'Linear complexity grows proportionally to input size.'),

-- Q19
('Algorithms', 'Which complexity is quadratic?', 'O(n²)', 'O(n)', 'O(log n)', 'O(1)', 'A', 'Easy', 'Quadratic complexity grows with the square of input size.'),

-- Q20
('Algorithms', 'Which grows faster for large n?', 'O(n²)', 'O(log n)', 'O(1)', 'O(n)', 'A', 'Easy', 'Quadratic growth eventually exceeds logarithmic and linear growth.'),

-- Q21
('Algorithms', 'What is worst-case analysis?', 'Maximum resource usage over relevant inputs of a given size', 'Minimum resource usage only', 'Average output value', 'Program size', 'A', 'Easy', 'Worst-case analysis studies the most expensive input behavior under the model.'),

-- Q22
('Algorithms', 'What is best-case analysis?', 'Minimum resource usage for inputs of a given size', 'Maximum runtime', 'Average runtime only', 'Memory capacity', 'A', 'Easy', 'Best-case analysis examines the least costly relevant input.'),

-- Q23
('Algorithms', 'What is average-case analysis?', 'Expected resource usage over an assumed input distribution', 'Maximum runtime', 'Minimum runtime', 'Compilation time', 'A', 'Easy', 'Average-case analysis depends on assumptions about input distribution.'),

-- Q24
('Algorithms', 'Which notation is generally preferred for comparing algorithm scalability?', 'Asymptotic notation', 'Variable names', 'File extensions', 'Comments', 'A', 'Easy', 'Asymptotic notation abstracts away machine-specific constants.'),

-- Q25
('Algorithms', 'What is an algorithm efficiency mainly evaluated using?', 'Time and space complexity', 'Number of comments', 'File name', 'Programming font', 'A', 'Easy', 'Time and memory are major algorithmic resources.'),

-- Q26
('Algorithms', 'What is a recursive algorithm?', 'Algorithm that solves a problem using smaller instances of itself', 'Algorithm without conditions', 'Algorithm using only arrays', 'Algorithm that never terminates', 'A', 'Easy', 'Recursion breaks a problem into smaller versions of the same problem.'),

-- Q27
('Algorithms', 'What is a base case?', 'Condition that stops recursion', 'First variable', 'Last array element', 'Loop counter', 'A', 'Easy', 'The base case prevents recursive calls from continuing indefinitely.'),

-- Q28
('Algorithms', 'What is a recurrence relation?', 'Equation defining a value in terms of smaller inputs', 'Database relation', 'Class relationship', 'Graph edge', 'A', 'Easy', 'Recurrences are commonly used to analyze recursive algorithms.'),

-- Q29
('Algorithms', 'Which technique is useful for solving many recurrence relations?', 'Master theorem', 'Binary search only', 'Hashing', 'BFS', 'A', 'Easy', 'The Master theorem handles many divide-and-conquer recurrences.'),

-- Q30
('Algorithms', 'What is divide and conquer?', 'Divide problem, solve subproblems, combine results', 'Use one large loop only', 'Store everything in a stack', 'Avoid recursion', 'A', 'Easy', 'Divide-and-conquer algorithms break problems into smaller subproblems.'),

-- Q31
('Algorithms', 'Which algorithm is a classic divide-and-conquer algorithm?', 'Merge sort', 'Linear search', 'BFS', 'Counting sort', 'A', 'Easy', 'Merge sort divides the array and recursively sorts the parts.'),

-- Q32
('Algorithms', 'Which algorithm repeatedly selects a locally best choice?', 'Greedy algorithm', 'Dynamic programming', 'Backtracking', 'Brute force', 'A', 'Easy', 'Greedy algorithms make locally optimal choices according to their strategy.'),

-- Q33
('Algorithms', 'What is dynamic programming?', 'Technique that solves overlapping subproblems while storing results', 'Random search', 'Simple sorting', 'Graph drawing', 'A', 'Easy', 'DP avoids recomputing overlapping subproblems.'),

-- Q34
('Algorithms', 'What is memoization?', 'Top-down caching of computed results', 'Sorting values', 'Graph traversal', 'Hash collision', 'A', 'Easy', 'Memoization stores results of recursive subproblems.'),

-- Q35
('Algorithms', 'What is tabulation?', 'Bottom-up dynamic programming', 'Top-down recursion only', 'Graph traversal', 'Sorting', 'A', 'Easy', 'Tabulation builds solutions from smaller states upward.'),

-- Q36
('Algorithms', 'What is backtracking?', 'Trying choices and undoing them when they fail', 'Sorting an array', 'Hashing keys', 'Traversing only left nodes', 'A', 'Easy', 'Backtracking explores possible solutions and reverses choices that lead to failure.'),

-- Q37
('Algorithms', 'Which problem commonly uses backtracking?', 'N-Queens', 'Binary search', 'Linear search', 'Counting sort', 'A', 'Easy', 'N-Queens explores possible queen placements with backtracking.'),

-- Q38
('Algorithms', 'What is brute force?', 'Exhaustively trying possible solutions', 'Always using greedy choices', 'Always using dynamic programming', 'Sorting only', 'A', 'Easy', 'Brute force systematically examines possible candidates.'),

-- Q39
('Algorithms', 'What is a heuristic?', 'Rule or strategy used to find a good solution efficiently', 'Guaranteed optimal algorithm', 'Data structure', 'Compiler', 'A', 'Easy', 'Heuristics prioritize practical solutions without necessarily guaranteeing optimality.'),

-- Q40
('Algorithms', 'What is an optimal solution?', 'Best solution according to the problem''s objective', 'First solution found', 'Largest solution', 'Fastest input', 'A', 'Easy', 'Optimality depends on the objective being minimized or maximized.'),

-- Q41
('Algorithms', 'What is a feasible solution?', 'Solution satisfying all required constraints', 'Always the optimal solution', 'Invalid solution', 'Empty solution only', 'A', 'Easy', 'A feasible solution satisfies the problem constraints.'),

-- Q42
('Algorithms', 'What is an invariant?', 'Property that remains true during algorithm execution', 'Variable that always changes', 'Final output only', 'Input value only', 'A', 'Easy', 'Loop and algorithm invariants help reason about correctness.'),

-- Q43
('Algorithms', 'What is a loop invariant?', 'Condition that remains true before and after relevant loop iterations', 'Loop counter only', 'Infinite loop', 'Output variable', 'A', 'Easy', 'Loop invariants are useful for proving iterative algorithms correct.'),

-- Q44
('Algorithms', 'What is termination?', 'Algorithm eventually stops', 'Algorithm always repeats', 'Algorithm never produces output', 'Algorithm deletes input', 'A', 'Easy', 'A terminating algorithm completes after a finite number of steps.'),

-- Q45
('Algorithms', 'Which property ensures an algorithm''s steps are unambiguous?', 'Definiteness', 'Randomness', 'Infinite recursion', 'Duplication', 'A', 'Easy', 'Each algorithm step should be precisely defined.'),

-- Q46
('Algorithms', 'What is scalability?', 'Ability to handle increasing input sizes effectively', 'Number of comments', 'Variable naming style', 'Number of files', 'A', 'Easy', 'Scalable algorithms maintain acceptable performance as input grows.'),

-- Q47
('Algorithms', 'What is trade-off in algorithm design?', 'Improving one resource may require more of another', 'All resources always improve together', 'Time is irrelevant', 'Memory is unlimited', 'A', 'Easy', 'For example, caching may use more memory to reduce execution time.'),

-- Q48
('Algorithms', 'What is an in-place algorithm?', 'Algorithm using limited additional storage', 'Algorithm using unlimited memory', 'Algorithm using a database', 'Algorithm requiring recursion', 'A', 'Easy', 'In-place methods generally modify data with small auxiliary space.'),

-- Q49
('Algorithms', 'What is a stable algorithm in sorting?', 'Equal-key elements preserve their relative order', 'Runtime never changes', 'Memory never changes', 'Input cannot contain duplicates', 'A', 'Easy', 'Stability concerns the ordering of equal elements.'),

-- Q50
('Algorithms', 'What is algorithm correctness proof used for?', 'Demonstrating that an algorithm meets its specification', 'Measuring screen size', 'Naming variables', 'Choosing a compiler', 'A', 'Easy', 'Correctness proofs establish that the algorithm produces valid results.'),

-- Q51
('Algorithms', 'What is linear search?', 'Sequentially checking elements until the target is found', 'Dividing the search space in half', 'Using a heap', 'Sorting first always', 'A', 'Medium', 'Linear search examines elements one by one.'),

-- Q52
('Algorithms', 'What is the worst-case complexity of linear search?', 'O(n)', 'O(1)', 'O(log n)', 'O(n²)', 'A', 'Medium', 'The target may be at the end or absent.'),

-- Q53
('Algorithms', 'What is binary search?', 'Search that repeatedly halves a sorted search space', 'Sequential search', 'Graph traversal', 'Hashing', 'A', 'Medium', 'Binary search compares the target with the middle element and discards half the search space.'),

-- Q54
('Algorithms', 'What is required for standard binary search on an array?', 'Sorted data', 'Unsorted data', 'A graph', 'A stack', 'A', 'Medium', 'Binary search relies on ordered data.'),

-- Q55
('Algorithms', 'What is the worst-case complexity of binary search?', 'O(log n)', 'O(n)', 'O(n²)', 'O(1)', 'A', 'Medium', 'Each comparison approximately halves the remaining search interval.'),

-- Q56
('Algorithms', 'What is a key advantage of binary search over linear search?', 'Faster search on large sorted data', 'Requires no ordering', 'Always uses less memory', 'Works only on graphs', 'A', 'Medium', 'Binary search has logarithmic search time versus linear search''s linear time.'),

-- Q57
('Algorithms', 'What is sorting?', 'Arranging elements according to an order', 'Searching for one value', 'Deleting data', 'Hashing data', 'A', 'Medium', 'Sorting arranges elements according to a specified ordering.'),

-- Q58
('Algorithms', 'Which sorting algorithm repeatedly selects the smallest remaining element?', 'Selection sort', 'Merge sort', 'Heap sort', 'Quick sort', 'A', 'Medium', 'Selection sort repeatedly selects the minimum element for the next position.'),

-- Q59
('Algorithms', 'What is the typical worst-case complexity of selection sort?', 'O(n²)', 'O(n)', 'O(log n)', 'O(1)', 'A', 'Medium', 'Selection sort performs quadratic comparisons.'),

-- Q60
('Algorithms', 'Which sorting algorithm repeatedly swaps adjacent out-of-order elements?', 'Bubble sort', 'Merge sort', 'Heap sort', 'Radix sort', 'A', 'Medium', 'Bubble sort compares neighboring elements and swaps them when needed.'),

-- Q61
('Algorithms', 'What is the typical worst-case complexity of bubble sort?', 'O(n²)', 'O(n log n)', 'O(log n)', 'O(1)', 'A', 'Medium', 'Bubble sort can require quadratic comparisons and swaps.'),

-- Q62
('Algorithms', 'Which sorting algorithm builds a sorted portion by inserting elements into it?', 'Insertion sort', 'Selection sort', 'Heap sort', 'Counting sort', 'A', 'Medium', 'Insertion sort inserts each new element into its proper place in the sorted prefix.'),

-- Q63
('Algorithms', 'What is the best-case complexity of insertion sort?', 'O(n)', 'O(n²)', 'O(log n)', 'O(2ⁿ)', 'A', 'Medium', 'When the input is already sorted, insertion sort can run in linear time.'),

-- Q64
('Algorithms', 'What is the worst-case complexity of insertion sort?', 'O(n²)', 'O(n)', 'O(log n)', 'O(1)', 'A', 'Medium', 'Reverse-sorted input causes many shifts.'),

-- Q65
('Algorithms', 'Which sorting algorithm uses divide and conquer?', 'Merge sort', 'Bubble sort', 'Selection sort', 'Counting sort', 'A', 'Medium', 'Merge sort divides the input into smaller parts and merges sorted results.'),

-- Q66
('Algorithms', 'What is the typical time complexity of merge sort?', 'O(n log n)', 'O(n²)', 'O(n)', 'O(log n)', 'A', 'Medium', 'Merge sort performs logarithmic levels of linear merging.'),

-- Q67
('Algorithms', 'Is merge sort generally stable?', 'Yes', 'No', 'Only for integers', 'Never', 'A', 'Medium', 'A properly implemented merge sort can preserve equal-element order.'),

-- Q68
('Algorithms', 'What is a disadvantage of standard merge sort on arrays?', 'Requires additional O(n) auxiliary space', 'Cannot sort', 'Always quadratic', 'Requires a graph', 'A', 'Medium', 'Standard array merge operations typically use temporary storage.'),

-- Q69
('Algorithms', 'Which sorting algorithm selects a pivot?', 'Quick sort', 'Bubble sort', 'Selection sort', 'Counting sort', 'A', 'Medium', 'Quick sort partitions the data around a pivot.'),

-- Q70
('Algorithms', 'What is quick sort''s average expected complexity?', 'O(n log n)', 'O(n²)', 'O(log n)', 'O(1)', 'A', 'Medium', 'Balanced partitions generally produce O(n log n) expected or average behavior.'),

-- Q71
('Algorithms', 'What is quick sort''s worst-case complexity?', 'O(n²)', 'O(n log n) always', 'O(log n)', 'O(1)', 'A', 'Medium', 'Highly unbalanced partitions can produce quadratic time.'),

-- Q72
('Algorithms', 'What determines quick sort performance significantly?', 'Quality of pivot selection', 'Variable names', 'Number of comments', 'File extension', 'A', 'Medium', 'Balanced partitions produce better recursion depth and performance.'),

-- Q73
('Algorithms', 'What is partitioning in quick sort?', 'Rearranging elements around a pivot', 'Dividing an array into equal halves only', 'Creating a heap', 'Searching a tree', 'A', 'Medium', 'Partitioning places elements on appropriate sides of the pivot.'),

-- Q74
('Algorithms', 'Which sorting algorithm uses a heap?', 'Heap sort', 'Merge sort', 'Bubble sort', 'Insertion sort', 'A', 'Medium', 'Heap sort builds a heap and repeatedly extracts an extreme element.'),

-- Q75
('Algorithms', 'What is heap sort''s typical worst-case complexity?', 'O(n log n)', 'O(n²)', 'O(n)', 'O(log n)', 'A', 'Medium', 'Building and repeatedly adjusting the heap results in O(n log n).'),

-- Q76
('Algorithms', 'Is heap sort generally in-place?', 'Yes', 'No', 'Only with strings', 'Never', 'A', 'Medium', 'Heap sort can sort an array using constant auxiliary space.'),

-- Q77
('Algorithms', 'Is heap sort stable by default?', 'No', 'Yes', 'Always', 'Only for duplicates', 'A', 'Medium', 'Standard heap sort does not preserve equal-element order.'),

-- Q78
('Algorithms', 'Which sorting algorithm is non-comparison-based?', 'Counting sort', 'Merge sort', 'Quick sort', 'Heap sort', 'A', 'Medium', 'Counting sort uses key frequencies rather than pairwise comparisons.'),

-- Q79
('Algorithms', 'Counting sort works especially well when:', 'Key range is reasonably small', 'Values are arbitrary objects with no keys', 'Data is always linked', 'Input is a graph', 'A', 'Medium', 'Its efficiency depends strongly on the range of integer keys.'),

-- Q80
('Algorithms', 'What is the typical complexity of counting sort?', 'O(n + k)', 'O(n²)', 'O(log n)', 'O(n log n) always', 'A', 'Medium', 'n is the number of elements and k is the key range.'),

-- Q81
('Algorithms', 'Which sorting algorithm processes digits or positions of keys?', 'Radix sort', 'Bubble sort', 'Selection sort', 'Merge sort', 'A', 'Medium', 'Radix sort processes keys digit by digit or character position by position.'),

-- Q82
('Algorithms', 'Radix sort often uses which type of sorting as a subroutine?', 'Stable counting sort', 'Binary search', 'DFS', 'Heap construction', 'A', 'Medium', 'Stable counting sort is commonly used for each digit position.'),

-- Q83
('Algorithms', 'What is bucket sort?', 'Distribution of elements into buckets followed by sorting each bucket', 'Sorting with a heap only', 'Graph traversal', 'Binary search', 'A', 'Medium', 'Bucket sort distributes elements according to value ranges.'),

-- Q84
('Algorithms', 'Bucket sort can perform well when:', 'Data is suitably distributed across buckets', 'All values are identical', 'There are no values', 'Input is always a tree', 'A', 'Medium', 'Its efficiency depends on distribution assumptions.'),

-- Q85
('Algorithms', 'Which sorting algorithm is generally adaptive?', 'Insertion sort', 'Selection sort', 'Heap sort', 'Standard counting sort', 'A', 'Medium', 'Insertion sort can exploit already sorted or nearly sorted input.'),

-- Q86
('Algorithms', 'What is an inversion in an array?', 'Pair of elements out of desired order', 'Duplicate value only', 'Maximum value', 'Array index', 'A', 'Medium', 'An inversion is a pair where the earlier element exceeds the later one in ascending-order context.'),

-- Q87
('Algorithms', 'Which sorting algorithm can efficiently count inversions?', 'Merge sort', 'Bubble sort only', 'Selection sort only', 'Linear search', 'A', 'Medium', 'Merge sort can count cross-half inversions during merging.'),

-- Q88
('Algorithms', 'What is external sorting?', 'Sorting data that does not fit entirely in main memory', 'Sorting only outside a computer', 'Sorting variables', 'Sorting source files', 'A', 'Medium', 'External sorting uses secondary storage for large datasets.'),

-- Q89
('Algorithms', 'Which algorithm is commonly used in external sorting?', 'External merge sort', 'Bubble sort', 'Selection sort', 'Binary search', 'A', 'Medium', 'External merge sort handles data in manageable chunks and merges sorted runs.'),

-- Q90
('Algorithms', 'What is a sorting key?', 'Value or field used to determine order', 'Encryption password', 'Array size', 'Memory address', 'A', 'Medium', 'The key determines how elements are compared or ordered.'),

-- Q91
('Algorithms', 'What is lexicographic ordering?', 'Ordering similar to dictionary order', 'Numeric-only ordering', 'Random ordering', 'Reverse-memory ordering', 'A', 'Medium', 'Lexicographic order compares sequences according to symbol ordering.'),

-- Q92
('Algorithms', 'What does ascending order mean?', 'Smallest to largest', 'Largest to smallest', 'Random order', 'Insertion order', 'A', 'Medium', 'Ascending order increases according to the comparison rule.'),

-- Q93
('Algorithms', 'What does descending order mean?', 'Largest to smallest', 'Smallest to largest', 'Random order', 'Original order', 'A', 'Medium', 'Descending order decreases according to the comparison rule.'),

-- Q94
('Algorithms', 'What is a comparison-based sorting algorithm?', 'Sorting based on comparisons between elements', 'Sorting only by hashing', 'Sorting only by digits', 'Sorting without values', 'A', 'Medium', 'Comparison sorts determine ordering by comparing elements.'),

-- Q95
('Algorithms', 'What is the comparison-sorting lower bound for general sorting?', 'Ω(n log n)', 'Ω(1)', 'Ω(n²)', 'Ω(log n)', 'A', 'Medium', 'Comparison-based sorting requires Ω(n log n) comparisons in the worst case.'),

-- Q96
('Algorithms', 'Can non-comparison sorting beat O(n log n)?', 'Yes, under suitable assumptions', 'No, never', 'Only with recursion', 'Only for graphs', 'A', 'Medium', 'Counting, radix, and bucket methods exploit additional assumptions about keys.'),

-- Q97
('Algorithms', 'Which sorting algorithm is usually easiest to implement?', 'Bubble sort', 'Quick sort', 'Heap sort', 'Radix sort', 'A', 'Medium', 'Bubble sort has a simple implementation, though it is inefficient for large data.'),

-- Q98
('Algorithms', 'Which sorting algorithm is often preferred for nearly sorted data?', 'Insertion sort', 'Selection sort', 'Heap sort', 'Radix sort', 'A', 'Medium', 'Insertion sort performs efficiently when few elements are out of place.'),

-- Q99
('Algorithms', 'What is a stable sorting requirement useful for?', 'Preserving ordering from previous sorting keys', 'Reducing memory always', 'Removing duplicates', 'Avoiding comparisons', 'A', 'Medium', 'Stability is useful in multi-key sorting.'),

-- Q100
('Algorithms', 'Which algorithm is commonly used to find an element in sorted data efficiently?', 'Binary search', 'Bubble sort', 'Selection sort', 'Merge sort', 'A', 'Medium', 'Binary search efficiently searches ordered data.'),

-- Q101
('Algorithms', 'What is the main idea of a greedy algorithm?', 'Make the best immediate choice at each step', 'Explore every possibility', 'Store every subproblem', 'Always use recursion', 'A', 'Medium', 'Greedy algorithms make locally optimal choices.'),

-- Q102
('Algorithms', 'Does every greedy algorithm produce a globally optimal solution?', 'No', 'Yes, always', 'Only for sorting', 'Only for graphs', 'A', 'Medium', 'Greedy correctness requires specific properties of the problem.'),

-- Q103
('Algorithms', 'Which property supports greedy solutions?', 'Greedy-choice property', 'Random-choice property', 'Infinite recursion', 'Hash property', 'A', 'Medium', 'The greedy-choice property means an optimal solution can begin with a locally optimal choice.'),

-- Q104
('Algorithms', 'What is optimal substructure?', 'An optimal solution contains optimal solutions to subproblems', 'Every solution is optimal', 'Every subproblem is independent', 'No recursion is required', 'A', 'Medium', 'Optimal substructure is important in greedy algorithms and dynamic programming.'),

-- Q105
('Algorithms', 'Which problem is classically solved using a greedy strategy?', 'Activity selection', '0/1 knapsack', 'Matrix chain multiplication', 'Longest common subsequence', 'A', 'Medium', 'Activity selection has a greedy solution based on earliest finishing time.'),

-- Q106
('Algorithms', 'Which algorithm is used for fractional knapsack?', 'Greedy approach', 'Binary search only', 'BFS', 'DFS only', 'A', 'Medium', 'Items can be selected by value-to-weight ratio when fractions are allowed.'),

-- Q107
('Algorithms', 'Does the standard greedy ratio approach solve 0/1 knapsack optimally?', 'No', 'Yes, always', 'Only with negative weights', 'Only for graphs', 'A', 'Medium', '0/1 knapsack generally requires dynamic programming or other exact methods.'),

-- Q108
('Algorithms', 'Which algorithm is commonly used for minimum spanning trees?', 'Kruskal''s algorithm', 'Binary search', 'Merge sort', 'KMP', 'A', 'Medium', 'Kruskal constructs an MST by selecting safe low-weight edges.'),

-- Q109
('Algorithms', 'Which is another minimum spanning tree algorithm?', 'Prim''s algorithm', 'KMP', 'Rabin-Karp', 'Binary search', 'A', 'Medium', 'Prim grows an MST from a starting vertex.'),

-- Q110
('Algorithms', 'Which algorithm is greedy?', 'Dijkstra''s algorithm', 'Merge sort', 'Fibonacci recursion', 'LCS dynamic programming', 'A', 'Medium', 'Dijkstra repeatedly chooses the closest unprocessed vertex under nonnegative weights.'),

-- Q111
('Algorithms', 'Dijkstra''s algorithm requires edge weights to be:', 'Nonnegative', 'Always negative', 'All equal', 'Prime numbers', 'A', 'Medium', 'Negative edges can invalidate Dijkstra''s greedy choice.'),

-- Q112
('Algorithms', 'Which algorithm supports shortest paths with negative edges?', 'Bellman-Ford', 'Binary search', 'Prim', 'Heap sort', 'A', 'Medium', 'Bellman-Ford handles negative edge weights.'),

-- Q113
('Algorithms', 'What can Bellman-Ford detect?', 'Reachable negative-weight cycles', 'Sorting inversions', 'Duplicate array values', 'Heap violations', 'A', 'Medium', 'Continued relaxation after sufficient passes can reveal negative cycles reachable from the source.'),

-- Q114
('Algorithms', 'What is dynamic programming particularly useful for?', 'Problems with overlapping subproblems and optimal substructure', 'Only graph drawing', 'Only sorting', 'Only searching', 'A', 'Medium', 'DP stores subproblem results to avoid repeated work.'),

-- Q115
('Algorithms', 'What are overlapping subproblems?', 'Same smaller problems are solved repeatedly', 'Subproblems never repeat', 'Problems with no inputs', 'Graph cycles only', 'A', 'Medium', 'Repeated subproblems make caching valuable.'),

-- Q116
('Algorithms', 'Which is a classic dynamic programming problem?', 'Longest Common Subsequence', 'Linear search', 'Selection sort', 'BFS', 'A', 'Medium', 'LCS uses a DP table over prefixes of two sequences.'),

-- Q117
('Algorithms', 'What does LCS stand for?', 'Longest Common Subsequence', 'Longest Complete Search', 'Linear Common Structure', 'Lowest Cost Sequence', 'A', 'Medium', 'LCS finds the longest sequence appearing in both sequences in order, not necessarily contiguously.'),

-- Q118
('Algorithms', 'What is the difference between substring and subsequence?', 'Substring is contiguous; subsequence need not be', 'They are always identical', 'Subsequence must be contiguous', 'Substring cannot contain characters', 'A', 'Medium', 'A subsequence preserves order but may skip elements.'),

-- Q119
('Algorithms', 'Which is a classic DP optimization problem?', 'Matrix chain multiplication', 'Linear search', 'Bubble sort', 'BFS', 'A', 'Medium', 'DP determines an efficient parenthesization of matrix products.'),

-- Q120
('Algorithms', 'What does memoization store?', 'Previously computed subproblem results', 'Input files', 'Graph edges only', 'Source code', 'A', 'Medium', 'Memoization caches results for reuse.'),

-- Q121
('Algorithms', 'What is bottom-up DP?', 'Solve smaller states first and build larger states', 'Start from the largest problem recursively', 'Random computation', 'Graph traversal', 'A', 'Medium', 'Tabulation computes states in dependency order.'),

-- Q122
('Algorithms', 'What is top-down DP?', 'Recursive formulation with memoization', 'Sorting from largest value', 'BFS traversal', 'Heap construction', 'A', 'Medium', 'Top-down DP starts with the original problem and recursively computes needed states.'),

-- Q123
('Algorithms', 'What is the 0/1 knapsack restriction?', 'Each item can be selected at most once', 'Items can be selected infinitely', 'Items cannot be selected', 'Fractions are always allowed', 'A', 'Medium', 'Each item is either included or excluded.'),

-- Q124
('Algorithms', 'What is fractional knapsack?', 'Items can be partially selected', 'Items must be selected entirely', 'Items cannot be selected', 'Only graphs are used', 'A', 'Medium', 'Fractions of items are allowed, enabling a greedy ratio solution.'),

-- Q125
('Algorithms', 'Which approach solves 0/1 knapsack exactly for moderate capacity?', 'Dynamic programming', 'Simple greedy ratio', 'Binary search', 'BFS only', 'A', 'Medium', 'DP can solve it in pseudo-polynomial time based on capacity.'),

-- Q126
('Algorithms', 'What is the Fibonacci sequence often used to demonstrate?', 'Recursion and dynamic programming', 'Hash collisions', 'Graph coloring only', 'Sorting only', 'A', 'Medium', 'Naive recursion repeats subproblems, making it a classic DP example.'),

-- Q127
('Algorithms', 'Why is naive recursive Fibonacci inefficient?', 'It repeatedly solves the same subproblems', 'It uses no recursion', 'It sorts data', 'It has no base case', 'A', 'Medium', 'Many Fibonacci values are recomputed.'),

-- Q128
('Algorithms', 'What is the DP time complexity for Fibonacci with memoization?', 'O(n)', 'O(2ⁿ)', 'O(n²) always', 'O(log n)', 'A', 'Medium', 'Each Fibonacci state is computed once.'),

-- Q129
('Algorithms', 'What is backtracking primarily used for?', 'Exploring a search space while abandoning invalid partial solutions', 'Sorting arrays', 'Hashing data', 'Compressing files', 'A', 'Medium', 'Backtracking prunes paths that cannot lead to valid solutions.'),

-- Q130
('Algorithms', 'Which problem commonly uses backtracking?', 'Sudoku solving', 'Binary search', 'Merge sort', 'Counting sort', 'A', 'Medium', 'Sudoku can be solved by exploring candidate assignments and backtracking on conflicts.'),

-- Q131
('Algorithms', 'What is pruning?', 'Eliminating search branches that cannot produce a valid or better solution', 'Sorting branches', 'Adding more states', 'Creating graph edges', 'A', 'Medium', 'Pruning reduces unnecessary exploration.'),

-- Q132
('Algorithms', 'What is branch and bound?', 'Search method using bounds to eliminate non-promising branches', 'Sorting algorithm', 'Hash function', 'Tree traversal only', 'A', 'Medium', 'Branch and bound uses estimates to avoid exploring inferior possibilities.'),

-- Q133
('Algorithms', 'Which problem is often solved with branch and bound?', 'Traveling Salesperson Problem', 'Linear search', 'Bubble sort', 'Binary search', 'A', 'Medium', 'Branch and bound can prune TSP search using lower bounds.'),

-- Q134
('Algorithms', 'What is the Traveling Salesperson Problem?', 'Find a minimum-cost tour visiting each city once and returning to the start', 'Find any graph edge', 'Sort cities alphabetically', 'Find a spanning tree only', 'A', 'Medium', 'TSP seeks an optimal Hamiltonian cycle under a cost objective.'),

-- Q135
('Algorithms', 'Is general TSP considered computationally difficult?', 'Yes', 'No', 'It is always O(1)', 'It is a sorting problem', 'A', 'Medium', 'Exact general TSP is NP-hard.'),

-- Q136
('Algorithms', 'What is a state in dynamic programming?', 'A representation of a subproblem''s relevant information', 'A programming language', 'A graph edge only', 'A variable name', 'A', 'Medium', 'DP states capture enough information to determine future decisions.'),

-- Q137
('Algorithms', 'What is a state transition?', 'Rule for deriving one DP state from other states', 'Database migration', 'Object creation', 'Sorting operation', 'A', 'Medium', 'Transitions define how solutions to smaller states contribute to larger states.'),

-- Q138
('Algorithms', 'What is the recurrence in DP?', 'Formula relating a state to smaller states', 'Memory address', 'Hash value', 'Graph edge', 'A', 'Medium', 'Recurrences express the relationship between subproblems.'),

-- Q139
('Algorithms', 'What is a greedy proof?', 'Argument showing greedy choices preserve optimality', 'Sorting result', 'Program compilation', 'Memory allocation', 'A', 'Medium', 'Greedy algorithms require proof that local choices lead to a global optimum.'),

-- Q140
('Algorithms', 'What is exchange argument?', 'Proof technique showing a greedy choice can replace part of an optimal solution', 'Data exchange protocol', 'Hashing technique', 'Sorting method', 'A', 'Medium', 'Exchange arguments are commonly used to prove greedy algorithms correct.'),

-- Q141
('Algorithms', 'What is a canonical coin system?', 'Coin denominations for which the standard greedy change algorithm gives optimal results', 'Random denominations', 'Graph weights', 'Sorting keys', 'A', 'Medium', 'Some denomination systems guarantee greedy optimality.'),

-- Q142
('Algorithms', 'Does greedy always solve arbitrary coin-change systems optimally?', 'No', 'Yes', 'Only with recursion', 'Only with negative coins', 'A', 'Medium', 'Some coin systems require DP for an optimal solution.'),

-- Q143
('Algorithms', 'What is shortest-path dynamic programming?', 'Using subproblem relationships to compute shortest paths', 'Sorting paths alphabetically', 'Hashing vertices', 'Counting edges only', 'A', 'Medium', 'Algorithms such as Floyd-Warshall use DP over intermediate vertices.'),

-- Q144
('Algorithms', 'Which algorithm solves all-pairs shortest paths using DP?', 'Floyd-Warshall', 'Binary search', 'Prim', 'Merge sort', 'A', 'Medium', 'Floyd-Warshall considers intermediate vertices systematically.'),

-- Q145
('Algorithms', 'What is Floyd-Warshall''s typical time complexity?', 'O(V³)', 'O(V)', 'O(log V)', 'O(E) always', 'A', 'Medium', 'It uses three nested loops over vertices.'),

-- Q146
('Algorithms', 'Can Floyd-Warshall handle negative edges?', 'Yes, if there are no negative cycles affecting the desired shortest paths', 'No, never', 'Only positive edges', 'Only trees', 'A', 'Medium', 'Floyd-Warshall supports negative edges but negative cycles invalidate finite shortest paths.'),

-- Q147
('Algorithms', 'What is a pseudo-polynomial algorithm?', 'Polynomial in numeric value of input rather than input length', 'Always exponential', 'Always constant', 'Sorting algorithm', 'A', 'Medium', 'DP for knapsack is a classic example.'),

-- Q148
('Algorithms', 'Why is DP for knapsack called pseudo-polynomial?', 'Complexity depends on numeric capacity', 'It is always exponential', 'It uses graphs', 'It has no recurrence', 'A', 'Medium', 'Its runtime depends on the numerical capacity, which may require fewer bits to represent.'),

-- Q149
('Algorithms', 'What is overlapping-subproblem optimization?', 'Store computed results for reuse', 'Delete repeated inputs', 'Sort subproblems', 'Ignore subproblems', 'A', 'Medium', 'Caching prevents repeated computation.'),

-- Q150
('Algorithms', 'What is the main difference between greedy and DP?', 'Greedy commits to local choices; DP systematically considers subproblem combinations', 'They are always identical', 'DP never stores results', 'Greedy always explores all possibilities', 'A', 'Medium', 'Their solution strategies and correctness requirements differ.'),

-- Q151
('Algorithms', 'What is graph traversal?', 'Systematically visiting graph vertices and edges', 'Sorting graph names', 'Removing all edges', 'Hashing vertices', 'A', 'Hard', 'Traversal algorithms explore graph structures.'),

-- Q152
('Algorithms', 'Which algorithm explores a graph level by level?', 'BFS', 'DFS', 'Quick sort', 'Binary search', 'A', 'Hard', 'BFS uses a queue to explore increasing distance levels.'),

-- Q153
('Algorithms', 'Which algorithm explores deeply before backtracking?', 'DFS', 'BFS', 'Merge sort', 'Counting sort', 'A', 'Hard', 'DFS follows a path as deeply as possible before returning.'),

-- Q154
('Algorithms', 'Which structure is typically used by BFS?', 'Queue', 'Stack', 'Heap', 'Hash table only', 'A', 'Hard', 'A queue maintains breadth-first order.'),

-- Q155
('Algorithms', 'Which structure is commonly used for iterative DFS?', 'Stack', 'Queue', 'Heap', 'Priority queue', 'A', 'Hard', 'A stack supports depth-first exploration.'),

-- Q156
('Algorithms', 'What is a visited set used for in graph traversal?', 'Avoiding repeated processing of vertices', 'Sorting vertices', 'Changing edge weights', 'Creating cycles', 'A', 'Hard', 'It prevents unnecessary revisits and can prevent infinite traversal on cyclic graphs.'),

-- Q157
('Algorithms', 'BFS can find shortest paths in:', 'Unweighted graphs', 'Arbitrary negative-weight graphs', 'Weighted graphs with arbitrary positive weights', 'All graphs optimally', 'A', 'Hard', 'BFS finds minimum-edge-count paths in unweighted graphs.'),

-- Q158
('Algorithms', 'Which algorithm finds a topological ordering?', 'Kahn''s algorithm', 'Binary search', 'Merge sort', 'Dijkstra only', 'A', 'Hard', 'Kahn''s algorithm repeatedly removes zero-indegree vertices.'),

-- Q159
('Algorithms', 'Which traversal can also produce a topological order?', 'DFS', 'BFS only', 'Binary search', 'Heap sort', 'A', 'Hard', 'DFS finishing times can be used for topological sorting of DAGs.'),

-- Q160
('Algorithms', 'What does Kahn''s algorithm use?', 'Indegree counts and a queue or set of zero-indegree vertices', 'Heap only', 'Stack only', 'Hashing only', 'A', 'Hard', 'It repeatedly processes vertices whose prerequisites are satisfied.'),

-- Q161
('Algorithms', 'What does KMP stand for?', 'Knuth-Morris-Pratt', 'Key Matching Process', 'Kernel Memory Parser', 'Known Maximum Pattern', 'A', 'Hard', 'KMP is a pattern-matching algorithm.'),

-- Q162
('Algorithms', 'What problem does KMP solve?', 'String pattern matching', 'Sorting', 'Minimum spanning tree', 'Shortest path', 'A', 'Hard', 'KMP searches for a pattern within a text efficiently.'),

-- Q163
('Algorithms', 'What does KMP preprocess?', 'The pattern', 'The entire database', 'Graph weights', 'Sorting keys', 'A', 'Hard', 'KMP computes a prefix-function or LPS structure for the pattern.'),

-- Q164
('Algorithms', 'What does LPS commonly stand for in KMP?', 'Longest Proper Prefix which is also a Suffix', 'Lowest Pattern Search', 'Linear Prefix Structure', 'Last Pattern Segment', 'A', 'Hard', 'LPS values help KMP skip unnecessary comparisons.'),

-- Q165
('Algorithms', 'What is the typical time complexity of KMP?', 'O(n + m)', 'O(nm)', 'O(n²m)', 'O(log n)', 'A', 'Hard', 'KMP searches text and preprocesses the pattern in linear combined time.'),

-- Q166
('Algorithms', 'What is Rabin-Karp?', 'String matching using hashing', 'Graph algorithm', 'Sorting algorithm', 'Heap algorithm', 'A', 'Hard', 'Rabin-Karp uses rolling hashes to compare patterns efficiently.'),

-- Q167
('Algorithms', 'What is a rolling hash?', 'Hash that can be updated efficiently when a window moves', 'Hash that never changes', 'Graph traversal', 'Sorting function', 'A', 'Hard', 'Rolling hashes allow efficient recalculation for adjacent substrings.'),

-- Q168
('Algorithms', 'What is the main risk in hash-based string matching?', 'Hash collisions', 'Stack overflow always', 'Tree imbalance', 'Queue underflow', 'A', 'Hard', 'Different strings may have the same hash and require verification.'),

-- Q169
('Algorithms', 'What is a prefix of a string?', 'Starting portion of the string', 'Ending portion only', 'Middle portion only', 'Random character', 'A', 'Hard', 'A prefix begins at the first character.'),

-- Q170
('Algorithms', 'What is a suffix?', 'Ending portion of a string', 'Starting portion', 'Middle only', 'Random substring', 'A', 'Hard', 'A suffix ends at the final character.'),

-- Q171
('Algorithms', 'What is a substring?', 'Contiguous sequence of characters', 'Any selected characters', 'Only a prefix', 'Only a suffix', 'A', 'Hard', 'Substrings occupy consecutive positions.'),

-- Q172
('Algorithms', 'What is a subsequence?', 'Sequence formed by deleting zero or more elements without changing order', 'Always contiguous', 'Always a prefix', 'Always a suffix', 'A', 'Hard', 'Subsequence elements remain in relative order but need not be adjacent.'),

-- Q173
('Algorithms', 'What is a suffix array?', 'Array of all suffixes represented by their sorted starting positions', 'Stack of suffixes', 'Queue of strings', 'Graph of characters', 'A', 'Hard', 'Suffix arrays support efficient string queries after preprocessing.'),

-- Q174
('Algorithms', 'What is a suffix tree?', 'Compressed trie representing all suffixes of a string', 'Binary search tree', 'Heap', 'Graph only', 'A', 'Hard', 'Suffix trees provide powerful linear-time string operations with suitable construction.'),

-- Q175
('Algorithms', 'What is a minimum spanning tree used for?', 'Connecting all vertices with minimum total edge weight', 'Finding every shortest path', 'Sorting edges alphabetically', 'Searching strings', 'A', 'Hard', 'MST minimizes total connection cost without cycles.'),

-- Q176
('Algorithms', 'What is Dijkstra''s algorithm primarily used for?', 'Single-source shortest paths with nonnegative edge weights', 'Sorting arrays', 'String matching', 'Minimum spanning tree only', 'A', 'Hard', 'Dijkstra computes shortest distances from one source under nonnegative weights.'),

-- Q177
('Algorithms', 'What is Bellman-Ford primarily used for?', 'Single-source shortest paths with possible negative edges', 'Sorting', 'String matching', 'Binary search', 'A', 'Hard', 'Bellman-Ford supports negative weights and detects reachable negative cycles.'),

-- Q178
('Algorithms', 'What is A* algorithm used for?', 'Finding paths using cost plus heuristic estimates', 'Sorting', 'Hashing', 'String compression', 'A', 'Hard', 'A* prioritizes nodes using path cost plus an estimated remaining cost.'),

-- Q179
('Algorithms', 'What is an admissible heuristic?', 'Heuristic that never overestimates the true remaining cost', 'Heuristic that always overestimates', 'Random estimate', 'Exact path always', 'A', 'Hard', 'Admissibility is important for optimality of standard A* under appropriate conditions.'),

-- Q180
('Algorithms', 'What is a consistent heuristic?', 'Heuristic satisfying a triangle-like consistency condition', 'Random heuristic', 'Negative heuristic always', 'Exact heuristic only', 'A', 'Hard', 'Consistency ensures suitable monotonicity of estimated costs.'),

-- Q181
('Algorithms', 'What is an articulation point?', 'Vertex whose removal increases the number of connected components', 'Any leaf', 'Graph root always', 'Edge with maximum weight', 'A', 'Hard', 'Articulation points are critical vertices in connectivity.'),

-- Q182
('Algorithms', 'What is a bridge in a graph?', 'Edge whose removal increases the number of connected components', 'Any cycle edge', 'Highest-weight edge', 'Root edge only', 'A', 'Hard', 'Bridges are critical edges for connectivity.'),

-- Q183
('Algorithms', 'Which algorithm can find articulation points and bridges?', 'DFS-based algorithms', 'Binary search', 'Merge sort', 'Counting sort', 'A', 'Hard', 'DFS discovery and low-link values can identify them efficiently.'),

-- Q184
('Algorithms', 'What is strongly connected in a directed graph?', 'Every vertex can reach every other vertex', 'Every vertex has degree two', 'Graph has no edges', 'Graph is always acyclic', 'A', 'Hard', 'Strong connectivity requires mutual reachability.'),

-- Q185
('Algorithms', 'Which algorithm can find strongly connected components?', 'Kosaraju''s algorithm', 'Binary search', 'Heap sort', 'Selection sort', 'A', 'Hard', 'Kosaraju uses DFS on a graph and its transpose.'),

-- Q186
('Algorithms', 'Which is another SCC algorithm?', 'Tarjan''s algorithm', 'Bubble sort', 'Prim', 'Binary search', 'A', 'Hard', 'Tarjan''s algorithm finds SCCs using one DFS and low-link information.'),

-- Q187
('Algorithms', 'What is a connected component?', 'Maximal set of mutually reachable vertices in an undirected graph', 'Any single edge', 'Any cycle', 'A tree root', 'A', 'Hard', 'Connected components partition an undirected graph into connected regions.'),

-- Q188
('Algorithms', 'What is cycle detection in an undirected graph commonly performed using?', 'DFS or union-find', 'Binary search', 'Merge sort', 'Counting sort', 'A', 'Hard', 'DFS can detect back edges, while union-find can detect cycles during edge processing.'),

-- Q189
('Algorithms', 'What is cycle detection in a directed graph commonly performed using?', 'DFS with recursion-stack or state tracking', 'Binary search', 'Selection sort', 'Heapify', 'A', 'Hard', 'A back edge to an active DFS ancestor indicates a directed cycle.'),

-- Q190
('Algorithms', 'What is the purpose of topological sorting?', 'Ordering tasks according to dependencies', 'Sorting arbitrary numbers only', 'Finding minimum spanning trees', 'Searching strings', 'A', 'Hard', 'It produces a dependency-respecting order for DAGs.'),

-- Q191
('Algorithms', 'What is amortized analysis?', 'Average cost per operation over a sequence', 'Worst case of one operation', 'Best case only', 'Memory-only analysis', 'A', 'Hard', 'Amortized analysis distributes occasional expensive operations across a sequence.'),

-- Q192
('Algorithms', 'What is a randomized algorithm?', 'Algorithm that uses random choices during execution', 'Algorithm that always produces random output', 'Algorithm without input', 'Sorting algorithm only', 'A', 'Hard', 'Randomization can improve expected performance or simplify algorithms.'),

-- Q193
('Algorithms', 'What is randomized quicksort''s expected complexity?', 'O(n log n)', 'O(n²) always', 'O(log n)', 'O(1)', 'A', 'Hard', 'Random pivot selection gives expected balanced partitions.'),

-- Q194
('Algorithms', 'What is an online algorithm?', 'Algorithm that processes input incrementally as it arrives', 'Algorithm requiring all input beforehand', 'Algorithm used only on websites', 'Algorithm without output', 'A', 'Hard', 'Online algorithms make decisions without necessarily seeing future input.'),

-- Q195
('Algorithms', 'What is an offline algorithm?', 'Algorithm that can access the complete input before processing', 'Algorithm without input', 'Algorithm that only works offline', 'Algorithm without memory', 'A', 'Hard', 'Offline algorithms can use full knowledge of the input.'),

-- Q196
('Algorithms', 'What is an approximation algorithm?', 'Algorithm that efficiently finds a solution close to optimal for difficult optimization problems', 'Algorithm that always gives random answers', 'Exact sorting algorithm', 'Search algorithm only', 'A', 'Hard', 'Approximation algorithms provide quality guarantees or useful near-optimal solutions.'),

-- Q197
('Algorithms', 'What is the purpose of an approximation ratio?', 'Measures solution quality relative to an optimal solution', 'Measures memory addresses', 'Measures input length only', 'Counts graph vertices', 'A', 'Hard', 'Approximation ratios quantify how close an algorithm''s result is to optimum.'),

-- Q198
('Algorithms', 'What does NP stand for in complexity theory?', 'Nondeterministic Polynomial time', 'Numerical Processing', 'Network Programming', 'Nonlinear Processing', 'A', 'Hard', 'NP is the class of decision problems whose solutions can be verified in polynomial time by a deterministic machine.'),

-- Q199
('Algorithms', 'What is an NP-complete problem?', 'Problem in NP that is also NP-hard', 'Any polynomial-time problem', 'Any sorting problem', 'Any graph problem', 'A', 'Hard', 'NP-complete problems are among the hardest problems in NP under polynomial-time reductions.'),

-- Q200
('Algorithms', 'What is the primary goal of algorithm design?', 'Solve problems correctly and efficiently', 'Maximize code length', 'Avoid data structures', 'Use the most complicated method', 'A', 'Hard', 'Good algorithm design balances correctness, efficiency, clarity, and practical constraints.');


-- Verification 1
SELECT COUNT(*) AS algorithms_questions
FROM questions
WHERE skill = 'Algorithms';

-- Verification 2
SELECT COUNT(DISTINCT question) AS unique_algorithms_questions
FROM questions
WHERE skill = 'Algorithms';

-- Verification 3
SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;	
