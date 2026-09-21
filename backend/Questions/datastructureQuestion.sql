USE ai_interviewer;

-- Data Structures 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Data Structures';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Data Structures', 'What is a data structure?', 'A way to organize and store data', 'A programming language', 'An operating system', 'A compiler', 'A', 'Easy', 'A data structure organizes data so it can be accessed and manipulated efficiently.'),

-- Q2
('Data Structures', 'Which is a linear data structure?', 'Array', 'Tree', 'Graph', 'Heap', 'A', 'Easy', 'Arrays store elements in a sequential linear arrangement.'),

-- Q3
('Data Structures', 'Which is a non-linear data structure?', 'Tree', 'Array', 'Stack', 'Queue', 'A', 'Easy', 'Trees organize data hierarchically rather than sequentially.'),

-- Q4
('Data Structures', 'Which data structure stores elements in contiguous memory locations?', 'Array', 'Linked list', 'Graph', 'Tree', 'A', 'Easy', 'Traditional arrays use contiguous memory allocation.'),

-- Q5
('Data Structures', 'Which data structure follows LIFO?', 'Stack', 'Queue', 'Array', 'Graph', 'A', 'Easy', 'LIFO means Last In, First Out.'),

-- Q6
('Data Structures', 'Which data structure follows FIFO?', 'Queue', 'Stack', 'Tree', 'Heap', 'A', 'Easy', 'FIFO means First In, First Out.'),

-- Q7
('Data Structures', 'Which operation adds an element to a stack?', 'Push', 'Pop', 'Peek', 'Search', 'A', 'Easy', 'Push inserts an element onto the top of a stack.'),

-- Q8
('Data Structures', 'Which operation removes an element from a stack?', 'Pop', 'Push', 'Insert', 'Enqueue', 'A', 'Easy', 'Pop removes the top element from a stack.'),

-- Q9
('Data Structures', 'Which operation adds an element to a queue?', 'Enqueue', 'Dequeue', 'Pop', 'Peek', 'A', 'Easy', 'Enqueue adds an element to the queue.'),

-- Q10
('Data Structures', 'Which operation removes an element from a queue?', 'Dequeue', 'Enqueue', 'Push', 'Insert', 'A', 'Easy', 'Dequeue removes an element from the front of a queue.'),

-- Q11
('Data Structures', 'Which structure consists of nodes connected by links?', 'Linked list', 'Array', 'Matrix', 'Hash table', 'A', 'Easy', 'Linked lists consist of nodes connected through references or pointers.'),

-- Q12
('Data Structures', 'What does a linked-list node usually contain?', 'Data and a link/reference', 'Only data', 'Only an index', 'Only a key', 'A', 'Easy', 'A node generally stores its data and a reference to another node.'),

-- Q13
('Data Structures', 'What is the first node of a linked list called?', 'Head', 'Tail', 'Root', 'Top', 'A', 'Easy', 'The head identifies the beginning of a linked list.'),

-- Q14
('Data Structures', 'What is the last node of a linked list commonly called?', 'Tail', 'Head', 'Root', 'Parent', 'A', 'Easy', 'The tail represents the end of the list.'),

-- Q15
('Data Structures', 'Which linked list has links in both directions?', 'Doubly linked list', 'Singly linked list', 'Circular singly list', 'Static list', 'A', 'Easy', 'Doubly linked-list nodes typically have next and previous references.'),

-- Q16
('Data Structures', 'Which linked list connects the last node back to the first?', 'Circular linked list', 'Linear linked list', 'Doubly linked list only', 'Static list', 'A', 'Easy', 'Circular lists form a cycle from the last node to the first.'),

-- Q17
('Data Structures', 'What is the main advantage of a linked list over an array for insertion?', 'Easier insertion without shifting many elements', 'Constant-time random access', 'Contiguous memory', 'Lower pointer usage', 'A', 'Easy', 'Linked lists can insert by changing links when the relevant position is known.'),

-- Q18
('Data Structures', 'What is a major disadvantage of linked lists?', 'No efficient direct random access', 'Cannot store data', 'Cannot insert elements', 'Always fixed size', 'A', 'Easy', 'Accessing a specific position generally requires traversal.'),

-- Q19
('Data Structures', 'Which structure is ideal for representing hierarchical data?', 'Tree', 'Stack', 'Queue', 'Array', 'A', 'Easy', 'Trees naturally represent parent-child relationships.'),

-- Q20
('Data Structures', 'Which structure is commonly used to represent networks?', 'Graph', 'Stack', 'Queue', 'Array', 'A', 'Easy', 'Graphs represent vertices and connections between them.'),

-- Q21
('Data Structures', 'What is a node in a tree?', 'An element containing data and relationships to other nodes', 'Only the root', 'Only a leaf', 'A graph edge', 'A', 'Easy', 'Tree nodes contain values and links to child nodes.'),

-- Q22
('Data Structures', 'What is the topmost node in a tree called?', 'Root', 'Leaf', 'Parent', 'Child', 'A', 'Easy', 'The root is the starting node of a tree.'),

-- Q23
('Data Structures', 'What is a node with no children called?', 'Leaf', 'Root', 'Parent', 'Internal node', 'A', 'Easy', 'A leaf node has no child nodes.'),

-- Q24
('Data Structures', 'What is an internal node?', 'A node with at least one child', 'A node with no parent', 'The root only', 'A graph edge', 'A', 'Easy', 'Internal nodes have one or more children.'),

-- Q25
('Data Structures', 'What is the degree of a node in a tree?', 'Number of children', 'Number of parents', 'Number of ancestors only', 'Number of leaves', 'A', 'Easy', 'In a rooted tree, node degree is commonly the number of children.'),

-- Q26
('Data Structures', 'What is tree height?', 'Number of edges on the longest root-to-leaf path', 'Number of nodes in the tree', 'Number of leaves', 'Number of roots', 'A', 'Easy', 'Height measures the longest downward path from the root.'),

-- Q27
('Data Structures', 'What is tree depth?', 'Distance from the root to a node', 'Number of leaves', 'Total number of nodes', 'Number of siblings', 'A', 'Easy', 'Depth measures how far a node is from the root.'),

