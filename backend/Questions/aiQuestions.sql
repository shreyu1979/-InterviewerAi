USE ai_interviewer;

-- Artificial Intelligence 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Artificial Intelligence';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Artificial Intelligence', 'What does AI stand for?', 'Artificial Intelligence', 'Automated Internet', 'Advanced Information', 'Artificial Integration', 'A', 'Easy', 'AI refers to systems designed to perform tasks that normally require human intelligence.'),

-- Q2
('Artificial Intelligence', 'Artificial Intelligence is primarily concerned with:', 'Creating systems capable of intelligent behavior', 'Designing only websites', 'Managing databases only', 'Creating computer hardware only', 'A', 'Easy', 'AI aims to enable computers to reason, learn, perceive, and make decisions.'),

-- Q3
('Artificial Intelligence', 'Which is an example of AI?', 'Voice assistant', 'Calculator performing basic arithmetic only', 'USB cable', 'Keyboard', 'A', 'Easy', 'Voice assistants use AI techniques such as speech recognition and language processing.'),

-- Q4
('Artificial Intelligence', 'Which field is a major component of AI?', 'Machine Learning', 'HTML', 'CSS', 'File management', 'A', 'Easy', 'Machine Learning allows systems to learn patterns from data.'),

-- Q5
('Artificial Intelligence', 'Which is another major AI field?', 'Natural Language Processing', 'Word processing only', 'Spreadsheet formatting', 'Computer assembly', 'A', 'Easy', 'NLP enables computers to process and understand human language.'),

-- Q6
('Artificial Intelligence', 'Computer vision deals mainly with:', 'Understanding images and videos', 'Database queries', 'Network cables', 'Operating-system installation', 'A', 'Easy', 'Computer vision enables machines to interpret visual information.'),

-- Q7
('Artificial Intelligence', 'Robotics combines AI with:', 'Physical machines and control systems', 'HTML only', 'SQL only', 'Text formatting', 'A', 'Easy', 'AI can provide robots with perception, planning, and decision-making capabilities.'),

-- Q8
('Artificial Intelligence', 'What is an intelligent agent?', 'System that perceives its environment and takes actions', 'A database table', 'A programming language', 'A computer monitor', 'A', 'Easy', 'An intelligent agent observes its environment and acts to achieve goals.'),

-- Q9
('Artificial Intelligence', 'What does an agent''s sensor do?', 'Perceives the environment', 'Executes database queries', 'Stores source code', 'Creates web pages', 'A', 'Easy', 'Sensors provide information about the environment.'),

-- Q10
('Artificial Intelligence', 'What does an agent''s actuator do?', 'Performs actions in the environment', 'Stores training data', 'Calculates statistics only', 'Creates labels', 'A', 'Easy', 'Actuators allow an agent to affect its environment.'),

-- Q11
('Artificial Intelligence', 'What is a rational agent?', 'Agent that chooses actions expected to achieve the best outcome according to its objective', 'Agent that always makes random choices', 'Agent with no sensors', 'Agent with no goals', 'A', 'Easy', 'Rationality means selecting actions based on available information and the performance objective.'),

-- Q12
('Artificial Intelligence', 'What is an environment in AI?', 'External world in which an agent operates', 'Programming editor', 'Database schema', 'Operating system only', 'A', 'Easy', 'The environment provides observations and responds to agent actions.'),

-- Q13
('Artificial Intelligence', 'What is a goal in AI?', 'Desired state or outcome', 'Input device', 'Database record', 'Source-code file', 'A', 'Easy', 'Goals specify what the intelligent system is trying to accomplish.'),

-- Q14
('Artificial Intelligence', 'What is problem-solving in AI?', 'Finding actions that lead from an initial state to a goal state', 'Formatting text', 'Installing software', 'Creating tables only', 'A', 'Easy', 'AI problem-solving often involves searching through possible states and actions.'),

-- Q15
('Artificial Intelligence', 'What is a state in AI search?', 'Representation of a situation at a particular point', 'Programming language', 'Database password', 'Hardware component', 'A', 'Easy', 'A state describes the relevant condition of a problem at a given time.'),

-- Q16
('Artificial Intelligence', 'What is the initial state?', 'Starting condition of a problem', 'Final solution', 'Best possible state', 'Random state', 'A', 'Easy', 'Search begins from the initial state.'),

-- Q17
('Artificial Intelligence', 'What is a goal state?', 'State satisfying the desired objective', 'Starting state only', 'Invalid state', 'Random state', 'A', 'Easy', 'Reaching a goal state means the problem objective has been achieved.'),

-- Q18
('Artificial Intelligence', 'What is a state space?', 'Set of possible states of a problem', 'Computer memory', 'Database storage', 'Internet space', 'A', 'Easy', 'State space contains the possible configurations that can be explored.'),

-- Q19
('Artificial Intelligence', 'What is a search algorithm?', 'Algorithm that explores possible states to find a solution', 'Algorithm for formatting documents', 'Database backup method', 'Image compression technique', 'A', 'Easy', 'Search algorithms explore alternatives to find paths toward goals.'),

-- Q20
('Artificial Intelligence', 'Which is an uninformed search algorithm?', 'Breadth-First Search', 'A* Search', 'Greedy Best-First Search', 'Heuristic Search', 'A', 'Easy', 'BFS does not use problem-specific heuristic information.'),

-- Q21
('Artificial Intelligence', 'BFS stands for:', 'Breadth-First Search', 'Binary File Search', 'Best Function Search', 'Basic Forward System', 'A', 'Easy', 'BFS explores nodes level by level.'),

-- Q22
('Artificial Intelligence', 'DFS stands for:', 'Depth-First Search', 'Data Function Search', 'Direct File System', 'Dynamic Forward Search', 'A', 'Easy', 'DFS explores one branch deeply before backtracking.'),

-- Q23
('Artificial Intelligence', 'BFS typically uses:', 'Queue', 'Stack only', 'Hash table only', 'Database', 'A', 'Easy', 'A queue supports BFS''s level-by-level exploration.'),

-- Q24
('Artificial Intelligence', 'DFS is commonly implemented using:', 'Stack or recursion', 'Queue only', 'Database', 'Sorting array only', 'A', 'Easy', 'DFS follows a last-in-first-out exploration pattern.'),

-- Q25
('Artificial Intelligence', 'Which search method uses a heuristic?', 'Greedy Best-First Search', 'Basic BFS', 'Basic DFS', 'Linear Search', 'A', 'Easy', 'Greedy Best-First Search uses a heuristic estimate to choose which node to explore.'),

-- Q26
('Artificial Intelligence', 'What is a heuristic?', 'Estimate of remaining cost or distance to a goal', 'Exact database value', 'Programming syntax', 'Hardware specification', 'A', 'Easy', 'Heuristics guide search toward promising states.'),