-- Q28
('Data Structures', 'Which tree has at most two children per node?', 'Binary tree', 'General tree', 'B-tree', 'Trie', 'A', 'Easy', 'Each binary-tree node can have zero, one, or two children.'),

-- Q29
('Data Structures', 'What is a binary search tree?', 'Binary tree ordered by key values', 'Any binary tree', 'A graph', 'A queue', 'A', 'Easy', 'A BST maintains an ordering that supports efficient searching when balanced.'),

-- Q30
('Data Structures', 'In a typical BST, values smaller than a node are placed:', 'In its left subtree', 'In its right subtree', 'At the root', 'Outside the tree', 'A', 'Easy', 'BST ordering places smaller keys in the left subtree.'),

-- Q31
('Data Structures', 'In a typical BST, values larger than a node are placed:', 'In its right subtree', 'In its left subtree', 'At the root', 'In a queue', 'A', 'Easy', 'Larger keys are placed in the right subtree.'),

-- Q32
('Data Structures', 'Which traversal visits root between left and right subtrees?', 'Inorder', 'Preorder', 'Postorder', 'Level-order', 'A', 'Easy', 'Inorder follows Left → Root → Right.'),

-- Q33
('Data Structures', 'Which traversal follows Root → Left → Right?', 'Preorder', 'Inorder', 'Postorder', 'Level-order', 'A', 'Easy', 'Preorder visits the root before its subtrees.'),

-- Q34
('Data Structures', 'Which traversal follows Left → Right → Root?', 'Postorder', 'Preorder', 'Inorder', 'Level-order', 'A', 'Easy', 'Postorder visits the root after both subtrees.'),

-- Q35
('Data Structures', 'Which traversal processes nodes level by level?', 'Level-order', 'Inorder', 'Preorder', 'Postorder', 'A', 'Easy', 'Level-order traversal visits nodes by depth.'),

-- Q36
('Data Structures', 'Which data structure is commonly used for level-order traversal?', 'Queue', 'Stack', 'Heap only', 'Array only', 'A', 'Easy', 'A queue maintains the order in which nodes are processed by level.'),

-- Q37
('Data Structures', 'Which data structure is commonly used for iterative DFS?', 'Stack', 'Queue', 'Heap', 'Hash table', 'A', 'Easy', 'DFS explores deeply and naturally uses a stack.'),

-- Q38
('Data Structures', 'Which data structure is commonly used for BFS?', 'Queue', 'Stack', 'Heap', 'Linked list only', 'A', 'Easy', 'BFS processes nodes in breadth-first order using a queue.'),

-- Q39
('Data Structures', 'What does BFS stand for?', 'Breadth-First Search', 'Binary File Search', 'Basic Function System', 'Branch File Structure', 'A', 'Easy', 'BFS explores graph/tree nodes level by level.'),

-- Q40
('Data Structures', 'What does DFS stand for?', 'Depth-First Search', 'Data File Search', 'Direct Function System', 'Dynamic File Structure', 'A', 'Easy', 'DFS explores as far as possible along a branch before backtracking.'),

-- Q41
('Data Structures', 'What is a graph vertex?', 'A node in a graph', 'A tree root only', 'An array index', 'A stack element only', 'A', 'Easy', 'Vertices are the entities represented in a graph.'),

-- Q42
('Data Structures', 'What is a graph edge?', 'Connection between vertices', 'Root node', 'Array index', 'Stack pointer', 'A', 'Easy', 'Edges represent relationships between vertices.'),

-- Q43
('Data Structures', 'What is a directed graph?', 'Graph whose edges have direction', 'Graph without vertices', 'Graph with no edges', 'Graph with only one node', 'A', 'Easy', 'Directed edges go from a source vertex to a destination vertex.'),

-- Q44
('Data Structures', 'What is an undirected graph?', 'Graph whose edges have no direction', 'Graph with directed edges only', 'Graph without nodes', 'Tree only', 'A', 'Easy', 'An undirected edge represents a two-way relationship.'),

-- Q45
('Data Structures', 'What is a weighted graph?', 'Graph whose edges or vertices have associated weights', 'Graph with no edges', 'Tree with no root', 'Queue with priorities', 'A', 'Easy', 'Weights can represent distance, cost, time, or other values.'),

-- Q46
('Data Structures', 'What is an adjacency matrix?', 'Matrix representing graph connections', 'Tree structure', 'Linked list', 'Stack implementation only', 'A', 'Easy', 'An adjacency matrix uses rows and columns to represent vertex relationships.'),

-- Q47
('Data Structures', 'What is an adjacency list?', 'Each vertex stores a list of neighboring vertices', 'Matrix of values only', 'Stack of nodes', 'Tree of arrays', 'A', 'Easy', 'Adjacency lists efficiently represent neighboring relationships.'),

-- Q48
('Data Structures', 'Which graph representation is often space-efficient for sparse graphs?', 'Adjacency list', 'Adjacency matrix', 'Full matrix only', 'Two-dimensional array always', 'A', 'Easy', 'Adjacency lists store only existing edges.'),

-- Q49
('Data Structures', 'What is a sparse graph?', 'Graph with relatively few edges', 'Graph with maximum possible edges', 'Graph without vertices', 'Complete graph only', 'A', 'Easy', 'Sparse graphs have comparatively few edges.'),

-- Q50
('Data Structures', 'What is a dense graph?', 'Graph with relatively many edges', 'Graph with no edges', 'Graph with one vertex', 'Graph with no paths', 'A', 'Easy', 'Dense graphs contain many edges relative to the number of possible edges.'),

-- Q51
('Data Structures', 'What is the index of the first element in a typical zero-based array?', '0', '1', '-1', '2', 'A', 'Medium', 'Zero-based indexing starts at index 0.'),

-- Q52
('Data Structures', 'What is the main advantage of arrays?', 'Fast indexed access', 'Automatic unlimited growth', 'No memory allocation', 'No indexing', 'A', 'Medium', 'Array elements can typically be accessed directly using their index.'),

-- Q53
('Data Structures', 'What is the typical time complexity of accessing an array element by index?', 'O(1)', 'O(n)', 'O(log n)', 'O(n²)', 'A', 'Medium', 'Direct indexing generally takes constant time.'),

-- Q54
('Data Structures', 'Inserting an element at the beginning of an array may require:', 'Shifting elements', 'No operation', 'Tree traversal', 'Hashing', 'A', 'Medium', 'Existing elements may need to be shifted to make room.'),

-- Q55
('Data Structures', 'What is the typical complexity of inserting at the beginning of an array?', 'O(n)', 'O(1) always', 'O(log n)', 'O(n²) always', 'A', 'Medium', 'Shifting existing elements can require linear time.'),

-- Q56
('Data Structures', 'What is the typical complexity of searching an unsorted array?', 'O(n)', 'O(1) always', 'O(log n)', 'O(n²)', 'A', 'Medium', 'In the worst case, every element may need to be checked.'),

-- Q57
('Data Structures', 'What is a dynamic array?', 'Array-like structure that can resize', 'Fixed-size array only', 'Linked list only', 'Graph structure', 'A', 'Medium', 'Dynamic arrays automatically grow or shrink as needed.'),

-- Q58
('Data Structures', 'When a dynamic array grows, it may:', 'Allocate a larger block and copy elements', 'Delete all elements permanently', 'Convert into a tree', 'Stop accepting data', 'A', 'Medium', 'Resizing often requires allocating new storage and moving elements.'),

-- Q59
('Data Structures', 'What is amortized analysis?', 'Analysis of average cost over a sequence of operations', 'Worst-case analysis of one operation only', 'Memory-only analysis', 'Syntax analysis', 'A', 'Medium', 'Amortized analysis spreads occasional expensive operations over many cheap ones.'),

-- Q60
('Data Structures', 'What is a linked-list advantage?', 'Easy insertion/deletion when a node position is known', 'Constant-time random access', 'No extra references', 'Always contiguous storage', 'A', 'Medium', 'Link changes can insert or delete nodes efficiently.'),

-- Q61
('Data Structures', 'What is the typical time to access the nth element of a singly linked list?', 'O(n)', 'O(1)', 'O(log n)', 'O(n²)', 'A', 'Medium', 'The list generally must be traversed from the head.'),

-- Q62
('Data Structures', 'What is a sentinel node?', 'Special node used to simplify boundary conditions', 'Root node only', 'Last node only', 'Random node', 'A', 'Medium', 'Sentinel nodes can reduce special-case logic during list operations.'),

-- Q63
('Data Structures', 'What does a null link in a singly linked list usually indicate?', 'End of the list', 'Beginning of the list', 'Root node', 'Middle node', 'A', 'Medium', 'The final node commonly points to null.'),

-- Q64
('Data Structures', 'What is a circular linked list?', 'A list where the final node links back to the first', 'A list with no links', 'A list stored only in arrays', 'A sorted list', 'A', 'Medium', 'Circular lists form a cycle.'),

-- Q65
('Data Structures', 'What is a doubly linked list?', 'List with next and previous links', 'List with no links', 'Array with two indexes', 'Tree with two roots', 'A', 'Medium', 'Each node generally points both forward and backward.'),

-- Q66
('Data Structures', 'Which operation is generally O(1) when inserting after a known linked-list node?', 'Insertion', 'Searching', 'Sorting', 'Random access', 'A', 'Medium', 'Only a few links need to be updated.'),

-- Q67
('Data Structures', 'What is stack overflow?', 'Attempt to push onto a full/fixed-capacity stack', 'Removing from an empty stack', 'Searching a stack', 'Sorting a stack', 'A', 'Medium', 'Overflow occurs when a stack has no available capacity.'),

-- Q68
('Data Structures', 'What is stack underflow?', 'Attempt to pop from an empty stack', 'Pushing into a full stack', 'Sorting the stack', 'Searching the stack', 'A', 'Medium', 'Underflow occurs when removal is attempted without an available element.'),

-- Q69
('Data Structures', 'What operation reads the top stack element without removing it?', 'Peek', 'Pop', 'Push', 'Enqueue', 'A', 'Medium', 'Peek inspects the top without changing the stack.'),

-- Q70
('Data Structures', 'Which structure is commonly used to implement function-call management?', 'Stack', 'Queue', 'Graph', 'Heap', 'A', 'Medium', 'Function calls and local execution contexts are managed using call stacks.'),

-- Q71
('Data Structures', 'Which structure is useful for undo functionality?', 'Stack', 'Queue', 'Graph', 'Tree', 'A', 'Medium', 'The most recent action is typically undone first, matching LIFO behavior.'),

-- Q72
('Data Structures', 'Which structure is commonly used in printer job scheduling?', 'Queue', 'Stack', 'Tree only', 'Graph', 'A', 'Medium', 'Jobs can be processed in arrival order using a queue.'),

-- Q73
('Data Structures', 'What is a circular queue?', 'Queue where the end wraps around to the beginning', 'Queue with no front', 'Queue with no rear', 'Stack with two tops', 'A', 'Medium', 'Circular queues reuse storage by wrapping indexes around.'),

-- Q74
('Data Structures', 'What is a deque?', 'Double-ended queue', 'Dynamic tree', 'Directed graph', 'Double stack', 'A', 'Medium', 'A deque allows insertion and deletion at both ends.'),

-- Q75
('Data Structures', 'What is a priority queue?', 'Queue where elements are served according to priority', 'Queue based strictly on arrival order', 'Stack with priorities', 'Linked list without nodes', 'A', 'Medium', 'Highest- or lowest-priority elements are served according to the chosen priority rule.'),

-- Q76
('Data Structures', 'Which structure is commonly used to implement a priority queue efficiently?', 'Heap', 'Stack', 'Simple array only', 'Graph', 'A', 'Medium', 'Binary heaps provide efficient priority insertion and removal.'),

-- Q77
('Data Structures', 'What is a min-heap?', 'Heap where the minimum element is at the root', 'Heap where maximum is always root', 'Sorted array', 'Binary search tree', 'A', 'Medium', 'A min-heap maintains the smallest key at the root.'),

-- Q78
('Data Structures', 'What is a max-heap?', 'Heap where the maximum element is at the root', 'Heap where minimum is root', 'Linked list', 'Queue only', 'A', 'Medium', 'A max-heap maintains the largest key at the root.'),