-- Q27
('Artificial Intelligence', 'A* search uses:', 'Actual cost plus estimated remaining cost', 'Only depth', 'Only random values', 'Only number of nodes', 'A', 'Easy', 'A* commonly evaluates nodes using f(n)=g(n)+h(n).'),

-- Q28
('Artificial Intelligence', 'In A*, g(n) represents:', 'Cost from the start to node n', 'Estimated cost to goal', 'Number of goals', 'Search depth only', 'A', 'Easy', 'g(n) is the path cost accumulated so far.'),

-- Q29
('Artificial Intelligence', 'In A*, h(n) represents:', 'Estimated cost from node n to the goal', 'Actual starting cost', 'Number of nodes', 'Memory size', 'A', 'Easy', 'h(n) is the heuristic estimate.'),

-- Q30
('Artificial Intelligence', 'A heuristic is admissible if it:', 'Never overestimates the true remaining cost', 'Always overestimates', 'Is always zero', 'Is always random', 'A', 'Easy', 'An admissible heuristic does not overestimate the actual minimum remaining cost.'),

-- Q31
('Artificial Intelligence', 'What is knowledge representation?', 'Representing information so an AI system can reason with it', 'Saving files only', 'Designing websites', 'Compressing images', 'A', 'Easy', 'Knowledge representation organizes facts and relationships for computational reasoning.'),

-- Q32
('Artificial Intelligence', 'Which is a knowledge representation method?', 'Semantic network', 'CSS stylesheet', 'Spreadsheet formatting', 'Image resizing', 'A', 'Easy', 'Semantic networks represent concepts and relationships as connected structures.'),

-- Q33
('Artificial Intelligence', 'What is a knowledge base?', 'Collection of facts and rules used by an AI system', 'Computer keyboard', 'Image folder', 'Source-code editor', 'A', 'Easy', 'A knowledge base stores information used for inference and decision-making.'),

-- Q34
('Artificial Intelligence', 'What is inference?', 'Deriving conclusions from available knowledge', 'Entering data manually', 'Formatting documents', 'Installing programs', 'A', 'Easy', 'Inference applies rules or reasoning to obtain new conclusions.'),

-- Q35
('Artificial Intelligence', 'What is a rule-based system?', 'System that uses predefined rules to make decisions', 'System without logic', 'Database-only system', 'Image editor', 'A', 'Easy', 'Rule-based AI commonly uses IF-THEN rules.'),

-- Q36
('Artificial Intelligence', 'Which is an example of a rule?', 'IF temperature is high THEN activate cooling', 'HTML is a language', 'Database has rows', 'Image has pixels', 'A', 'Easy', 'The statement represents an IF-THEN decision rule.'),

-- Q37
('Artificial Intelligence', 'What is an expert system?', 'AI system designed to provide expertise in a specific domain', 'General-purpose database', 'Operating system', 'Compiler', 'A', 'Easy', 'Expert systems emulate aspects of human expert decision-making.'),

-- Q38
('Artificial Intelligence', 'An expert system typically contains:', 'Knowledge base and inference engine', 'Only a monitor', 'Only a database table', 'Only an HTML file', 'A', 'Easy', 'The knowledge base stores domain knowledge, while the inference engine reasons over it.'),

-- Q39
('Artificial Intelligence', 'What is the inference engine?', 'Component that applies rules to knowledge', 'Hardware processor only', 'Data-entry screen', 'Image filter', 'A', 'Easy', 'It derives conclusions from facts and rules.'),

-- Q40
('Artificial Intelligence', 'What is uncertainty in AI?', 'Situation where information or outcomes are not completely known', 'Guaranteed prediction', 'Fixed database value', 'Source-code syntax', 'A', 'Easy', 'Real-world AI often has incomplete or uncertain information.'),

-- Q41
('Artificial Intelligence', 'Probability is used in AI to:', 'Represent uncertainty', 'Design HTML pages', 'Store images', 'Compile code', 'A', 'Easy', 'Probability provides a mathematical framework for uncertain events.'),

-- Q42
('Artificial Intelligence', 'What is Bayesian reasoning?', 'Updating beliefs using evidence and probability', 'Sorting numbers', 'Image resizing', 'Database indexing', 'A', 'Easy', 'Bayesian reasoning combines prior beliefs with evidence.'),

-- Q43
('Artificial Intelligence', 'What does NLP stand for?', 'Natural Language Processing', 'Neural Logic Program', 'Network Language Protocol', 'Numerical Learning Process', 'A', 'Easy', 'NLP deals with computational processing of human language.'),

-- Q44
('Artificial Intelligence', 'Which is an NLP application?', 'Machine translation', 'Image resizing', 'Disk formatting', 'Hardware assembly', 'A', 'Easy', 'Machine translation converts text from one language to another.'),

-- Q45
('Artificial Intelligence', 'What is speech recognition?', 'Converting spoken language into text or structured output', 'Converting text into images', 'Sorting files', 'Compressing audio', 'A', 'Easy', 'Speech-recognition systems analyze audio and identify spoken content.'),

-- Q46
('Artificial Intelligence', 'What is computer vision used for?', 'Image and video understanding', 'SQL optimization', 'Web hosting only', 'Spreadsheet calculation', 'A', 'Easy', 'Computer vision extracts useful information from visual data.'),

-- Q47
('Artificial Intelligence', 'What is planning in AI?', 'Finding a sequence of actions to achieve a goal', 'Formatting code', 'Creating a database', 'Resizing images', 'A', 'Easy', 'AI planning determines actions needed to reach desired states.'),

-- Q48
('Artificial Intelligence', 'What is decision-making in AI?', 'Selecting an action based on available information and objectives', 'Randomly choosing an action', 'Storing data only', 'Formatting text', 'A', 'Easy', 'AI systems evaluate possible actions according to goals or utility.'),

-- Q49
('Artificial Intelligence', 'What is optimization?', 'Finding a good or best solution according to an objective', 'Deleting data', 'Creating HTML', 'Converting files', 'A', 'Easy', 'Optimization searches for parameter or decision values that improve an objective.'),

-- Q50
('Artificial Intelligence', 'What is an AI model?', 'Computational representation used to perform an AI task', 'Computer monitor', 'Database password', 'Network cable', 'A', 'Easy', 'AI models encode patterns, rules, or knowledge used for predictions or decisions.'),

-- Q51
('Artificial Intelligence', 'Machine Learning enables systems to:', 'Learn patterns from data', 'Work without algorithms', 'Avoid all data', 'Eliminate computers', 'A', 'Medium', 'ML algorithms learn useful patterns from examples or experience.'),

-- Q52
('Artificial Intelligence', 'Supervised learning requires:', 'Labeled training data', 'No data', 'Only random data', 'Hardware sensors only', 'A', 'Medium', 'Supervised learning learns from input-output examples.'),

-- Q53
('Artificial Intelligence', 'Unsupervised learning generally uses:', 'Unlabeled data', 'Only manually labeled data', 'No data', 'Only test data', 'A', 'Medium', 'Unsupervised methods discover structure without explicit target labels.'),

-- Q54
('Artificial Intelligence', 'Reinforcement learning is based on:', 'Rewards and penalties from interactions', 'SQL queries', 'HTML tags', 'Static rules only', 'A', 'Medium', 'An agent learns actions through feedback from its environment.'),

-- Q55
('Artificial Intelligence', 'In reinforcement learning, the learner is called:', 'Agent', 'Dataset', 'Label', 'Feature', 'A', 'Medium', 'The agent interacts with the environment and chooses actions.'),

-- Q56
('Artificial Intelligence', 'What is a reward?', 'Feedback indicating how desirable an action''s outcome is', 'Dataset size', 'Model parameter', 'Input feature', 'A', 'Medium', 'Rewards guide reinforcement-learning behavior.'),

-- Q57
('Artificial Intelligence', 'What is a policy in reinforcement learning?', 'Strategy for selecting actions', 'Database policy file', 'Training dataset', 'Neural-network layer', 'A', 'Medium', 'A policy maps states or observations to actions.'),

-- Q58
('Artificial Intelligence', 'What is a state in reinforcement learning?', 'Representation of the current situation', 'Reward only', 'Action only', 'Dataset label', 'A', 'Medium', 'The state summarizes information relevant to decision-making.'),

-- Q59
('Artificial Intelligence', 'What is an action?', 'Choice made by the agent', 'Input label', 'Dataset column', 'Loss function', 'A', 'Medium', 'Actions are decisions available to the agent.'),

-- Q60
('Artificial Intelligence', 'What is the exploration-exploitation trade-off?', 'Balancing trying new actions with using known good actions', 'Balancing images and text', 'Balancing training and coding', 'Balancing CPU and disk', 'A', 'Medium', 'Agents need exploration to discover better strategies while exploiting known rewards.'),

-- Q61
('Artificial Intelligence', 'What is Q-learning?', 'Model-free reinforcement-learning algorithm', 'Database query language', 'Image-processing algorithm', 'Sorting algorithm', 'A', 'Medium', 'Q-learning learns action values without requiring a known environment model.'),

-- Q62
('Artificial Intelligence', 'What does Q-value represent?', 'Expected future return for taking an action in a state', 'Number of classes', 'Dataset size', 'Image quality', 'A', 'Medium', 'Q-values estimate the usefulness of state-action choices.'),

-- Q63
('Artificial Intelligence', 'What is a reward function?', 'Function defining feedback for actions or outcomes', 'Function for sorting data', 'Image filter', 'Database key', 'A', 'Medium', 'The reward function defines the immediate feedback signal.'),

-- Q64
('Artificial Intelligence', 'What is a Markov Decision Process?', 'Mathematical framework for sequential decision-making under uncertainty', 'Database system', 'Image format', 'Programming language', 'A', 'Medium', 'MDPs model states, actions, transitions, and rewards.'),

-- Q65
('Artificial Intelligence', 'The Markov property means:', 'Future depends on the current state rather than the complete history, given the current state', 'Future is always random', 'Past is always irrelevant in every problem', 'There are no actions', 'A', 'Medium', 'The current state is assumed to contain sufficient information for predicting future transitions.'),

-- Q66
('Artificial Intelligence', 'What is a transition in reinforcement learning?', 'Change from one state to another after an action', 'Model deployment', 'Data normalization', 'Feature selection', 'A', 'Medium', 'A transition describes the environment''s response to an action.'),

-- Q67
('Artificial Intelligence', 'What is a value function?', 'Estimate of expected future return from a state', 'Database value', 'Image pixel', 'Class label', 'A', 'Medium', 'Value functions estimate long-term usefulness of states.'),

-- Q68
('Artificial Intelligence', 'What is a model-based reinforcement-learning method?', 'Uses or learns a model of environment dynamics', 'Never uses state information', 'Uses only labels', 'Performs only classification', 'A', 'Medium', 'Model-based methods reason about how actions affect future states.'),

-- Q69
('Artificial Intelligence', 'What is planning under uncertainty?', 'Selecting actions when outcomes are not fully predictable', 'Sorting data', 'Removing uncertainty', 'Designing web pages', 'A', 'Medium', 'Real-world decision-making often requires reasoning about uncertain outcomes.'),

-- Q70
('Artificial Intelligence', 'What is a utility function?', 'Function representing preference or desirability of outcomes', 'Database utility', 'Image filter', 'File extension', 'A', 'Medium', 'Utility quantifies how desirable different outcomes are.'),

-- Q71
('Artificial Intelligence', 'What is game AI?', 'AI used to make decisions or behaviors in games', 'Spreadsheet software', 'Database management', 'Web hosting', 'A', 'Medium', 'Game AI can control non-player characters and strategic behavior.'),

-- Q72
('Artificial Intelligence', 'Minimax is commonly used for:', 'Two-player adversarial games', 'Image compression', 'Database indexing', 'Regression', 'A', 'Medium', 'Minimax evaluates moves assuming an opposing player also acts strategically.'),

-- Q73
('Artificial Intelligence', 'What does minimax attempt to do?', 'Maximize the minimum outcome', 'Minimize dataset size', 'Maximize image size', 'Minimize training examples', 'A', 'Medium', 'A maximizing player chooses moves that provide the best worst-case outcome.'),

-- Q74
('Artificial Intelligence', 'Alpha-beta pruning is used with:', 'Minimax search', 'K-means', 'PCA', 'Linear regression', 'A', 'Medium', 'Alpha-beta pruning eliminates branches that cannot affect the final minimax decision.'),

-- Q75
('Artificial Intelligence', 'Alpha-beta pruning can:', 'Reduce the number of game-tree nodes evaluated', 'Change the minimax result', 'Remove the game rules', 'Eliminate all search', 'A', 'Medium', 'With correct implementation, it speeds up minimax without changing its result.'),

-- Q76
('Artificial Intelligence', 'What is constraint satisfaction?', 'Finding assignments satisfying specified constraints', 'Sorting records', 'Image generation', 'Database backup', 'A', 'Medium', 'CSPs define variables, domains, and constraints.'),

-- Q77
('Artificial Intelligence', 'CSP stands for:', 'Constraint Satisfaction Problem', 'Computer Search Program', 'Classification System Process', 'Central Storage Protocol', 'A', 'Medium', 'CSPs are problems where values must satisfy specified constraints.'),