-- Q79
('Data Structures', 'Is a heap necessarily a binary search tree?', 'No', 'Yes, always', 'Only for strings', 'Only for graphs', 'A', 'Medium', 'Heap ordering differs from BST ordering.'),

-- Q80
('Data Structures', 'A binary heap is commonly represented using:', 'Array', 'Graph edge list only', 'Stack only', 'Hash table only', 'A', 'Medium', 'Complete binary trees can be efficiently stored in arrays.'),

-- Q81
('Data Structures', 'In a zero-based heap array, the left child of index i is commonly:', '2i + 1', '2i', 'i + 1', 'i / 2', 'A', 'Medium', 'This is the standard zero-based binary heap indexing formula.'),

-- Q82
('Data Structures', 'In a zero-based heap array, the right child of index i is:', '2i + 2', '2i + 1', 'i + 2', 'i / 2', 'A', 'Medium', 'Right child index is 2i + 2.'),

-- Q83
('Data Structures', 'In a zero-based heap array, the parent of node i > 0 is:', '(i - 1) / 2', '2i + 1', 'i + 1', 'i / 2 + 1', 'A', 'Medium', 'Integer division gives the parent index.'),

-- Q84
('Data Structures', 'What is heapify?', 'Process of restoring heap property', 'Creating a linked list', 'Searching a graph', 'Sorting strings only', 'A', 'Medium', 'Heapify rearranges elements to satisfy heap ordering.'),

-- Q85
('Data Structures', 'What is the typical complexity of inserting into a binary heap?', 'O(log n)', 'O(1) always', 'O(n²)', 'O(n) always', 'A', 'Medium', 'An inserted element may move up the heap height.'),

-- Q86
('Data Structures', 'What is the typical complexity of removing the root from a binary heap?', 'O(log n)', 'O(1) always', 'O(n²)', 'O(n) always', 'A', 'Medium', 'Restoring heap order may require moving an element down the heap.'),

-- Q87
('Data Structures', 'What is the typical complexity of reading the root of a heap?', 'O(1)', 'O(n)', 'O(log n)', 'O(n²)', 'A', 'Medium', 'The root is stored at a known location.'),

-- Q88
('Data Structures', 'What is a queue''s front?', 'Position from which elements are removed', 'Position where elements are always inserted', 'Last node', 'Root node', 'A', 'Medium', 'Dequeue typically removes from the front.'),

-- Q89
('Data Structures', 'What is a queue''s rear?', 'Position where elements are inserted', 'Position where elements are removed', 'Root', 'Top', 'A', 'Medium', 'Enqueue typically adds at the rear.'),

-- Q90
('Data Structures', 'Which structure can efficiently support both stack and queue behavior?', 'Deque', 'Binary tree', 'Heap only', 'Graph', 'A', 'Medium', 'A deque supports insertion and deletion at both ends.'),

-- Q91
('Data Structures', 'What is a stack implemented using a linked list?', 'Stack where nodes are connected dynamically', 'Queue only', 'Tree', 'Graph', 'A', 'Medium', 'A linked list can provide dynamic storage for stack elements.'),

-- Q92
('Data Structures', 'Which end is usually used for stack insertion and deletion?', 'Top', 'Bottom', 'Middle', 'Front only', 'A', 'Medium', 'Stack operations are performed at the top.'),

-- Q93
('Data Structures', 'What is a queue implemented using a linked list?', 'Linked nodes with front and rear references', 'Binary tree', 'Heap', 'Hash table', 'A', 'Medium', 'Front and rear pointers allow efficient queue operations.'),

-- Q94
('Data Structures', 'Why maintain a rear pointer in a linked queue?', 'To enqueue efficiently', 'To sort automatically', 'To search faster', 'To remove the front', 'A', 'Medium', 'A rear pointer avoids traversing the entire list during insertion.'),

-- Q95
('Data Structures', 'What happens to the front pointer after dequeuing the first node?', 'It moves to the next node', 'It becomes the rear', 'It moves backward', 'It becomes the root', 'A', 'Medium', 'The next node becomes the new front.'),

-- Q96
('Data Structures', 'What is a priority in a priority queue?', 'Value determining service order', 'Index only', 'Memory address', 'Node height', 'A', 'Medium', 'Priority determines which item should be processed next.'),

-- Q97
('Data Structures', 'What is FIFO appropriate for?', 'Processing requests in arrival order', 'Undo operations', 'Recursive calls', 'Depth-first traversal', 'A', 'Medium', 'FIFO naturally preserves arrival order.'),

-- Q98
('Data Structures', 'What is LIFO appropriate for?', 'Undoing recent operations', 'Serving customers strictly by arrival', 'Level-order traversal', 'Printer queues', 'A', 'Medium', 'The most recent operation is usually undone first.'),

-- Q99
('Data Structures', 'Which structure is useful for matching parentheses?', 'Stack', 'Queue', 'Heap', 'Graph', 'A', 'Medium', 'Opening delimiters can be pushed and matched when closing delimiters appear.'),

-- Q100
('Data Structures', 'Which structure is suitable for breadth-first processing?', 'Queue', 'Stack', 'Heap', 'Hash table', 'A', 'Medium', 'Queue ordering supports breadth-first exploration.'),

-- Q101
('Data Structures', 'What is a full binary tree?', 'Every node has either 0 or 2 children', 'Every node has exactly 2 children', 'Every node has 1 child', 'Tree with no leaves', 'A', 'Medium', 'A full binary tree does not have nodes with exactly one child.'),

-- Q102
('Data Structures', 'What is a complete binary tree?', 'All levels except possibly the last are full, and the last is filled left to right', 'Every node has two children', 'All leaves are at different levels', 'Tree must be a BST', 'A', 'Medium', 'Completeness describes how nodes fill the tree.'),

-- Q103
('Data Structures', 'What is a perfect binary tree?', 'All internal nodes have two children and all leaves are at the same level', 'Only root has children', 'Tree has one leaf', 'Tree is always unbalanced', 'A', 'Medium', 'Perfect binary trees are completely filled at every level.'),

-- Q104
('Data Structures', 'What is a balanced tree?', 'Tree whose height is kept relatively small', 'Tree with only one node', 'Tree with no leaves', 'Tree with all values equal', 'A', 'Medium', 'Balanced trees maintain controlled height for efficient operations.'),