-- Q78
('Artificial Intelligence', 'In a CSP, variables represent:', 'Unknown quantities that need values', 'Only constraints', 'Only outputs', 'Database tables', 'A', 'Medium', 'Variables are assigned values from their domains.'),

-- Q79
('Artificial Intelligence', 'In a CSP, a domain represents:', 'Possible values for a variable', 'Final answer only', 'Database records', 'Search algorithm', 'A', 'Medium', 'A domain defines allowable values for each variable.'),

-- Q80
('Artificial Intelligence', 'What is a constraint?', 'Condition restricting possible assignments', 'Input device', 'Database field only', 'Neural layer', 'A', 'Medium', 'Constraints specify which combinations of values are allowed.'),

-- Q81
('Artificial Intelligence', 'Backtracking search is useful for:', 'Constraint satisfaction problems', 'Image resizing only', 'Database creation only', 'Audio compression', 'A', 'Medium', 'Backtracking systematically explores assignments and reverses choices when constraints are violated.'),

-- Q82
('Artificial Intelligence', 'What is forward checking?', 'Removing inconsistent domain values after an assignment', 'Searching backward only', 'Sorting data', 'Removing constraints', 'A', 'Medium', 'Forward checking detects future conflicts early.'),

-- Q83
('Artificial Intelligence', 'What is arc consistency?', 'A condition ensuring domain values have supporting values under constraints', 'Image consistency', 'Network speed', 'Database consistency only', 'A', 'Medium', 'Arc consistency removes values that cannot participate in a valid assignment.'),

-- Q84
('Artificial Intelligence', 'What is automated planning?', 'Computing action sequences to achieve goals', 'Creating presentations', 'Data cleaning', 'Image processing', 'A', 'Medium', 'Planning algorithms construct sequences of actions under specified conditions.'),

-- Q85
('Artificial Intelligence', 'What is a planning operator?', 'Description of an action, including preconditions and effects', 'Database command', 'Image filter', 'Neural activation', 'A', 'Medium', 'Operators specify when actions can occur and what they change.'),

-- Q86
('Artificial Intelligence', 'What is a precondition?', 'Condition that must hold before an action', 'Result of an action', 'Database output', 'Final goal only', 'A', 'Medium', 'Preconditions determine whether an action is applicable.'),

-- Q87
('Artificial Intelligence', 'What is an effect in planning?', 'State change caused by an action', 'Starting condition only', 'Input feature', 'Search heuristic', 'A', 'Medium', 'Effects describe what becomes true or false after an action.'),

-- Q88
('Artificial Intelligence', 'What is hierarchical planning?', 'Planning at different levels of abstraction', 'Sorting hierarchical data', 'Database indexing', 'Image scaling', 'A', 'Medium', 'High-level tasks can be decomposed into lower-level actions.'),

-- Q89
('Artificial Intelligence', 'What is reasoning?', 'Drawing conclusions from facts and rules', 'Data entry', 'Image compression', 'File copying', 'A', 'Medium', 'Reasoning allows AI systems to derive conclusions or decisions.'),

-- Q90
('Artificial Intelligence', 'Deductive reasoning generally:', 'Derives specific conclusions from general rules', 'Always guesses randomly', 'Uses no premises', 'Only uses images', 'A', 'Medium', 'Deduction applies general principles to specific cases.'),

-- Q91
('Artificial Intelligence', 'Inductive reasoning generally:', 'Generalizes patterns from examples', 'Starts with a guaranteed universal rule only', 'Avoids observations', 'Uses only databases', 'A', 'Medium', 'Induction infers broader patterns from observed examples.'),

-- Q92
('Artificial Intelligence', 'Abductive reasoning seeks:', 'Plausible explanations for observations', 'Only mathematical proofs', 'Random outputs', 'Database schemas', 'A', 'Medium', 'Abduction reasons from observations toward likely explanations.'),

-- Q93
('Artificial Intelligence', 'What is fuzzy logic?', 'Logic that allows degrees of truth', 'Logic with only true/false values', 'Database logic only', 'Random logic', 'A', 'Medium', 'Fuzzy logic represents concepts such as somewhat high rather than only crisp values.'),

-- Q94
('Artificial Intelligence', 'In classical Boolean logic, a proposition is usually:', 'True or false', 'Any percentage', 'Always unknown', 'A continuous number', 'A', 'Medium', 'Classical Boolean logic uses binary truth values.'),

-- Q95
('Artificial Intelligence', 'Fuzzy membership values commonly lie in:', '0 to 1', '-100 to 100', '1 to 1000', 'Any integer only', 'A', 'Medium', 'A fuzzy membership value represents degree of membership from 0 to 1.'),

-- Q96
('Artificial Intelligence', 'What is a fuzzy set?', 'Set where elements can have degrees of membership', 'Set containing only integers', 'Database table', 'Image dataset', 'A', 'Medium', 'Fuzzy sets allow partial membership.'),

-- Q97
('Artificial Intelligence', 'What is a Bayesian network?', 'Probabilistic graphical model using directed relationships', 'Computer network protocol', 'Database network', 'Neural network only', 'A', 'Medium', 'Bayesian networks represent probabilistic dependencies using directed acyclic graphs.'),

-- Q98
('Artificial Intelligence', 'Nodes in a Bayesian network generally represent:', 'Random variables', 'Database passwords', 'Neural weights only', 'Images only', 'A', 'Medium', 'Each node represents a random variable.'),

-- Q99
('Artificial Intelligence', 'Edges in a Bayesian network represent:', 'Conditional dependencies', 'File connections', 'Hardware connections', 'HTML links', 'A', 'Medium', 'Directed edges represent dependency relationships.'),

-- Q100
('Artificial Intelligence', 'What is probabilistic inference?', 'Computing probabilities of unknown variables using known evidence', 'Sorting probabilities', 'Creating web pages', 'Compressing data', 'A', 'Medium', 'Probabilistic inference updates or calculates beliefs based on evidence.'),

-- Q101
('Artificial Intelligence', 'NLP stands for:', 'Natural Language Processing', 'Neural Programming Language', 'Network Processing Layer', 'Natural Program Logic', 'A', 'Medium', 'NLP enables computers to work with human language.'),

-- Q102
('Artificial Intelligence', 'Which task belongs to NLP?', 'Sentiment analysis', 'Image resizing', 'Object detection only', 'Hardware testing', 'A', 'Medium', 'Sentiment analysis determines opinions or emotional polarity in text.'),

-- Q103
('Artificial Intelligence', 'What is sentiment analysis?', 'Determining sentiment expressed in text', 'Detecting image edges', 'Sorting files', 'Translating hardware instructions', 'A', 'Medium', 'It commonly classifies text as positive, negative, neutral, or similar categories.'),

-- Q104
('Artificial Intelligence', 'What is machine translation?', 'Automatically translating between languages', 'Translating machine code only', 'Converting images to pixels', 'Compressing files', 'A', 'Medium', 'Machine translation automatically converts text or speech between languages.'),

-- Q105
('Artificial Intelligence', 'What is named entity recognition?', 'Identifying entities such as people, places, or organizations in text', 'Detecting image edges', 'Identifying hardware', 'Sorting numbers', 'A', 'Medium', 'NER identifies and categorizes important named entities.'),

-- Q106
('Artificial Intelligence', 'What is text classification?', 'Assigning categories to text', 'Converting text into images', 'Compressing text', 'Removing all words', 'A', 'Medium', 'Spam detection is a common text-classification task.'),

-- Q107
('Artificial Intelligence', 'What is text summarization?', 'Producing a shorter representation of important information', 'Increasing document length', 'Removing all meaning', 'Encrypting text', 'A', 'Medium', 'Summarization aims to retain important information in a shorter form.'),

-- Q108
('Artificial Intelligence', 'What is question answering in NLP?', 'Producing answers to questions based on provided information', 'Formatting questions', 'Sorting questions alphabetically', 'Removing questions', 'A', 'Medium', 'QA systems retrieve or generate answers from relevant information.'),

-- Q109
('Artificial Intelligence', 'What is tokenization in NLP?', 'Splitting text into tokens', 'Converting text to images', 'Encrypting words', 'Removing punctuation only', 'A', 'Medium', 'Tokens may be words, subwords, or characters.'),

-- Q110
('Artificial Intelligence', 'What is stemming?', 'Reducing words toward a common stem', 'Translating languages', 'Creating images', 'Detecting objects', 'A', 'Medium', 'Stemming uses heuristic rules to reduce related words to a stem.'),

-- Q111
('Artificial Intelligence', 'What is lemmatization?', 'Converting words to their dictionary base form', 'Removing all words', 'Converting text to speech', 'Image classification', 'A', 'Medium', 'Lemmatization uses linguistic information to find a valid base form.'),

-- Q112
('Artificial Intelligence', 'What is a stop word?', 'Common word often filtered in some NLP tasks', 'A programming error', 'Image label', 'Neural-network layer', 'A', 'Medium', 'Words such as common function words may be treated as stop words depending on the task.'),

-- Q113
('Artificial Intelligence', 'What is an NLP corpus?', 'Collection of text or speech data', 'Neural layer', 'Image filter', 'Database key', 'A', 'Medium', 'A corpus is a collection of language data used for analysis or model training.'),

-- Q114
('Artificial Intelligence', 'What is language modeling?', 'Modeling the probability or structure of language sequences', 'Designing programming languages only', 'Translating hardware', 'Compressing images', 'A', 'Medium', 'Language models learn statistical or neural patterns in language.'),

-- Q115
('Artificial Intelligence', 'What is speech synthesis?', 'Generating speech from text or other input', 'Converting speech into text', 'Detecting images', 'Sorting audio files', 'A', 'Medium', 'Text-to-speech systems generate spoken audio.'),

-- Q116
('Artificial Intelligence', 'What is speech-to-text?', 'Converting spoken audio into text', 'Converting text into speech', 'Converting images into text only', 'Compressing speech', 'A', 'Medium', 'Speech recognition systems perform speech-to-text conversion.'),

-- Q117
('Artificial Intelligence', 'What is computer vision?', 'AI field focused on visual information', 'AI field focused only on databases', 'Programming-language design', 'Network security', 'A', 'Medium', 'Computer vision processes images and videos to extract information.'),

-- Q118
('Artificial Intelligence', 'What is image classification?', 'Assigning a category to an image', 'Finding exact object coordinates only', 'Removing pixels', 'Increasing resolution', 'A', 'Medium', 'Classification predicts image-level categories.'),

-- Q119
('Artificial Intelligence', 'What is object detection?', 'Identifying objects and their locations', 'Classifying text', 'Generating audio', 'Sorting images', 'A', 'Medium', 'Detection commonly returns object classes and bounding boxes.'),

-- Q120
('Artificial Intelligence', 'What is image segmentation?', 'Assigning labels to image regions or pixels', 'Classifying only the whole image', 'Compressing images', 'Renaming images', 'A', 'Medium', 'Segmentation identifies regions at pixel level or object-instance level.'),

-- Q121
('Artificial Intelligence', 'What is facial recognition?', 'Identifying or verifying people using facial features', 'Detecting keyboard keys', 'Classifying databases', 'Translating text', 'A', 'Medium', 'Facial-recognition systems compare facial representations for identification or verification.'),

-- Q122
('Artificial Intelligence', 'What is OCR?', 'Optical Character Recognition', 'Object Classification Rule', 'Optical Computing Response', 'Online Character Retrieval', 'A', 'Medium', 'OCR converts text contained in images into machine-readable text.'),

-- Q123
('Artificial Intelligence', 'Which is an OCR application?', 'Extracting printed text from a scanned document', 'Predicting stock prices only', 'Audio synthesis', 'Network routing', 'A', 'Medium', 'OCR makes text in images digitally searchable or editable.'),

-- Q124
('Artificial Intelligence', 'What is object tracking?', 'Following an object''s location across video frames', 'Classifying a single text document', 'Sorting files', 'Compressing video', 'A', 'Medium', 'Tracking estimates an object''s movement over time.'),

-- Q125
('Artificial Intelligence', 'What is image augmentation?', 'Applying transformations to create varied training examples', 'Deleting all images', 'Changing labels randomly', 'Converting images to SQL', 'A', 'Medium', 'Augmentation can improve model generalization.'),

-- Q126
('Artificial Intelligence', 'What is robotics?', 'Field involving design and control of robots', 'Database programming', 'Text formatting', 'Web design only', 'A', 'Medium', 'Robotics combines mechanical, electrical, control, and computational technologies.'),

-- Q127
('Artificial Intelligence', 'AI in robotics can provide:', 'Perception and decision-making', 'Only mechanical structure', 'Only electricity', 'Only database storage', 'A', 'Medium', 'AI can help robots understand surroundings and choose actions.'),

-- Q128
('Artificial Intelligence', 'What is robot perception?', 'Understanding information from sensors', 'Writing HTML', 'Database backup', 'Image compression only', 'A', 'Medium', 'Perception transforms sensor observations into useful environmental information.'),

-- Q129
('Artificial Intelligence', 'What is robot localization?', 'Determining a robot''s position', 'Translating text', 'Classifying images', 'Compressing data', 'A', 'Medium', 'Localization estimates where the robot is within its environment.'),