-- Q105
('Data Structures', 'What is an AVL tree?', 'Self-balancing binary search tree', 'Heap', 'Graph', 'Linked list', 'A', 'Medium', 'AVL trees maintain a balance condition after updates.'),

-- Q106
('Data Structures', 'What is the balance factor in an AVL tree commonly defined as?', 'Height(left subtree) − Height(right subtree)', 'Number of nodes − number of leaves', 'Root − leaf', 'Left node + right node', 'A', 'Medium', 'AVL balance factor compares the heights of the two subtrees.'),

-- Q107
('Data Structures', 'What balance factors are typically allowed in an AVL tree?', '-1, 0, 1', '-3, 0, 3', '0 only', 'Any value', 'A', 'Medium', 'AVL nodes must maintain a balance factor within this range.'),

-- Q108
('Data Structures', 'What is a tree rotation?', 'Local restructuring operation used to restore balance or ordering properties', 'Tree deletion only', 'Graph traversal', 'Array sorting', 'A', 'Medium', 'Rotations rearrange links while preserving relevant ordering.'),

-- Q109
('Data Structures', 'Which rotation fixes a common left-left AVL imbalance?', 'Right rotation', 'Left rotation', 'Double right only', 'No rotation', 'A', 'Medium', 'A right rotation restores balance in the left-left case.'),

-- Q110
('Data Structures', 'Which rotation fixes a common right-right AVL imbalance?', 'Left rotation', 'Right rotation', 'Inorder traversal', 'Heapify', 'A', 'Medium', 'A left rotation addresses right-right imbalance.'),

-- Q111
('Data Structures', 'What is a B-tree?', 'Balanced multiway search tree', 'Binary heap', 'Linked list', 'Graph traversal', 'A', 'Medium', 'B-trees allow multiple keys and children per node.'),

-- Q112
('Data Structures', 'B-trees are commonly useful for:', 'External storage and databases', 'Function recursion only', 'Stack implementation only', 'Image compression only', 'A', 'Medium', 'Their high branching factor reduces disk or storage accesses.'),

-- Q113
('Data Structures', 'What is a trie?', 'Tree used for efficient prefix-based string operations', 'Binary heap', 'Queue', 'Graph matrix', 'A', 'Medium', 'Tries store strings character by character along paths.'),

-- Q114
('Data Structures', 'A trie is especially useful for:', 'Autocomplete and prefix searching', 'Numeric sorting only', 'Stack operations', 'Queue operations', 'A', 'Medium', 'Prefixes correspond naturally to paths in a trie.'),

-- Q115
('Data Structures', 'What is a spanning tree?', 'Tree connecting all vertices of a connected graph without cycles', 'Any binary tree', 'Heap', 'Linked list', 'A', 'Medium', 'A spanning tree contains all graph vertices with no cycles.'),

-- Q116
('Data Structures', 'How many edges does a tree with n vertices have?', 'n − 1', 'n', 'n + 1', '2n', 'A', 'Medium', 'Every tree with n vertices has exactly n−1 edges.'),

-- Q117
('Data Structures', 'What is a cycle in a graph?', 'Path that returns to its starting vertex', 'A single vertex', 'A tree leaf', 'An array index', 'A', 'Medium', 'A cycle forms a closed path.'),

-- Q118
('Data Structures', 'What is a connected graph?', 'Every pair of vertices has a path between them', 'Graph has no edges', 'Graph has only one vertex', 'Graph must be directed', 'A', 'Medium', 'Connectivity means vertices are reachable from one another in the relevant sense.'),

-- Q119
('Data Structures', 'What is a disconnected graph?', 'Graph containing separate connected components', 'Complete graph', 'Graph with every possible edge', 'Tree only', 'A', 'Medium', 'Some vertices cannot reach others because the graph has multiple components.'),

-- Q120
('Data Structures', 'What is a path in a graph?', 'Sequence of vertices connected by edges', 'Root node', 'Heap property', 'Array index', 'A', 'Medium', 'A path represents movement through connected vertices.'),

-- Q121
('Data Structures', 'What is a simple path?', 'Path without repeated vertices', 'Path with every vertex repeated', 'Empty tree', 'Sorted path', 'A', 'Medium', 'Simple paths do not repeat vertices.'),

-- Q122
('Data Structures', 'What is a graph degree?', 'Number of edges incident to a vertex in an undirected graph', 'Number of trees', 'Number of paths in memory', 'Number of arrays', 'A', 'Medium', 'Degree counts edges connected to a vertex.'),

-- Q123
('Data Structures', 'In a directed graph, what is indegree?', 'Number of incoming edges', 'Number of outgoing edges', 'Total vertices', 'Number of cycles', 'A', 'Medium', 'Indegree counts edges entering a vertex.'),

-- Q124
('Data Structures', 'In a directed graph, what is outdegree?', 'Number of outgoing edges', 'Number of incoming edges', 'Number of roots', 'Number of leaves', 'A', 'Medium', 'Outdegree counts edges leaving a vertex.'),

-- Q125
('Data Structures', 'What is a DAG?', 'Directed Acyclic Graph', 'Data Array Graph', 'Dynamic Array Grid', 'Directed Array Group', 'A', 'Medium', 'A DAG is directed and contains no directed cycles.'),

-- Q126
('Data Structures', 'Which is a common application of DAGs?', 'Task scheduling', 'Circular dependency modeling', 'Stack overflow', 'Array indexing', 'A', 'Medium', 'DAGs can represent tasks with prerequisite relationships.'),

-- Q127
('Data Structures', 'What is topological sorting?', 'Linear ordering of vertices in a DAG respecting directed dependencies', 'Sorting an array alphabetically', 'Sorting a tree by height', 'Heap creation', 'A', 'Medium', 'For every directed edge u→v, u appears before v.'),

-- Q128
('Data Structures', 'Can a graph containing a directed cycle have a topological ordering?', 'No', 'Yes, always', 'Only if weighted', 'Only if undirected', 'A', 'Medium', 'A directed cycle creates contradictory ordering requirements.'),