-- Q130
('Artificial Intelligence', 'What is path planning?', 'Finding a route from one position to another', 'Formatting a document', 'Creating a database', 'Classifying text', 'A', 'Medium', 'Path planning finds feasible routes while considering obstacles and constraints.'),

-- Q131
('Artificial Intelligence', 'What is obstacle avoidance?', 'Planning movement to prevent collisions', 'Removing obstacles physically', 'Compressing sensor data', 'Classifying objects only', 'A', 'Medium', 'Robots use sensors and control algorithms to avoid collisions.'),

-- Q132
('Artificial Intelligence', 'What is SLAM?', 'Simultaneous Localization and Mapping', 'System Learning and Modeling', 'Sensor Logic Analysis Method', 'Statistical Localization Algorithm', 'A', 'Medium', 'SLAM estimates a robot''s position while building a map of an unknown environment.'),

-- Q133
('Artificial Intelligence', 'What is sensor fusion?', 'Combining information from multiple sensors', 'Deleting sensor data', 'Using only one sensor', 'Compressing images', 'A', 'Medium', 'Combining sensors can provide more reliable or complete information.'),

-- Q134
('Artificial Intelligence', 'Which can be a robot sensor?', 'Camera', 'HTML page', 'SQL query', 'Spreadsheet', 'A', 'Medium', 'Cameras provide visual information to robots.'),

-- Q135
('Artificial Intelligence', 'What is autonomous navigation?', 'Robot navigation without continuous direct human control', 'Manual movement only', 'Database navigation', 'Website navigation', 'A', 'Medium', 'Autonomous robots use perception, localization, planning, and control.'),

-- Q136
('Artificial Intelligence', 'What is human-robot interaction?', 'Interaction between humans and robots', 'Communication between databases', 'Image compression', 'Code formatting', 'A', 'Medium', 'HRI studies how humans and robots communicate and work together.'),

-- Q137
('Artificial Intelligence', 'What is an autonomous vehicle?', 'Vehicle capable of performing driving tasks using sensing and decision systems', 'Vehicle with no sensors', 'Manual bicycle', 'Database application', 'A', 'Medium', 'Autonomous vehicles use perception, planning, and control to perform driving tasks.'),

-- Q138
('Artificial Intelligence', 'Which AI capability is important for autonomous vehicles?', 'Object detection', 'HTML formatting', 'SQL table creation', 'Spreadsheet sorting', 'A', 'Medium', 'Detecting vehicles, pedestrians, and road features is important for safe navigation.'),

-- Q139
('Artificial Intelligence', 'What is anomaly detection?', 'Identifying unusual patterns or observations', 'Sorting normal data', 'Generating HTML', 'Translating text', 'A', 'Medium', 'Anomaly detection identifies observations that differ significantly from expected patterns.'),

-- Q140
('Artificial Intelligence', 'Which is an anomaly-detection application?', 'Detecting unusual network activity', 'Writing CSS', 'Creating a presentation', 'Formatting a document', 'A', 'Medium', 'Unusual network behavior can indicate potential problems or attacks.'),

-- Q141
('Artificial Intelligence', 'What is recommendation technology?', 'Suggesting items based on preferences or behavior', 'Image resizing', 'Database backup', 'Hardware assembly', 'A', 'Medium', 'Recommendation systems predict items users may find useful.'),

-- Q142
('Artificial Intelligence', 'Which is a recommendation-system application?', 'Movie recommendations', 'Image cropping', 'File renaming', 'CPU assembly', 'A', 'Medium', 'Streaming platforms commonly recommend movies or shows based on user behavior.'),

-- Q143
('Artificial Intelligence', 'What is personalization?', 'Adapting system outputs to individual users', 'Removing all user information', 'Randomizing results', 'Compressing data', 'A', 'Medium', 'Personalization tailors recommendations or content to user preferences.'),

-- Q144
('Artificial Intelligence', 'What is predictive maintenance?', 'Predicting equipment failures before they occur', 'Manually repairing all equipment', 'Formatting sensor data', 'Deleting machine logs', 'A', 'Medium', 'AI can use sensor data to identify patterns associated with future failures.'),

-- Q145
('Artificial Intelligence', 'What is fraud detection?', 'Identifying potentially fraudulent transactions or behavior', 'Creating invoices only', 'Formatting financial reports', 'Compressing transaction files', 'A', 'Medium', 'AI can detect unusual transaction patterns associated with fraud.'),

-- Q146
('Artificial Intelligence', 'What is spam detection?', 'Identifying unwanted messages', 'Creating emails', 'Compressing messages', 'Translating emails', 'A', 'Medium', 'Machine-learning models can classify messages as spam or legitimate.'),

-- Q147
('Artificial Intelligence', 'What is AI-assisted diagnosis?', 'Using AI to support analysis of medical information', 'Replacing every professional decision automatically', 'Database formatting', 'Image compression only', 'A', 'Medium', 'AI can assist qualified professionals by identifying patterns in relevant data.'),

-- Q148
('Artificial Intelligence', 'What is predictive analytics?', 'Using data and models to estimate future or unknown outcomes', 'Formatting reports', 'Storing files', 'Designing websites', 'A', 'Medium', 'Predictive analytics uses historical and current data to make predictions.'),

-- Q149
('Artificial Intelligence', 'What is AI automation?', 'Using AI to automate tasks involving perception, prediction, or decision-making', 'Manually performing every task', 'Creating databases only', 'Formatting documents', 'A', 'Medium', 'AI can automate tasks that require pattern recognition or adaptive decisions.'),

-- Q150
('Artificial Intelligence', 'Which is an example of AI in everyday life?', 'Personalized recommendations', 'USB cable', 'Mouse pad', 'Plain notebook', 'A', 'Medium', 'Recommendation systems are common AI applications.'),

-- Q151
('Artificial Intelligence', 'What is Generative AI?', 'AI that can create new content', 'AI that only sorts data', 'Database software', 'Operating system', 'A', 'Hard', 'Generative AI can produce text, images, audio, code, and other content.'),

-- Q152
('Artificial Intelligence', 'Which is an example of generative AI output?', 'Generated text', 'Database table schema only', 'Network cable', 'Keyboard input', 'A', 'Hard', 'Generative models can create new text based on learned patterns.'),

-- Q153
('Artificial Intelligence', 'What is a Large Language Model?', 'Model trained on large amounts of language data', 'Database management system', 'Image editor', 'Operating system', 'A', 'Hard', 'LLMs learn statistical and semantic patterns in language.'),

-- Q154
('Artificial Intelligence', 'What is a prompt?', 'Input instruction or text provided to a generative AI model', 'Database key', 'Hardware device', 'Programming compiler', 'A', 'Hard', 'Prompts provide instructions or context for model generation.'),

-- Q155
('Artificial Intelligence', 'What is prompt engineering?', 'Designing effective prompts to obtain useful model outputs', 'Building computer hardware', 'Database indexing', 'Image compression', 'A', 'Hard', 'Prompt engineering involves structuring instructions and context effectively.'),

-- Q156
('Artificial Intelligence', 'What is hallucination in generative AI?', 'Model producing incorrect or unsupported information as if it were true', 'Model shutting down', 'Image compression', 'Database failure', 'A', 'Hard', 'Generative models can produce plausible-sounding but inaccurate content.'),

-- Q157
('Artificial Intelligence', 'How can hallucinations be reduced?', 'Grounding outputs with reliable information and verification', 'Removing all context', 'Increasing randomness always', 'Ignoring evaluation', 'A', 'Hard', 'Retrieval, citations, validation, and constrained generation can help reduce unsupported outputs.'),

-- Q158
('Artificial Intelligence', 'What is retrieval-augmented generation?', 'Combining retrieval of relevant information with generation', 'Only generating random text', 'Database backup', 'Image classification', 'A', 'Hard', 'RAG retrieves relevant information and provides it as context for generation.'),

-- Q159
('Artificial Intelligence', 'What is a multimodal AI model?', 'Model capable of processing multiple types of data such as text and images', 'Model using only numbers', 'Database model', 'Single-purpose calculator', 'A', 'Hard', 'Multimodal systems can combine information from different modalities.'),

-- Q160
('Artificial Intelligence', 'What is responsible AI?', 'Designing and using AI in ways that consider safety, fairness, transparency, and accountability', 'Making AI as large as possible', 'Removing human oversight', 'Ignoring data quality', 'A', 'Hard', 'Responsible AI addresses technical and societal risks.'),

-- Q161
('Artificial Intelligence', 'What is AI bias?', 'Systematic unfairness or skew in AI outcomes', 'Random computer failure', 'Database indexing', 'Model compression', 'A', 'Hard', 'Bias can arise from data, modeling choices, or deployment conditions.'),

-- Q162
('Artificial Intelligence', 'What is fairness in AI?', 'Treating relevant groups appropriately and avoiding unjustified discrimination', 'Maximizing model size', 'Using only one class', 'Removing all data', 'A', 'Hard', 'Fairness seeks to reduce unjustified disparities in AI outcomes.'),

-- Q163
('Artificial Intelligence', 'What is transparency in AI?', 'Making relevant aspects of an AI system understandable or accessible', 'Hiding model behavior', 'Removing explanations', 'Encrypting all outputs', 'A', 'Hard', 'Transparency helps stakeholders understand how systems are developed and used.'),

-- Q164
('Artificial Intelligence', 'What is accountability in AI?', 'Responsibility for AI system decisions and impacts', 'Increasing training speed', 'Removing human oversight', 'Hiding errors', 'A', 'Hard', 'Accountability ensures appropriate responsibility for system outcomes.'),

-- Q165
('Artificial Intelligence', 'Why is data privacy important in AI?', 'AI systems may process sensitive or personal information', 'AI never uses data', 'Privacy reduces all model accuracy', 'Privacy applies only to hardware', 'A', 'Hard', 'Data must be handled appropriately to protect individuals and organizations.'),

-- Q166
('Artificial Intelligence', 'What is explainability?', 'Ability to provide understandable reasons or insights about model behavior', 'Increasing dataset size', 'Removing model outputs', 'Compressing data', 'A', 'Hard', 'Explainability helps users understand why a model behaves as it does.'),

-- Q167
('Artificial Intelligence', 'What is interpretability?', 'Degree to which humans can understand a model or its decisions', 'Number of model parameters', 'Image resolution', 'Training speed', 'A', 'Hard', 'Interpretability concerns human understanding of model behavior.'),

-- Q168
('Artificial Intelligence', 'Which model is generally more interpretable?', 'Small decision tree', 'Very large opaque neural network', 'Complex ensemble always', 'Massive generative model', 'A', 'Hard', 'A small decision tree can be inspected directly.'),

-- Q169
('Artificial Intelligence', 'What is human-in-the-loop AI?', 'System where humans participate in reviewing, supervising, or making decisions', 'Fully automated system with no human involvement', 'Database-only system', 'Hardware-only system', 'A', 'Hard', 'Human oversight can improve safety and handle uncertain cases.'),

-- Q170
('Artificial Intelligence', 'What is AI safety?', 'Practices for preventing harmful or unintended AI behavior', 'Increasing model size', 'Removing testing', 'Ignoring failures', 'A', 'Hard', 'AI safety focuses on reliable and controlled system behavior.'),

-- Q171
('Artificial Intelligence', 'What is model robustness?', 'Ability to maintain reliable performance under relevant changes', 'Number of neurons', 'Number of datasets', 'Model file size', 'A', 'Hard', 'Robust systems are less sensitive to expected variations and disturbances.'),

-- Q172
('Artificial Intelligence', 'What is adversarial AI?', 'AI involving strategically manipulated inputs or attacks against models', 'Normal data cleaning', 'Database sorting', 'Image resizing', 'A', 'Hard', 'Adversarial methods can test or exploit model weaknesses.'),

-- Q173
('Artificial Intelligence', 'What is an adversarial example?', 'Carefully modified input designed to mislead an AI model', 'Normal training example', 'Database record', 'Model checkpoint', 'A', 'Hard', 'Small input changes can sometimes cause incorrect predictions.'),

-- Q174
('Artificial Intelligence', 'What is AI governance?', 'Policies and processes for managing AI development and use', 'Training one model only', 'Image processing', 'Database normalization', 'A', 'Hard', 'Governance covers risk, accountability, compliance, and responsible use.'),

-- Q175
('Artificial Intelligence', 'What is AI alignment?', 'Making AI behavior consistent with intended goals and values', 'Aligning computer screens', 'Sorting datasets', 'Increasing model size', 'A', 'Hard', 'Alignment focuses on ensuring systems behave according to intended objectives.'),

-- Q176
('Artificial Intelligence', 'What is the Turing Test?', 'Test proposed to evaluate whether machine behavior can appear human-like in conversation', 'Database performance test', 'Image-quality test', 'Network-speed test', 'A', 'Hard', 'Alan Turing proposed the imitation game as a way to discuss machine intelligence.'),

-- Q177
('Artificial Intelligence', 'Who proposed the Turing Test?', 'Alan Turing', 'Charles Babbage', 'Tim Berners-Lee', 'Dennis Ritchie', 'A', 'Hard', 'Alan Turing introduced the idea in his 1950 paper on machine intelligence.'),