-- Q129
('Data Structures', 'What is a complete graph?', 'Every pair of distinct vertices has an edge', 'Graph with no edges', 'Graph with one vertex', 'Tree only', 'A', 'Medium', 'Complete graphs contain all possible pairwise connections.'),

-- Q130
('Data Structures', 'What is a bipartite graph?', 'Graph whose vertices can be divided into two sets with edges only between sets', 'Graph with two roots', 'Graph with two edges', 'Graph with exactly two vertices', 'A', 'Medium', 'No edge connects two vertices within the same partition.'),

-- Q131
('Data Structures', 'What is a weighted edge?', 'Edge associated with a numeric value', 'Edge without endpoints', 'Root node', 'Leaf node', 'A', 'Medium', 'The value may represent cost, distance, or another metric.'),

-- Q132
('Data Structures', 'Which algorithm finds shortest paths from one source with nonnegative edge weights?', 'Dijkstra''s algorithm', 'Binary search', 'Merge sort', 'DFS only', 'A', 'Medium', 'Dijkstra''s algorithm assumes nonnegative edge weights.'),

-- Q133
('Data Structures', 'Which algorithm can handle negative edge weights and detect negative cycles?', 'Bellman-Ford', 'Dijkstra', 'Binary search', 'Heap sort', 'A', 'Medium', 'Bellman-Ford supports negative weights and can detect reachable negative cycles.'),

-- Q134
('Data Structures', 'Which algorithm finds a minimum spanning tree using edge selection?', 'Kruskal''s algorithm', 'Binary search', 'BFS', 'DFS', 'A', 'Medium', 'Kruskal repeatedly selects the smallest safe edge.'),

-- Q135
('Data Structures', 'Which algorithm grows a minimum spanning tree from a starting vertex?', 'Prim''s algorithm', 'Merge sort', 'BFS', 'Binary search', 'A', 'Medium', 'Prim expands a growing tree using the cheapest connecting edge.'),

-- Q136
('Data Structures', 'What is a minimum spanning tree?', 'Spanning tree with minimum total edge weight', 'Tree with maximum nodes', 'Shortest path tree always', 'Binary tree', 'A', 'Medium', 'MST minimizes total edge weight while connecting all vertices.'),

-- Q137
('Data Structures', 'Which data structure is useful in Kruskal''s algorithm?', 'Disjoint-set union', 'Stack only', 'Queue only', 'Trie', 'A', 'Medium', 'Union-find efficiently detects whether an edge creates a cycle.'),

-- Q138
('Data Structures', 'What is a disjoint-set data structure?', 'Structure maintaining non-overlapping sets', 'Sorted array', 'Stack', 'Graph matrix', 'A', 'Medium', 'It supports operations such as find and union.'),

-- Q139
('Data Structures', 'What does find do in union-find?', 'Identifies the representative of a set', 'Deletes a set', 'Sorts the set', 'Adds an edge', 'A', 'Medium', 'Find determines which set a particular element belongs to.'),

-- Q140
('Data Structures', 'What does union do in union-find?', 'Combines two sets', 'Searches a graph', 'Removes an element', 'Sorts an array', 'A', 'Medium', 'Union merges two disjoint sets.'),

-- Q141
('Data Structures', 'What is path compression?', 'Union-find optimization that shortens parent paths', 'Graph compression only', 'Array sorting', 'Tree traversal', 'A', 'Medium', 'Path compression makes future find operations faster.'),

-- Q142
('Data Structures', 'What is union by rank/size?', 'Attaching a smaller tree under a larger one', 'Sorting vertices', 'Deleting leaves', 'Reversing a graph', 'A', 'Medium', 'It keeps union-find trees shallow.'),

-- Q143
('Data Structures', 'What is a self-loop?', 'Edge from a vertex to itself', 'Edge between two different vertices', 'Tree root', 'Array cycle', 'A', 'Medium', 'A self-loop starts and ends at the same vertex.'),

-- Q144
('Data Structures', 'What is an isolated vertex?', 'Vertex with no incident edges', 'Vertex with maximum degree', 'Root node', 'Leaf in every graph', 'A', 'Medium', 'An isolated vertex has degree zero.'),

-- Q145
('Data Structures', 'What is graph traversal?', 'Systematically visiting graph vertices', 'Sorting only', 'Deleting vertices only', 'Creating arrays', 'A', 'Medium', 'Traversal algorithms visit vertices according to defined rules.'),

-- Q146
('Data Structures', 'Which traversal is commonly useful for shortest paths in an unweighted graph?', 'BFS', 'DFS', 'Inorder', 'Postorder', 'A', 'Medium', 'BFS discovers vertices in increasing number of edges from the source.'),

-- Q147
('Data Structures', 'Which traversal is often useful for detecting connectivity?', 'BFS or DFS', 'Inorder only', 'Heapify', 'Binary search only', 'A', 'Medium', 'Both BFS and DFS can explore reachable vertices.'),

-- Q148
('Data Structures', 'What is recursion?', 'A function calling itself directly or indirectly', 'A queue operation', 'A sorting method', 'A graph edge', 'A', 'Medium', 'Recursive solutions solve a problem through smaller instances of itself.'),

-- Q149
('Data Structures', 'Which data structure manages recursive function calls?', 'Call stack', 'Queue', 'Heap', 'Graph', 'A', 'Medium', 'Each recursive call adds a stack frame.'),

-- Q150
('Data Structures', 'What can happen with excessively deep recursion?', 'Stack overflow', 'Automatic sorting', 'Queue underflow', 'Hash collision', 'A', 'Medium', 'Too many active recursive calls can exceed available call-stack capacity.'),

-- Q151
('Data Structures', 'What is a hash table?', 'Data structure using hash values for key-based access', 'Binary tree', 'Stack', 'Queue', 'A', 'Hard', 'Hash tables map keys to storage locations using a hash function.'),

-- Q152
('Data Structures', 'What is a hash function?', 'Function that maps a key to a hash value/index', 'Function that sorts a tree', 'Function that reverses a stack', 'Function that creates a queue', 'A', 'Hard', 'Hash functions determine where keys are stored.'),

-- Q153
('Data Structures', 'What is a hash collision?', 'Two different keys map to the same location', 'Two arrays have equal size', 'Two trees have equal height', 'Two queues are empty', 'A', 'Hard', 'A collision occurs when different keys produce the same hash location.'),

-- Q154
('Data Structures', 'Which is a collision-resolution technique?', 'Chaining', 'Recursion', 'Inorder traversal', 'Binary search', 'A', 'Hard', 'Chaining stores multiple colliding entries in a bucket structure.'),

-- Q155
('Data Structures', 'What is open addressing?', 'Collision resolution by finding another slot in the table', 'Using linked lists only', 'Deleting the hash table', 'Using a binary tree', 'A', 'Hard', 'Open addressing keeps entries within the hash table and probes for another position.'),

-- Q156
('Data Structures', 'Which is an open-addressing technique?', 'Linear probing', 'Linked traversal', 'DFS', 'Inorder', 'A', 'Hard', 'Linear probing checks subsequent slots when collisions occur.'),

-- Q157
('Data Structures', 'What is linear probing?', 'Checking consecutive slots for an available position', 'Searching a linked list', 'Traversing a tree', 'Using recursion', 'A', 'Hard', 'Linear probing checks positions sequentially.'),

-- Q158
('Data Structures', 'What is quadratic probing?', 'Using quadratic offsets to find another slot', 'Using a queue', 'Searching a tree', 'Dividing data into nodes', 'A', 'Hard', 'Quadratic probing uses increasing squared offsets.'),

-- Q159
('Data Structures', 'What is load factor in hashing?', 'Ratio of stored entries to table capacity', 'Number of collisions only', 'Number of buckets only', 'Number of keys deleted', 'A', 'Hard', 'Load factor indicates how full the hash table is.'),

-- Q160
('Data Structures', 'Why can a high load factor be problematic?', 'It can increase collisions and lookup cost', 'It guarantees O(1) operations', 'It removes all keys', 'It prevents hashing', 'A', 'Hard', 'More occupied slots can lead to more collisions.'),

-- Q161
('Data Structures', 'What is rehashing?', 'Creating a larger/different hash table and reinserting entries', 'Sorting a linked list', 'Deleting all keys', 'Traversing a tree', 'A', 'Hard', 'Rehashing changes table capacity or hash mapping and redistributes entries.'),

-- Q162
('Data Structures', 'What is the average expected lookup complexity of a well-designed hash table?', 'O(1)', 'O(n²)', 'O(log n) always', 'O(n³)', 'A', 'Hard', 'Good hashing provides expected constant-time lookup.'),

-- Q163
('Data Structures', 'What is the worst-case lookup complexity of a hash table?', 'O(n)', 'O(1)', 'O(log n) always', 'O(n²) always', 'A', 'Hard', 'Poor hashing or many collisions can degrade lookup to linear time.'),

-- Q164
('Data Structures', 'What is a priority queue''s main characteristic?', 'Removal based on priority', 'Strict LIFO', 'Strict FIFO only', 'Random removal', 'A', 'Hard', 'The highest- or lowest-priority element is selected according to the queue''s rule.'),

-- Q165
('Data Structures', 'What is a segment tree?', 'Tree structure supporting range queries and updates', 'Stack', 'Hash table', 'Linked list', 'A', 'Hard', 'Segment trees efficiently handle many range-based operations.'),

-- Q166
('Data Structures', 'Segment trees are useful for:', 'Range sum/minimum/maximum queries', 'Function calls only', 'Hash collisions only', 'Queue operations only', 'A', 'Hard', 'They divide an array into segments for efficient range queries.'),

-- Q167
('Data Structures', 'What is a Fenwick tree also called?', 'Binary Indexed Tree', 'Binary Search Tree', 'AVL Tree', 'B-tree', 'A', 'Hard', 'Fenwick trees efficiently support prefix-based aggregate operations.'),

-- Q168
('Data Structures', 'A Fenwick tree is commonly used for:', 'Prefix sums and updates', 'Graph traversal', 'Stack operations', 'String parsing only', 'A', 'Hard', 'It supports updates and prefix queries efficiently.'),

-- Q169
('Data Structures', 'What is a sparse table commonly used for?', 'Static range queries', 'Dynamic graph traversal', 'Queue implementation', 'Hashing', 'A', 'Hard', 'Sparse tables are effective for immutable or rarely changing data.'),

-- Q170
('Data Structures', 'What is a disjoint-set forest?', 'Union-find represented using parent pointers', 'Binary heap', 'Queue', 'Trie', 'A', 'Hard', 'Each set is represented as a forest of parent-pointer trees.'),

-- Q171
('Data Structures', 'What is a cache?', 'Fast storage for frequently accessed data', 'A graph algorithm', 'A tree traversal', 'A sorting method', 'A', 'Hard', 'Caches reduce access time by keeping useful data in faster storage.'),

-- Q172
('Data Structures', 'Which data structure is commonly used for an LRU cache?', 'Hash map + doubly linked list', 'Stack only', 'Queue only', 'Binary tree only', 'A', 'Hard', 'The hash map gives fast lookup while the list maintains usage order.'),

-- Q173
('Data Structures', 'What does LRU stand for?', 'Least Recently Used', 'Last Random Update', 'Linear Record Unit', 'Lowest Runtime Usage', 'A', 'Hard', 'LRU removes the item that has not been used for the longest time.'),

-- Q174
('Data Structures', 'What does LFU stand for?', 'Least Frequently Used', 'Last File Update', 'Linear Function Unit', 'Lowest Frequency Utility', 'A', 'Hard', 'LFU prioritizes removal of items with the fewest accesses.'),

-- Q175
('Data Structures', 'What is a memory-efficient representation for sparse matrices?', 'Store only non-zero elements', 'Store every zero', 'Use a full matrix always', 'Use a stack only', 'A', 'Hard', 'Sparse representations avoid wasting storage on zero values.'),

-- Q176
('Data Structures', 'What is a sparse matrix?', 'Matrix containing mostly zero or default values', 'Matrix containing only ones', 'Matrix with no rows', 'Matrix with equal rows and columns only', 'A', 'Hard', 'Sparse matrices have relatively few non-zero entries.'),