-- Q178
('Artificial Intelligence', 'What is Artificial General Intelligence?', 'Hypothetical AI with broad human-like general capabilities', 'AI for one narrow task only', 'Database software', 'Image editor', 'A', 'Hard', 'AGI refers to broadly capable intelligence rather than a single specialized task.'),

-- Q179
('Artificial Intelligence', 'What is narrow AI?', 'AI designed for specific tasks or limited domains', 'Human intelligence', 'Universal intelligence', 'Database management', 'A', 'Hard', 'Most practical AI systems today are specialized for particular tasks.'),

-- Q180
('Artificial Intelligence', 'What is superintelligence?', 'Hypothetical intelligence greatly exceeding human capabilities across many domains', 'Basic calculator', 'Database system', 'Search engine only', 'A', 'Hard', 'Superintelligence is a theoretical concept describing extremely capable intelligence.'),

-- Q181
('Artificial Intelligence', 'What is symbolic AI?', 'AI based on explicit symbols, rules, and logical representations', 'AI based only on images', 'Database software', 'Hardware engineering', 'A', 'Hard', 'Symbolic AI represents knowledge explicitly using symbols and rules.'),

-- Q182
('Artificial Intelligence', 'What is connectionism?', 'Approach modeling intelligence using interconnected computational units', 'Database connection design', 'Network cable engineering', 'Web development', 'A', 'Hard', 'Neural networks are a major connectionist approach.'),

-- Q183
('Artificial Intelligence', 'What is hybrid AI?', 'Combining multiple AI approaches, such as symbolic reasoning and machine learning', 'Using two programming languages only', 'Combining two databases', 'Combining two keyboards', 'A', 'Hard', 'Hybrid systems combine complementary AI techniques.'),

-- Q184
('Artificial Intelligence', 'What is knowledge graph?', 'Graph representing entities and relationships', 'Neural-network layer', 'Image filter', 'Database backup', 'A', 'Hard', 'Knowledge graphs represent connected concepts, entities, and relationships.'),

-- Q185
('Artificial Intelligence', 'What is an ontology in AI?', 'Formal representation of concepts and relationships in a domain', 'Image format', 'Programming language', 'Hardware component', 'A', 'Hard', 'Ontologies define concepts, properties, and relationships within a domain.'),

-- Q186
('Artificial Intelligence', 'What is AI-powered search?', 'Using AI techniques to improve information retrieval or search decisions', 'Searching only local files', 'Database deletion', 'Image compression', 'A', 'Hard', 'AI can rank, retrieve, summarize, and understand search results.'),

-- Q187
('Artificial Intelligence', 'What is information retrieval?', 'Finding relevant information from a collection', 'Creating hardware', 'Training robots only', 'Compressing databases', 'A', 'Hard', 'Information retrieval systems find relevant documents or information for queries.'),

-- Q188
('Artificial Intelligence', 'What is semantic search?', 'Search based on meaning and intent rather than exact keywords alone', 'Search based only on file names', 'Database sorting', 'Image resizing', 'A', 'Hard', 'Semantic search uses representations of meaning to find conceptually related information.'),

-- Q189
('Artificial Intelligence', 'What is a recommendation engine?', 'System that predicts and suggests relevant items', 'Compiler', 'Database backup tool', 'Image editor', 'A', 'Hard', 'Recommendation engines use user and item information to generate suggestions.'),

-- Q190
('Artificial Intelligence', 'What is collaborative filtering?', 'Recommendation method based on interactions among users and items', 'Image filtering', 'Audio compression', 'Database normalization', 'A', 'Hard', 'Collaborative filtering uses patterns of user-item interactions.'),

-- Q191
('Artificial Intelligence', 'What is content-based recommendation?', 'Recommending items based on their characteristics and user preferences', 'Recommending randomly', 'Using only hardware data', 'Removing item information', 'A', 'Hard', 'Content-based systems compare item features with user preferences.'),

-- Q192
('Artificial Intelligence', 'What is data drift?', 'Change in input-data distribution over time', 'Model deletion', 'Database formatting', 'Image resizing', 'A', 'Hard', 'Data drift can cause deployed model performance to change.'),

-- Q193
('Artificial Intelligence', 'What is concept drift?', 'Change in the relationship between inputs and target outcomes over time', 'Change in file format', 'Image scaling', 'Database indexing', 'A', 'Hard', 'Concept drift occurs when the underlying relationship being modeled changes.'),

-- Q194
('Artificial Intelligence', 'Why should deployed AI models be monitored?', 'Performance and data characteristics can change', 'Models never change', 'Monitoring is unnecessary', 'Monitoring automatically increases accuracy', 'A', 'Hard', 'Monitoring helps detect drift, failures, and performance degradation.'),

-- Q195
('Artificial Intelligence', 'What is reproducibility in AI?', 'Ability to obtain consistent results under the same specified conditions', 'Increasing randomness', 'Removing datasets', 'Changing models frequently', 'A', 'Hard', 'Reproducibility improves trust and makes experiments easier to verify.'),

-- Q196
('Artificial Intelligence', 'Why are training and test datasets separated?', 'To evaluate generalization on unseen data', 'To increase training size artificially', 'To remove labels', 'To eliminate models', 'A', 'Hard', 'Separate test data provides a more objective evaluation.'),

-- Q197
('Artificial Intelligence', 'What is cross-validation?', 'Technique for evaluating models across multiple data splits', 'Database validation only', 'Image resizing', 'Network testing', 'A', 'Hard', 'Cross-validation estimates model performance across different partitions.'),

-- Q198
('Artificial Intelligence', 'What is model evaluation?', 'Measuring how well an AI model performs on relevant data', 'Increasing model size', 'Deleting test data', 'Writing source code only', 'A', 'Hard', 'Evaluation uses suitable metrics to assess model performance.'),

-- Q199
('Artificial Intelligence', 'Why is AI testing important?', 'To identify errors, risks, and unexpected behavior', 'To guarantee perfect results', 'To eliminate all data', 'To avoid validation', 'A', 'Hard', 'Testing helps identify weaknesses before and after deployment.'),

-- Q200
('Artificial Intelligence', 'What is the overall goal of Artificial Intelligence?', 'Build systems capable of useful intelligent behavior and decision-making', 'Replace all software', 'Eliminate human knowledge', 'Increase computer size', 'A', 'Hard', 'AI aims to develop systems that can perform intelligent tasks effectively and responsibly.');

-- Verification 1
SELECT COUNT(*) AS ai_questions
FROM questions
WHERE skill = 'Artificial Intelligence';

-- Verification 2
SELECT COUNT(DISTINCT question) AS unique_ai_questions
FROM questions
WHERE skill = 'Artificial Intelligence';

-- Verification 3
SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