-- Q177
('Data Structures', 'What is a dense matrix?', 'Matrix with many non-zero entries', 'Matrix containing only zeros', 'Matrix with no values', 'Matrix with one row only', 'A', 'Hard', 'Dense matrices contain a relatively high proportion of meaningful entries.'),

-- Q178
('Data Structures', 'What is a multiset?', 'Collection allowing duplicate values', 'Collection allowing only unique values', 'Tree with multiple roots', 'Graph with multiple edges only', 'A', 'Hard', 'Multisets permit repeated elements.'),

-- Q179
('Data Structures', 'What is a set data structure?', 'Collection designed to store unique elements', 'Collection allowing unlimited duplicates by definition', 'Queue only', 'Stack only', 'A', 'Hard', 'Sets typically enforce uniqueness.'),

-- Q180
('Data Structures', 'What is a map/dictionary?', 'Structure storing key-value associations', 'Stack of values', 'Graph without edges', 'Tree traversal', 'A', 'Hard', 'Maps associate keys with corresponding values.'),

-- Q181
('Data Structures', 'Which structure is typically used to implement a dictionary efficiently?', 'Hash table', 'Stack', 'Queue', 'Binary heap only', 'A', 'Hard', 'Hash tables provide expected constant-time key lookup.'),

-- Q182
('Data Structures', 'What is Big O notation used for?', 'Describing growth of algorithm resource usage', 'Naming variables', 'Defining classes', 'Storing data', 'A', 'Hard', 'Big O describes asymptotic upper-bound growth.'),

-- Q183
('Data Structures', 'Which complexity is generally better for large input sizes?', 'O(log n)', 'O(n²)', 'O(n³)', 'O(2ⁿ)', 'A', 'Hard', 'Logarithmic growth is much slower than polynomial or exponential growth.'),

-- Q184
('Data Structures', 'Which complexity represents constant time?', 'O(1)', 'O(n)', 'O(log n)', 'O(n²)', 'A', 'Hard', 'O(1) does not depend on input size asymptotically.'),

-- Q185
('Data Structures', 'Which complexity represents linear growth?', 'O(n)', 'O(1)', 'O(log n)', 'O(n²)', 'A', 'Hard', 'Linear algorithms grow proportionally with input size.'),

-- Q186
('Data Structures', 'Which complexity is associated with binary search?', 'O(log n)', 'O(n²)', 'O(n) always', 'O(2ⁿ)', 'A', 'Hard', 'Binary search halves the search space each step.'),

-- Q187
('Data Structures', 'Which data structure supports binary search efficiently when properly ordered?', 'Sorted array', 'Unsorted linked list', 'Stack', 'Queue', 'A', 'Hard', 'Binary search requires an ordered searchable sequence.'),

-- Q188
('Data Structures', 'What is space complexity?', 'Amount of additional memory used as input grows', 'Number of CPU instructions only', 'Number of classes', 'Number of loops', 'A', 'Hard', 'Space complexity measures memory requirements.'),

-- Q189
('Data Structures', 'What is time complexity?', 'How running time grows with input size', 'Amount of RAM only', 'Number of variables', 'Number of classes', 'A', 'Hard', 'Time complexity describes the growth of computational work.'),

-- Q190
('Data Structures', 'What is an in-place algorithm?', 'Algorithm using very little additional memory', 'Algorithm using a second database', 'Algorithm requiring recursion always', 'Algorithm using a graph', 'A', 'Hard', 'In-place algorithms modify data with limited auxiliary storage.'),

-- Q191
('Data Structures', 'What is stable ordering in sorting?', 'Equal-key elements retain their relative order', 'Elements never move', 'Only unique elements are sorted', 'Sorting takes O(1)', 'A', 'Hard', 'Stability preserves the original relative order of equal elements.'),

-- Q192
('Data Structures', 'Which data structure is suitable for implementing a browser''s back button?', 'Stack', 'Queue', 'Heap', 'Graph', 'A', 'Hard', 'The most recently visited page is returned to first.'),

-- Q193
('Data Structures', 'Which structure is suitable for representing a family hierarchy?', 'Tree', 'Queue', 'Stack', 'Hash table', 'A', 'Hard', 'Parent-child relationships naturally form a tree.'),

-- Q194
('Data Structures', 'Which structure is suitable for representing airline routes between cities?', 'Graph', 'Stack', 'Queue', 'Array only', 'A', 'Hard', 'Cities can be vertices and routes can be edges.'),

-- Q195
('Data Structures', 'Which structure is suitable for storing unique usernames with fast lookup?', 'Hash set', 'Stack', 'Queue', 'Linked list only', 'A', 'Hard', 'A hash set supports expected constant-time membership checks.'),

-- Q196
('Data Structures', 'Which structure is suitable for maintaining tasks by priority?', 'Priority queue', 'Stack', 'Simple FIFO queue', 'Linked list only', 'A', 'Hard', 'Priority queues process tasks according to priority.'),

-- Q197
('Data Structures', 'Which structure is useful for autocomplete?', 'Trie', 'Stack', 'Queue', 'Heap only', 'A', 'Hard', 'Tries efficiently represent shared prefixes.'),

-- Q198
('Data Structures', 'Which data structure is commonly used for efficient minimum/maximum priority operations?', 'Heap', 'Stack', 'Queue', 'Linked list', 'A', 'Hard', 'Heaps provide efficient access to the minimum or maximum root.'),

-- Q199
('Data Structures', 'Which factor should influence the choice of a data structure?', 'Required operations and their performance needs', 'Variable name length only', 'Programming font', 'File extension only', 'A', 'Hard', 'Data structures should be selected based on operations, constraints, and performance requirements.'),

-- Q200
('Data Structures', 'What is the primary goal of choosing an appropriate data structure?', 'Efficient storage and manipulation of data', 'Increasing code length', 'Avoiding all algorithms', 'Making programs larger', 'A', 'Hard', 'The right data structure can significantly improve efficiency, clarity, and scalability.');

-- Verification 1
SELECT COUNT(*) AS data_structures_questions
FROM questions
WHERE skill = 'Data Structures';

-- Verification 2
SELECT COUNT(DISTINCT question) AS unique_data_structures_questions
FROM questions
WHERE skill = 'Data Structures';

-- Verification 3
SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
