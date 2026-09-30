USE ai_interviewer;

-- Machine Learning 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Machine Learning';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Machine Learning', 'What is Machine Learning?', 'A database system', 'A method where computers learn patterns from data', 'A web-design technique', 'A networking protocol', 'B', 'Easy', 'Machine Learning enables systems to learn patterns from data and make predictions or decisions.'),

-- Q2
('Machine Learning', 'Which is a major type of Machine Learning?', 'Supervised Learning', 'Manual Learning', 'Static Learning', 'Hardware Learning', 'A', 'Easy', 'Supervised, unsupervised, and reinforcement learning are major ML categories.'),

-- Q3
('Machine Learning', 'In supervised learning, the training data contains:', 'Only features', 'Features and labels', 'Only labels', 'No data', 'B', 'Easy', 'Supervised learning uses input features with known target labels.'),

-- Q4
('Machine Learning', 'Which learning type works mainly with unlabeled data?', 'Supervised learning', 'Unsupervised learning', 'Reinforcement learning', 'Transfer compilation', 'B', 'Easy', 'Unsupervised learning discovers patterns in data without target labels.'),

-- Q5
('Machine Learning', 'Predicting house prices is an example of:', 'Classification', 'Regression', 'Clustering', 'Association', 'B', 'Easy', 'House price is a continuous numerical value, making it a regression problem.'),

-- Q6
('Machine Learning', 'Predicting whether an email is spam is:', 'Regression', 'Classification', 'Clustering', 'Dimensionality reduction', 'B', 'Easy', 'Spam/not-spam represents discrete classes.'),

-- Q7
('Machine Learning', 'In ML, a feature is:', 'An input variable', 'The final prediction only', 'An error message', 'A database table', 'A', 'Easy', 'Features are input attributes used by a model to make predictions.'),

-- Q8
('Machine Learning', 'What is a label?', 'An input feature', 'The target value to predict', 'A programming language', 'A model parameter', 'B', 'Easy', 'A label is the known target associated with a training example.'),

-- Q9
('Machine Learning', 'What is training data?', 'Data used to fit a model', 'Data used only for deployment', 'Deleted data', 'Random code', 'A', 'Easy', 'Training data is used to learn model parameters and patterns.'),

-- Q10
('Machine Learning', 'What is test data used for?', 'Training the model', 'Final evaluation of model performance', 'Cleaning source code', 'Creating labels manually', 'B', 'Easy', 'Test data estimates how well the final model generalizes to unseen data.'),

-- Q11
('Machine Learning', 'Why is a validation set used?', 'To tune models and hyperparameters', 'To replace all training data', 'To store source code', 'To delete features', 'A', 'Easy', 'Validation data helps select models and hyperparameters before final testing.'),

-- Q12
('Machine Learning', 'Which split is commonly used for ML datasets?', 'Train/test', 'Input/output only', 'CPU/GPU', 'HTML/CSS', 'A', 'Easy', 'A dataset is commonly divided into training and testing sets, sometimes with a validation set too.'),

-- Q13
('Machine Learning', 'What is overfitting?', 'Model performs poorly on training data', 'Model memorizes training patterns and generalizes poorly', 'Model has no features', 'Dataset has no labels', 'B', 'Easy', 'An overfit model performs very well on training data but poorly on unseen data.'),

-- Q14
('Machine Learning', 'What is underfitting?', 'Model is too complex', 'Model fails to capture important patterns', 'Model memorizes all examples', 'Model has too many parameters', 'B', 'Easy', 'Underfitting occurs when a model is too simple to represent the underlying patterns.'),

-- Q15
('Machine Learning', 'What does generalization mean?', 'Memorizing training examples', 'Performing well on unseen data', 'Removing labels', 'Increasing dataset size only', 'B', 'Easy', 'Generalization is the ability to perform well on data not seen during training.'),

-- Q16
('Machine Learning', 'What is a model?', 'A learned mathematical representation used for prediction', 'A database', 'A web browser', 'A hardware cable', 'A', 'Easy', 'An ML model captures relationships learned from training data.'),

-- Q17
('Machine Learning', 'What are hyperparameters?', 'Values learned directly from training examples', 'Settings chosen before or during training', 'Dataset labels', 'Output predictions', 'B', 'Easy', 'Hyperparameters include settings such as tree depth or learning rate.'),

-- Q18
('Machine Learning', 'Which is a model parameter?', 'Learning rate', 'Number of neighbors', 'Weight learned by linear regression', 'Number of training epochs', 'C', 'Easy', 'Model parameters are learned from data during training.'),

-- Q19
('Machine Learning', 'What is preprocessing?', 'Preparing raw data for ML', 'Deploying a website', 'Writing HTML', 'Creating hardware', 'A', 'Easy', 'Preprocessing can include cleaning, encoding, scaling, and handling missing values.'),

-- Q20
('Machine Learning', 'Which is an example of categorical data?', 'Age', 'Height', 'City', 'Salary', 'C', 'Easy', 'City represents categories rather than continuous numerical measurements.'),

-- Q21
('Machine Learning', 'Which is continuous numerical data?', 'Gender category', 'Blood group category', 'Temperature', 'Country name', 'C', 'Easy', 'Temperature can take many numerical values within a range.'),

-- Q22
('Machine Learning', 'What is feature engineering?', 'Creating or transforming useful input features', 'Deleting the model', 'Installing an operating system', 'Writing SQL only', 'A', 'Easy', 'Feature engineering transforms raw information into useful model inputs.'),

-- Q23
('Machine Learning', 'What does normalization commonly do?', 'Scales values to a specified range', 'Removes all labels', 'Converts text to images', 'Deletes duplicate rows only', 'A', 'Easy', 'Min-max normalization commonly scales values to a range such as 0 to 1.'),

-- Q24
('Machine Learning', 'Standardization commonly transforms data to:', 'Mean 0 and standard deviation 1', 'Mean 1 and standard deviation 0', 'Values only between 1 and 10', 'Binary values only', 'A', 'Easy', 'Standardization commonly uses z-scores.'),

-- Q25
('Machine Learning', 'Which algorithm is generally sensitive to feature scaling?', 'k-NN', 'Decision Tree', 'Random Forest', 'Rule-based classifier', 'A', 'Easy', 'Distance-based algorithms such as k-NN are sensitive to feature scales.'),

-- Q26
('Machine Learning', 'Which algorithm generally does not require feature scaling?', 'k-NN', 'SVM', 'Decision Tree', 'K-means', 'C', 'Easy', 'Decision trees split based on feature thresholds and generally do not require scaling.'),

-- Q27
('Machine Learning', 'How can missing numerical values commonly be handled?', 'Mean or median imputation', 'Always deleting the entire dataset', 'Converting them to HTML', 'Ignoring them in every algorithm', 'A', 'Easy', 'Mean or median imputation can replace missing numerical values.'),

-- Q28
('Machine Learning', 'Which encoding is commonly used for nominal categorical variables?', 'One-hot encoding', 'Fourier encoding', 'Pixel encoding', 'Memory encoding', 'A', 'Easy', 'One-hot encoding represents categories using binary indicator columns.'),

-- Q29
('Machine Learning', 'What is label encoding?', 'Assigning numerical codes to categories', 'Removing target labels', 'Scaling numerical values', 'Splitting data', 'A', 'Easy', 'Label encoding maps categories to integer values.'),

-- Q30
('Machine Learning', 'What is data leakage?', 'Useful information accidentally entering training from outside the allowed training process', 'Data being stored safely', 'Removing duplicate rows', 'Compressing a dataset', 'A', 'Easy', 'Leakage can produce unrealistically good validation or test performance.'),

-- Q31
('Machine Learning', 'Which is an example of target leakage?', 'Using future information that would not be available at prediction time', 'Scaling training data', 'Removing duplicates', 'Splitting data correctly', 'A', 'Easy', 'Target leakage occurs when information related to the target improperly enters the features.'),

-- Q32
('Machine Learning', 'What is cross-validation?', 'A technique for evaluating models across multiple data splits', 'A database operation', 'A programming language', 'A data encryption method', 'A', 'Easy', 'Cross-validation repeatedly trains and evaluates a model on different folds.'),

-- Q33
('Machine Learning', 'In k-fold cross-validation, data is divided into:', 'k subsets', '2 CPUs', 'Random labels', 'Only one subset', 'A', 'Easy', 'The dataset is divided into k folds, with each fold serving as validation in turn.'),

-- Q34
('Machine Learning', 'What is stratified sampling?', 'Maintaining class proportions during sampling', 'Sorting data alphabetically', 'Removing all classes', 'Scaling data', 'A', 'Easy', 'Stratification helps preserve important class proportions.'),

-- Q35
('Machine Learning', 'What is reproducibility in ML?', 'Getting consistent results using the same setup and data', 'Increasing model size', 'Removing validation data', 'Changing labels randomly', 'A', 'Easy', 'Reproducibility allows experiments to be repeated under the same conditions.'),

-- Q36
('Machine Learning', 'Why are random seeds often used?', 'To make randomized processes repeatable', 'To increase RAM', 'To remove features', 'To create databases', 'A', 'Easy', 'A fixed random seed can make randomized operations reproducible.'),

-- Q37
('Machine Learning', 'What is a baseline model?', 'A simple reference model for comparison', 'The final production model always', 'A database backup', 'A neural network only', 'A', 'Easy', 'A baseline establishes a reference performance level.'),

-- Q38
('Machine Learning', 'What is an epoch in iterative ML training?', 'One complete pass through the training data', 'One feature', 'One label', 'One test sample', 'A', 'Easy', 'An epoch represents one complete pass through the training dataset.'),

-- Q39
('Machine Learning', 'What is batch size?', 'Number of training samples processed before an update', 'Number of labels in a database', 'Number of classes only', 'Number of test sets', 'A', 'Easy', 'Batch size determines how many samples are processed for an optimization update.'),

-- Q40
('Machine Learning', 'What is learning rate?', 'A parameter controlling optimization step size', 'Number of classes', 'Dataset size', 'Number of features', 'A', 'Easy', 'Learning rate controls how much model parameters change during optimization.'),

-- Q41
('Machine Learning', 'What is an objective function?', 'A function that defines what the model tries to optimize', 'A database schema', 'A programming interface', 'A file format', 'A', 'Easy', 'The objective or loss function quantifies the model''s performance during optimization.'),

-- Q42
('Machine Learning', 'What does loss measure?', 'Model error according to a chosen objective', 'Number of rows only', 'CPU speed', 'Dataset size', 'A', 'Easy', 'Loss measures how far predictions are from desired outcomes according to the chosen function.'),

-- Q43
('Machine Learning', 'Which is commonly used as a regression loss?', 'Mean Squared Error', 'Accuracy', 'Recall', 'F1-score', 'A', 'Easy', 'MSE measures the average squared difference between predictions and actual values.'),

-- Q44
('Machine Learning', 'Which metric is commonly used for classification?', 'Accuracy', 'MAE only', 'RMSE only', 'R² only', 'A', 'Easy', 'Accuracy measures the proportion of correct classification predictions.'),

-- Q45
('Machine Learning', 'What is a confusion matrix?', 'Table showing classification prediction outcomes', 'Regression equation', 'Feature scaling method', 'Clustering algorithm', 'A', 'Easy', 'A confusion matrix summarizes true/false positives and negatives.'),

-- Q46
('Machine Learning', 'What does TP mean?', 'True Positive', 'Total Prediction', 'Training Parameter', 'Test Percentage', 'A', 'Easy', 'A true positive occurs when a positive case is correctly predicted as positive.'),

-- Q47
('Machine Learning', 'What does TN mean?', 'Total Number', 'True Negative', 'Training Node', 'Test Normalization', 'B', 'Easy', 'A true negative is a negative case correctly predicted as negative.'),

-- Q48
('Machine Learning', 'What does FP mean?', 'False Positive', 'Feature Parameter', 'Final Prediction', 'Fold Percentage', 'A', 'Easy', 'A false positive occurs when a negative case is predicted as positive.'),

-- Q49
('Machine Learning', 'What does FN mean?', 'Feature Number', 'False Negative', 'Final Node', 'Fold Normalization', 'B', 'Easy', 'A false negative occurs when a positive case is predicted as negative.'),

-- Q50
('Machine Learning', 'Which is the main goal of an ML model?', 'Memorize all training data', 'Learn useful patterns and generalize to new data', 'Increase dataset size', 'Remove all features', 'B', 'Easy', 'Good ML models learn patterns that transfer to unseen data.'),

-- Q51
('Machine Learning', 'What is linear regression used for?', 'Predicting continuous values', 'Clustering data', 'Compressing files', 'Detecting categories only', 'A', 'Medium', 'Linear regression models relationships between inputs and continuous targets.'),

-- Q52
('Machine Learning', 'The output of simple linear regression is generally:', 'Continuous', 'Always categorical', 'Always binary', 'A cluster ID', 'A', 'Medium', 'Linear regression predicts numerical continuous values.'),

-- Q53
('Machine Learning', 'Logistic regression is mainly used for:', 'Classification', 'Clustering', 'Dimensionality reduction', 'File compression', 'A', 'Medium', 'Despite its name, logistic regression is primarily a classification algorithm.'),

-- Q54
('Machine Learning', 'Logistic regression commonly uses which function to produce probabilities?', 'Sigmoid', 'ReLU', 'Square root', 'Logarithm only', 'A', 'Medium', 'The sigmoid function maps values to the range 0 to 1.'),

-- Q55
('Machine Learning', 'A binary logistic regression commonly predicts:', 'Two classes', 'Exactly ten clusters', 'Continuous images', 'Database rows', 'A', 'Medium', 'Binary logistic regression is designed for two-class classification.'),

-- Q56
('Machine Learning', 'What is k-NN?', 'k-Nearest Neighbors', 'k-Numerical Network', 'Known Neural Node', 'Kernel Numerical Normalization', 'A', 'Medium', 'k-NN predicts using nearby training examples.'),

-- Q57
('Machine Learning', 'k-NN is primarily based on:', 'Distance or similarity', 'Random labels', 'Database indexes', 'File extensions', 'A', 'Medium', 'k-NN identifies the nearest examples according to a distance metric.'),

-- Q58
('Machine Learning', 'What happens if k is very small in k-NN?', 'Model may become sensitive to noise', 'Model always underfits', 'Model becomes a decision tree', 'Scaling becomes unnecessary', 'A', 'Medium', 'Small k values can make predictions highly sensitive to individual observations.'),

-- Q59
('Machine Learning', 'What can happen if k is very large?', 'Model may become too smooth', 'Model always memorizes data', 'Dataset disappears', 'Features become categorical', 'A', 'Medium', 'A large neighborhood can reduce sensitivity to local patterns and cause underfitting.'),

-- Q60
('Machine Learning', 'Which distance is commonly used in k-NN?', 'Euclidean distance', 'HTML distance', 'SQL distance', 'File distance', 'A', 'Medium', 'Euclidean distance is commonly used for numerical feature vectors.'),

-- Q61
('Machine Learning', 'What is a decision tree?', 'A tree-like model using feature-based decisions', 'A database tree only', 'A file system', 'A sorting algorithm', 'A', 'Medium', 'Decision trees recursively split data using feature conditions.'),

-- Q62
('Machine Learning', 'A decision tree internal node generally represents:', 'A decision or feature test', 'Final output only', 'A database table', 'A file', 'A', 'Medium', 'Internal nodes contain conditions used to split observations.'),

-- Q63
('Machine Learning', 'A decision tree leaf represents:', 'A final prediction', 'A feature-processing step', 'A database connection', 'A training dataset', 'A', 'Medium', 'Leaves contain the final predicted class or numerical value.'),

-- Q64
('Machine Learning', 'Which measure can be used to split a classification tree?', 'Gini impurity', 'RMSE only', 'R² only', 'MAE only', 'A', 'Medium', 'Gini impurity is commonly used to evaluate classification splits.'),

-- Q65
('Machine Learning', 'Entropy in decision trees measures:', 'Impurity or uncertainty', 'Dataset size', 'CPU speed', 'Feature count only', 'A', 'Medium', 'Entropy measures uncertainty in class distributions.'),

-- Q66
('Machine Learning', 'What is pruning in decision trees?', 'Reducing unnecessary tree branches', 'Increasing every branch', 'Removing all features', 'Sorting labels', 'A', 'Medium', 'Pruning helps reduce complexity and overfitting.'),

-- Q67
('Machine Learning', 'What is Random Forest?', 'Ensemble of decision trees', 'Single linear model', 'Clustering method only', 'Database algorithm', 'A', 'Medium', 'Random Forest combines predictions from many decision trees.'),

-- Q68
('Machine Learning', 'Random Forest mainly uses:', 'Bagging and random feature selection', 'Only gradient descent', 'Only PCA', 'Only clustering', 'A', 'Medium', 'Random forests train trees on randomized samples and feature subsets.'),

-- Q69
('Machine Learning', 'What is bagging?', 'Training models on bootstrap samples and combining predictions', 'Removing all training data', 'Scaling features', 'Encoding categories', 'A', 'Medium', 'Bagging reduces variance by combining multiple models trained on resampled data.'),

-- Q70
('Machine Learning', 'What is boosting?', 'Sequentially building models that focus on previous errors', 'Randomly deleting data', 'Scaling all features', 'Creating clusters only', 'A', 'Medium', 'Boosting builds weak learners sequentially to improve overall performance.'),

-- Q71
('Machine Learning', 'Which is a boosting algorithm?', 'AdaBoost', 'PCA', 'k-NN', 'DBSCAN', 'A', 'Medium', 'AdaBoost is a classic boosting algorithm.'),

-- Q72
('Machine Learning', 'Gradient Boosting builds models:', 'Sequentially to reduce prediction error', 'Without using training data', 'Only from clusters', 'Only using PCA', 'A', 'Medium', 'Gradient boosting adds learners that improve the current model.'),

-- Q73
('Machine Learning', 'What is XGBoost?', 'A gradient boosting implementation', 'A database engine', 'A clustering algorithm', 'A web framework', 'A', 'Medium', 'XGBoost is a widely used optimized gradient boosting library/algorithm.'),

-- Q74
('Machine Learning', 'What is SVM?', 'Support Vector Machine', 'Statistical Value Model', 'Simple Vector Memory', 'Support Variable Method', 'A', 'Medium', 'SVM is a supervised learning method commonly used for classification and regression.'),

-- Q75
('Machine Learning', 'What does an SVM try to maximize in classification?', 'Margin between classes', 'Number of missing values', 'Number of features only', 'Dataset size', 'A', 'Medium', 'A linear SVM seeks a separating boundary with a large margin.'),

-- Q76
('Machine Learning', 'What is a support vector?', 'A training point important in defining the decision boundary', 'A database row', 'A feature name', 'A cluster center', 'A', 'Medium', 'Support vectors are observations closest to the decision boundary and influence it strongly.'),

-- Q77
('Machine Learning', 'What is the kernel trick used for?', 'Modeling nonlinear relationships in SVMs', 'Handling missing values only', 'Scaling data', 'Sorting data', 'A', 'Medium', 'Kernels allow SVMs to operate in transformed feature spaces without explicitly computing them.'),

-- Q78
('Machine Learning', 'Which is a common SVM kernel?', 'RBF', 'HTML', 'SQL', 'CSV', 'A', 'Medium', 'The radial basis function kernel is commonly used for nonlinear SVMs.'),

-- Q79
('Machine Learning', 'What is Naive Bayes based on?', 'Bayes'' theorem with a conditional-independence assumption', 'Decision trees only', 'PCA only', 'k-means only', 'A', 'Medium', 'Naive Bayes assumes features are conditionally independent given the class.'),

-- Q80
('Machine Learning', 'Naive Bayes is often useful for:', 'Text classification', 'Image compression only', 'Database indexing', 'Sorting numbers', 'A', 'Medium', 'Naive Bayes is computationally efficient and commonly used for text classification.'),

-- Q81
('Machine Learning', 'What does Bayes'' theorem calculate?', 'Updated probability using prior and evidence', 'Dataset size', 'Tree depth', 'Feature count', 'A', 'Medium', 'Bayes'' theorem updates a prior belief based on observed evidence.'),

-- Q82
('Machine Learning', 'What is a class probability?', 'Estimated probability of an observation belonging to a class', 'Number of features', 'Number of rows', 'Training duration', 'A', 'Medium', 'Classification models can estimate probabilities for possible classes.'),

-- Q83
('Machine Learning', 'What is a decision boundary?', 'Boundary separating predicted classes', 'Dataset storage boundary', 'Memory boundary', 'File boundary', 'A', 'Medium', 'A decision boundary divides regions associated with different predicted classes.'),

-- Q84
('Machine Learning', 'What is multiclass classification?', 'Classification involving more than two classes', 'Regression with multiple features', 'Clustering only', 'Binary classification only', 'A', 'Medium', 'Multiclass classification predicts one among three or more classes.'),

-- Q85
('Machine Learning', 'What is multilabel classification?', 'One example can have multiple labels', 'Every example has exactly one label', 'No labels are used', 'Only numerical targets are allowed', 'A', 'Medium', 'In multilabel classification, an instance can belong to several categories simultaneously.'),

-- Q86
('Machine Learning', 'What is a hyperplane in linear SVM?', 'A linear decision boundary', 'A cluster center', 'A tree leaf', 'A missing-value method', 'A', 'Medium', 'A hyperplane separates classes in the feature space.'),

-- Q87
('Machine Learning', 'What does SVM parameter C control?', 'Trade-off between margin size and classification errors', 'Number of clusters', 'Number of trees', 'Number of rows', 'A', 'Medium', 'C controls the penalty associated with misclassification.'),

-- Q88
('Machine Learning', 'What does the parameter gamma commonly control in an RBF SVM?', 'Influence range of individual training points', 'Number of labels', 'Dataset size', 'Tree depth', 'A', 'Medium', 'Higher gamma makes each point''s influence more localized.'),

-- Q89
('Machine Learning', 'Which model is naturally interpretable as a sequence of if-then decisions?', 'Decision Tree', 'k-NN', 'PCA', 'K-means', 'A', 'Medium', 'Decision trees can be represented as hierarchical if-then rules.'),

-- Q90
('Machine Learning', 'Which algorithm is called a lazy learner?', 'k-NN', 'Linear regression', 'Decision tree', 'Logistic regression', 'A', 'Medium', 'k-NN postpones most computation until prediction time.'),

-- Q91
('Machine Learning', 'Which algorithm is parametric?', 'Linear regression', 'k-NN', 'DBSCAN', 'Decision tree', 'A', 'Medium', 'Linear regression assumes a specified functional form with a fixed number of parameters.'),

-- Q92
('Machine Learning', 'Which algorithm is non-parametric?', 'k-NN', 'Linear regression', 'Logistic regression', 'Naive Bayes', 'A', 'Medium', 'k-NN does not assume a fixed parametric functional form.'),

-- Q93
('Machine Learning', 'What is ensemble learning?', 'Combining multiple models', 'Using one feature only', 'Removing labels', 'Using only one training example', 'A', 'Medium', 'Ensemble learning combines multiple models to improve predictive performance.'),

-- Q94
('Machine Learning', 'What is stacking?', 'Combining different models using a meta-model', 'Scaling features', 'Clustering rows', 'Removing outliers', 'A', 'Medium', 'Stacking uses predictions from base models as inputs to another model.'),

-- Q95
('Machine Learning', 'What is hard voting?', 'Choosing the class receiving the most model votes', 'Averaging regression values', 'Scaling labels', 'Choosing the largest feature', 'A', 'Medium', 'Hard voting selects the class with the majority of classifier predictions.'),

-- Q96
('Machine Learning', 'What is soft voting?', 'Combining predicted class probabilities', 'Choosing the smallest feature', 'Removing labels', 'Sorting the dataset', 'A', 'Medium', 'Soft voting combines probability estimates from multiple classifiers.'),

-- Q97
('Machine Learning', 'Which model is commonly robust to nonlinear relationships?', 'Random Forest', 'Simple linear regression', 'Basic linear model only', 'Mean predictor', 'A', 'Medium', 'Random forests can model complex nonlinear feature relationships.'),

-- Q98
('Machine Learning', 'Which model is particularly affected by the curse of dimensionality?', 'k-NN', 'Decision tree only', 'Random forest only', 'Linear regression only', 'A', 'Medium', 'Distance-based methods can become less effective as the number of dimensions grows.'),

-- Q99
('Machine Learning', 'What is regularization?', 'A technique that discourages overly complex models', 'A data storage method', 'A sorting method', 'A clustering algorithm', 'A', 'Medium', 'Regularization adds constraints or penalties to reduce overfitting.'),

-- Q100
('Machine Learning', 'L1 regularization can encourage:', 'Sparse coefficients', 'More missing values', 'More classes', 'Larger datasets', 'A', 'Medium', 'L1 penalties can drive some model coefficients exactly to zero.'),

-- Q101
('Machine Learning', 'What is unsupervised learning?', 'Learning from unlabeled data', 'Learning only from labeled data', 'Manual programming', 'Database normalization', 'A', 'Medium', 'Unsupervised learning discovers structure without known target labels.'),

-- Q102
('Machine Learning', 'Which is an unsupervised algorithm?', 'K-means', 'Logistic regression', 'Linear regression', 'SVM classifier', 'A', 'Medium', 'K-means is a clustering algorithm that does not require labeled targets.'),

-- Q103
('Machine Learning', 'What is clustering?', 'Grouping similar observations', 'Predicting a continuous target', 'Removing features', 'Encoding text', 'A', 'Medium', 'Clustering organizes observations into groups based on similarity.'),

-- Q104
('Machine Learning', 'K-means requires the user to specify:', 'Number of clusters', 'Number of labels', 'Number of test sets', 'Number of databases', 'A', 'Medium', 'K-means requires a chosen value of K.'),

-- Q105
('Machine Learning', 'What is a centroid in K-means?', 'Center representing a cluster', 'Classification label', 'Feature name', 'Test sample', 'A', 'Medium', 'A centroid is the mean position of points assigned to a cluster.'),

-- Q106
('Machine Learning', 'K-means generally minimizes:', 'Within-cluster squared distances', 'Classification accuracy', 'Tree depth', 'Number of labels', 'A', 'Medium', 'Standard K-means minimizes the sum of squared distances from points to their assigned centroids.'),

-- Q107
('Machine Learning', 'A limitation of K-means is that it:', 'Requires choosing K', 'Cannot use numerical data', 'Always needs labels', 'Cannot calculate distances', 'A', 'Medium', 'The number of clusters must generally be specified before training.'),

-- Q108
('Machine Learning', 'Which method can help choose K in K-means?', 'Elbow method', 'HTML method', 'Stack method', 'Binary search only', 'A', 'Medium', 'The elbow method examines how clustering error changes as K increases.'),

-- Q109
('Machine Learning', 'What does the silhouette score measure?', 'How well observations fit their clusters', 'Regression error only', 'Number of labels', 'Tree depth', 'A', 'Medium', 'Silhouette evaluates within-cluster cohesion and between-cluster separation.'),

-- Q110
('Machine Learning', 'A high silhouette score generally indicates:', 'Good clustering structure', 'Poor clustering', 'High missing values', 'High regression error', 'A', 'Medium', 'Higher silhouette values indicate points are well matched to their own clusters and separated from others.'),

-- Q111
('Machine Learning', 'What is hierarchical clustering?', 'Building a hierarchy of clusters', 'Training decision trees only', 'Regression modeling', 'Feature encoding', 'A', 'Medium', 'Hierarchical clustering creates nested groups.'),

-- Q112
('Machine Learning', 'What is a dendrogram?', 'Tree-like visualization of hierarchical clustering', 'Regression graph', 'Confusion matrix', 'Feature table', 'A', 'Medium', 'A dendrogram displays how clusters merge or split.'),

-- Q113
('Machine Learning', 'Agglomerative clustering starts with:', 'Each point as its own cluster', 'One cluster containing everything', 'No points', 'Only labeled points', 'A', 'Medium', 'Agglomerative clustering is bottom-up and initially treats each observation as a separate cluster.'),

-- Q114
('Machine Learning', 'Divisive hierarchical clustering is:', 'Top-down', 'Bottom-up', 'Random-only', 'Regression-based', 'A', 'Medium', 'Divisive clustering begins with one large cluster and splits it.'),

-- Q115
('Machine Learning', 'What is DBSCAN?', 'Density-based clustering algorithm', 'Regression algorithm', 'Classification tree', 'Feature scaling method', 'A', 'Medium', 'DBSCAN groups points based on density.'),

-- Q116
('Machine Learning', 'One advantage of DBSCAN is:', 'It can identify noise points', 'It always requires K', 'It only works on labeled data', 'It requires linear boundaries', 'A', 'Medium', 'DBSCAN can classify sparse observations as noise.'),

-- Q117
('Machine Learning', 'DBSCAN uses which important concepts?', 'Epsilon and minimum points', 'Accuracy and recall', 'Mean and variance only', 'Tree depth and leaves', 'A', 'Medium', 'DBSCAN uses a neighborhood radius and minimum number of points.'),

-- Q118
('Machine Learning', 'DBSCAN can find:', 'Arbitrarily shaped clusters', 'Only circular clusters', 'Only binary classes', 'Only regression lines', 'A', 'Medium', 'Density-based clustering can discover non-spherical cluster shapes.'),

-- Q119
('Machine Learning', 'What is an outlier?', 'An observation substantially different from others', 'A cluster center', 'A label', 'A feature name', 'A', 'Medium', 'Outliers are observations that deviate strongly from typical patterns.'),

-- Q120
('Machine Learning', 'Which method can be used for anomaly detection?', 'Isolation Forest', 'Linear regression only', 'One-hot encoding', 'Standardization only', 'A', 'Medium', 'Isolation Forest is designed to identify unusual observations.'),

-- Q121
('Machine Learning', 'What is dimensionality reduction?', 'Reducing the number of input dimensions', 'Increasing the number of rows', 'Increasing database size', 'Adding labels', 'A', 'Medium', 'Dimensionality reduction represents data using fewer dimensions.'),

-- Q122
('Machine Learning', 'PCA stands for:', 'Principal Component Analysis', 'Predictive Classification Algorithm', 'Primary Cluster Analysis', 'Principal Classification Approach', 'A', 'Medium', 'PCA is a widely used dimensionality-reduction technique.'),

-- Q123
('Machine Learning', 'PCA creates:', 'New orthogonal components', 'New labels', 'New database tables', 'New classes automatically', 'A', 'Medium', 'PCA transforms original variables into principal components.'),

-- Q124
('Machine Learning', 'The first principal component captures:', 'Maximum variance among directions considered', 'Minimum dataset size', 'Maximum labels', 'Minimum number of rows', 'A', 'Medium', 'The first component captures the greatest possible variance under PCA''s constraints.'),

-- Q125
('Machine Learning', 'PCA is commonly used for:', 'Visualization and dimensionality reduction', 'Database creation', 'Password generation', 'Web design', 'A', 'Medium', 'PCA can reduce high-dimensional data for modeling or visualization.'),

-- Q126
('Machine Learning', 'Before PCA, features are often standardized when:', 'Features have substantially different scales', 'Labels are missing', 'Data is already categorical only', 'No features exist', 'A', 'Medium', 'Standardization prevents large-scale features from dominating variance-based PCA.'),

-- Q127
('Machine Learning', 'PCA components are:', 'Linear combinations of original features', 'Original labels only', 'Database records', 'Class names', 'A', 'Medium', 'Each principal component is a weighted combination of original variables.'),

-- Q128
('Machine Learning', 'What is explained variance?', 'Amount of data variance captured by components', 'Number of classes', 'Number of rows', 'Classification accuracy', 'A', 'Medium', 'Explained variance indicates how much variability is represented by selected components.'),

-- Q129
('Machine Learning', 'Which technique can reduce features by selecting existing variables?', 'Feature selection', 'PCA', 'K-means', 'Bagging', 'A', 'Medium', 'Feature selection retains selected original features rather than creating transformed components.'),

-- Q130
('Machine Learning', 'Feature extraction means:', 'Creating new representations from original data', 'Deleting the dataset', 'Removing labels only', 'Sorting rows', 'A', 'Medium', 'Feature extraction transforms raw variables into useful representations.'),

-- Q131
('Machine Learning', 'What is correlation?', 'A measure of relationship between variables', 'Number of classes', 'Number of records', 'Model size', 'A', 'Medium', 'Correlation measures the strength and direction of association between variables.'),

-- Q132
('Machine Learning', 'A correlation close to +1 indicates:', 'Strong positive linear relationship', 'Strong negative relationship', 'No linear relationship', 'Missing data', 'A', 'Medium', 'Positive correlation close to 1 indicates variables tend to increase together linearly.'),

-- Q133
('Machine Learning', 'A correlation close to -1 indicates:', 'Strong negative linear relationship', 'Strong positive relationship', 'No relationship', 'Perfect clustering', 'A', 'Medium', 'Negative correlation close to -1 means one variable tends to increase as the other decreases.'),

-- Q134
('Machine Learning', 'A correlation close to 0 indicates:', 'Little or no linear relationship', 'Perfect positive relationship', 'Perfect negative relationship', 'Identical variables', 'A', 'Medium', 'A correlation near zero indicates weak linear association, though nonlinear relationships may still exist.'),

-- Q135
('Machine Learning', 'What is multicollinearity?', 'Strong correlation among predictor variables', 'Missing target values', 'Multiple datasets', 'Multiple labels only', 'A', 'Medium', 'Multicollinearity can make coefficient estimates unstable in some models.'),

-- Q136
('Machine Learning', 'Which method can help reduce multicollinearity?', 'Removing or combining correlated features', 'Adding duplicate features', 'Removing the target', 'Increasing missing values', 'A', 'Medium', 'Feature selection or dimensionality reduction can reduce redundant predictors.'),

-- Q137
('Machine Learning', 'What is association rule learning used for?', 'Discovering relationships among items', 'Predicting continuous values only', 'Image rendering', 'Tree pruning', 'A', 'Medium', 'Association rules can discover patterns such as items frequently occurring together.'),

-- Q138
('Machine Learning', 'Market basket analysis is related to:', 'Association rule mining', 'Linear regression only', 'PCA only', 'SVM only', 'A', 'Medium', 'Market basket analysis discovers co-occurring products.'),

-- Q139
('Machine Learning', 'What does support measure in association rules?', 'Frequency of an itemset in the dataset', 'Model accuracy', 'Tree depth', 'Feature variance', 'A', 'Medium', 'Support measures how often an itemset occurs.'),

-- Q140
('Machine Learning', 'What does confidence measure?', 'Conditional likelihood of consequent given antecedent', 'Number of clusters', 'Regression error', 'Feature scale', 'A', 'Medium', 'Confidence estimates how frequently the consequent appears when the antecedent occurs.'),

-- Q141
('Machine Learning', 'What is lift?', 'Measure comparing observed co-occurrence with expected co-occurrence', 'A scaling algorithm', 'A regression coefficient', 'A clustering center', 'A', 'Medium', 'Lift compares the rule''s observed frequency with what would be expected if items were independent.'),

-- Q142
('Machine Learning', 'What is latent structure?', 'Hidden patterns or variables inferred from observed data', 'Database structure only', 'File format', 'HTML structure', 'A', 'Medium', 'Latent variables represent underlying factors that are not directly observed.'),

-- Q143
('Machine Learning', 'What is anomaly detection?', 'Identifying unusual observations', 'Predicting only normal values', 'Creating labels manually', 'Sorting data', 'A', 'Medium', 'Anomaly detection identifies observations that differ from expected behavior.'),

-- Q144
('Machine Learning', 'What is novelty detection?', 'Identifying new or unusual observations relative to known normal data', 'Finding duplicate rows', 'Scaling data', 'Finding class labels', 'A', 'Medium', 'Novelty detection models normal behavior and identifies deviations.'),

-- Q145
('Machine Learning', 'Which is a common challenge in unsupervised learning?', 'Evaluating clusters without ground-truth labels', 'Always having too many labels', 'Having no features', 'Having only binary outputs', 'A', 'Medium', 'Without known labels, determining whether discovered clusters are meaningful can be difficult.'),

-- Q146
('Machine Learning', 'What is cluster cohesion?', 'Similarity among points within a cluster', 'Distance between different clusters only', 'Number of labels', 'Dataset size', 'A', 'Medium', 'Good clusters generally have high internal similarity.'),

-- Q147
('Machine Learning', 'What is cluster separation?', 'Difference between distinct clusters', 'Similarity within a cluster', 'Number of features', 'Number of rows', 'A', 'Medium', 'Good clustering generally has strong separation between clusters.'),

-- Q148
('Machine Learning', 'Which algorithm is sensitive to feature scaling?', 'K-means', 'Decision tree', 'Random forest', 'Rule-based tree', 'A', 'Medium', 'K-means relies on distances, which are affected by feature scales.'),

-- Q149
('Machine Learning', 'What happens when irrelevant features are included in distance-based clustering?', 'Cluster quality can decrease', 'Accuracy always increases', 'Labels appear automatically', 'Dataset size decreases', 'A', 'Medium', 'Irrelevant dimensions can distort distances and make clustering less meaningful.'),

-- Q150
('Machine Learning', 'What is the purpose of visualization in unsupervised learning?', 'Help understand discovered patterns and structure', 'Automatically guarantee correct clusters', 'Replace all evaluation', 'Create labels automatically', 'A', 'Medium', 'Visualization can help inspect clusters, outliers, and reduced-dimensional representations.'),

-- Q151
('Machine Learning', 'Accuracy is calculated as:', 'Correct predictions / total predictions', 'TP / FP', 'FP / TP', 'Errors / features', 'A', 'Hard', 'Accuracy is the proportion of all predictions that are correct.'),

-- Q152
('Machine Learning', 'Precision is:', 'TP / (TP + FP)', 'TP / (TP + FN)', 'TN / (TN + FP)', 'FP / total', 'A', 'Hard', 'Precision measures how many predicted positives are actually positive.'),

-- Q153
('Machine Learning', 'Recall is:', 'TP / (TP + FN)', 'TP / (TP + FP)', 'TN / (TN + FN)', 'FP / total', 'A', 'Hard', 'Recall measures how many actual positives are correctly identified.'),

-- Q154
('Machine Learning', 'F1-score is:', 'Harmonic mean of precision and recall', 'Arithmetic mean of accuracy and recall', 'Difference between TP and TN', 'Ratio of FP and FN', 'A', 'Hard', 'F1 balances precision and recall.'),

-- Q155
('Machine Learning', 'Which metric is especially useful when false negatives are costly?', 'Recall', 'Precision only', 'R²', 'MAE', 'A', 'Hard', 'High recall helps reduce missed positive cases.'),

-- Q156
('Machine Learning', 'Which metric focuses on the correctness of positive predictions?', 'Precision', 'Recall', 'RMSE', 'R²', 'A', 'Hard', 'Precision measures the proportion of predicted positives that are correct.'),

-- Q157
('Machine Learning', 'ROC stands for:', 'Receiver Operating Characteristic', 'Random Output Classification', 'Regression Operating Curve', 'Relative Output Calculation', 'A', 'Hard', 'ROC analysis examines true-positive and false-positive rates across thresholds.'),

-- Q158
('Machine Learning', 'ROC-AUC measures:', 'Ranking ability across classification thresholds', 'Regression error', 'Number of features', 'Training time', 'A', 'Hard', 'AUC summarizes the ROC curve and measures discrimination ability across thresholds.'),

-- Q159
('Machine Learning', 'For highly imbalanced classes, which can be more informative than accuracy?', 'Precision and recall', 'Number of rows', 'Feature count', 'Training time', 'A', 'Hard', 'Accuracy can be misleading when one class dominates.'),

-- Q160
('Machine Learning', 'What is PR-AUC?', 'Area under the Precision-Recall curve', 'Prediction Regression Accuracy', 'Principal Reduction Algorithm', 'Parameter Rate Analysis', 'A', 'Hard', 'PR-AUC summarizes the precision-recall tradeoff and can be useful for imbalanced classification.'),

-- Q161
('Machine Learning', 'MAE stands for:', 'Mean Absolute Error', 'Maximum Accuracy Estimate', 'Mean Algorithm Evaluation', 'Model Average Efficiency', 'A', 'Hard', 'MAE averages the absolute prediction errors.'),

-- Q162
('Machine Learning', 'MSE stands for:', 'Mean Squared Error', 'Model Scaling Evaluation', 'Mean Sample Estimate', 'Maximum Squared Evaluation', 'A', 'Hard', 'MSE averages squared prediction errors.'),

-- Q163
('Machine Learning', 'RMSE is:', 'Square root of MSE', 'Square of MAE', 'Mean of R²', 'Reciprocal of MSE', 'A', 'Hard', 'RMSE is the square root of mean squared error.'),

-- Q164
('Machine Learning', 'Which regression metric is in the same units as the target?', 'RMSE', 'MSE', 'Squared error', 'Variance', 'A', 'Hard', 'Taking the square root returns RMSE to the original target units.'),

-- Q165
('Machine Learning', 'What does R² measure?', 'Proportion of target variance explained by the model relative to a baseline', 'Number of features', 'Classification precision', 'Number of clusters', 'A', 'Hard', 'R² evaluates explained variation compared with a baseline predictor.'),

-- Q166
('Machine Learning', 'What is log loss?', 'A probability-based classification loss', 'A clustering score', 'A feature scaling method', 'A tree-pruning method', 'A', 'Hard', 'Log loss penalizes incorrect probabilistic predictions, especially confident wrong ones.'),

-- Q167
('Machine Learning', 'What is a threshold in binary classification?', 'Probability cutoff used to assign a class', 'Number of features', 'Dataset size', 'Tree depth', 'A', 'Hard', 'A threshold converts predicted probabilities into class decisions.'),

-- Q168
('Machine Learning', 'Lowering a classification threshold generally tends to:', 'Increase recall and decrease precision in many cases', 'Always increase both', 'Always decrease both', 'Have no possible effect', 'A', 'Hard', 'A lower threshold usually labels more cases as positive, increasing recall while potentially lowering precision.'),

-- Q169
('Machine Learning', 'What is calibration?', 'Agreement between predicted probabilities and observed frequencies', 'Feature scaling only', 'Clustering quality', 'Tree depth', 'A', 'Hard', 'A well-calibrated model''s predicted probabilities correspond closely to actual outcome frequencies.'),

-- Q170
('Machine Learning', 'What is bias in the bias-variance trade-off?', 'Error from overly simplifying the underlying relationship', 'Random noise only', 'Number of classes', 'Number of rows', 'A', 'Hard', 'High bias often results from models that are too simple.'),

-- Q171
('Machine Learning', 'What is variance in ML?', 'Sensitivity of a model to changes in training data', 'Number of features', 'Classification accuracy', 'Number of labels', 'A', 'Hard', 'High-variance models can change substantially when the training data changes.'),

-- Q172
('Machine Learning', 'High variance is commonly associated with:', 'Overfitting', 'Underfitting', 'No training', 'Data encoding', 'A', 'Hard', 'High variance means the model may fit training data too closely.'),

-- Q173
('Machine Learning', 'High bias is commonly associated with:', 'Underfitting', 'Overfitting', 'Data leakage', 'High dimensionality only', 'A', 'Hard', 'High bias often indicates the model is too simple.'),

-- Q174
('Machine Learning', 'Which can help reduce overfitting?', 'Regularization', 'Increasing irrelevant features', 'Training on test data', 'Increasing leakage', 'A', 'Hard', 'Regularization discourages excessive model complexity.'),

-- Q175
('Machine Learning', 'L2 regularization penalizes:', 'Squared coefficients', 'Absolute coefficients only', 'Number of labels', 'Number of rows', 'A', 'Hard', 'L2 regularization adds a penalty based on squared parameter values.'),

-- Q176
('Machine Learning', 'Which regularization is associated with sparsity?', 'L1', 'L2', 'No regularization', 'Batch normalization', 'A', 'Hard', 'L1 regularization can set some coefficients to zero.'),

-- Q177
('Machine Learning', 'What is gradient descent?', 'Optimization method that updates parameters using gradients', 'Clustering method', 'Encoding method', 'Data-splitting method', 'A', 'Hard', 'Gradient descent iteratively moves parameters in a direction that reduces the objective.'),

-- Q178
('Machine Learning', 'A gradient indicates:', 'Direction and rate of change of a function', 'Number of classes', 'Dataset size', 'Number of rows', 'A', 'Hard', 'The gradient gives the direction of steepest increase for a differentiable function.'),

-- Q179
('Machine Learning', 'Gradient descent usually moves:', 'Opposite the gradient', 'In the same direction as the gradient', 'Randomly only', 'Toward larger loss', 'A', 'Hard', 'Moving opposite the gradient tends to reduce the objective function.'),

-- Q180
('Machine Learning', 'What happens with an excessively large learning rate?', 'Optimization may overshoot or diverge', 'Model always improves', 'Features disappear', 'Data becomes categorical', 'A', 'Hard', 'Very large updates can prevent the optimizer from reaching a good solution.'),

-- Q181
('Machine Learning', 'What is batch gradient descent?', 'Uses the entire training set for each update', 'Uses one example only for every update', 'Uses no data', 'Uses only test data', 'A', 'Hard', 'Batch gradient descent calculates each update using all training examples.'),

-- Q182
('Machine Learning', 'What is stochastic gradient descent?', 'Uses one training example per update', 'Uses all examples only', 'Uses no examples', 'Uses only labels', 'A', 'Hard', 'SGD updates parameters using individual randomly selected training examples.'),

-- Q183
('Machine Learning', 'Mini-batch gradient descent uses:', 'Small batches of training examples', 'Only one sample always', 'The entire dataset always', 'Test data only', 'A', 'Hard', 'Mini-batch training balances computational efficiency and update frequency.'),

-- Q184
('Machine Learning', 'What is early stopping?', 'Stop training when validation performance stops improving', 'Stop before loading data', 'Delete the model', 'Remove all features', 'A', 'Hard', 'Early stopping can prevent overfitting during iterative training.'),

-- Q185
('Machine Learning', 'What is hyperparameter tuning?', 'Searching for suitable hyperparameter values', 'Changing labels randomly', 'Deleting test data', 'Removing all features', 'A', 'Hard', 'Hyperparameter tuning searches for settings that improve validation performance.'),

-- Q186
('Machine Learning', 'Which is a hyperparameter of a decision tree?', 'Maximum depth', 'Learned leaf prediction only', 'Training label', 'Test prediction', 'A', 'Hard', 'Maximum tree depth is chosen as a model setting.'),

-- Q187
('Machine Learning', 'Grid search does what?', 'Tests specified combinations of hyperparameters', 'Creates a geographic map', 'Removes missing values', 'Performs clustering automatically', 'A', 'Hard', 'Grid search evaluates predefined combinations of hyperparameter values.'),

-- Q188
('Machine Learning', 'Random search differs from grid search because it:', 'Samples hyperparameter combinations randomly', 'Never uses validation data', 'Only tests one combination', 'Cannot tune models', 'A', 'Hard', 'Random search samples configurations from specified distributions or ranges.'),

-- Q189
('Machine Learning', 'What is a pipeline in ML?', 'A sequence of preprocessing and modeling steps', 'A database connection', 'A hardware cable', 'A visualization only', 'A', 'Hard', 'Pipelines help organize transformations and model training consistently.'),

-- Q190
('Machine Learning', 'Why should preprocessing be fitted only on training data?', 'To avoid information leakage', 'To reduce labels', 'To increase missing values', 'To remove the test set', 'A', 'Hard', 'Fitting preprocessing on all data can leak information from validation or test sets.'),

-- Q191
('Machine Learning', 'What is class imbalance?', 'Unequal representation of classes', 'Equal representation of all classes', 'Missing features only', 'Continuous target values', 'A', 'Hard', 'Class imbalance occurs when some classes have many more examples than others.'),

-- Q192
('Machine Learning', 'Which technique can help address class imbalance?', 'Class weighting', 'Adding test labels', 'Data leakage', 'Removing all minority examples', 'A', 'Hard', 'Class weights can make mistakes on minority classes more influential during training.'),

-- Q193
('Machine Learning', 'What is oversampling?', 'Increasing representation of minority examples', 'Removing minority examples', 'Removing all features', 'Reducing test data', 'A', 'Hard', 'Oversampling increases the effective representation of underrepresented classes.'),

-- Q194
('Machine Learning', 'What is undersampling?', 'Reducing examples from a majority class', 'Increasing all features', 'Adding labels', 'Increasing tree depth', 'A', 'Hard', 'Undersampling reduces the size of the majority class.'),

-- Q195
('Machine Learning', 'What is SHAP used for conceptually?', 'Explaining feature contributions to predictions', 'Clustering images', 'Scaling data', 'Splitting datasets', 'A', 'Hard', 'SHAP provides feature-attribution explanations for model predictions.'),

-- Q196
('Machine Learning', 'What is feature importance?', 'Estimate of how useful features are to a model''s predictions', 'Number of rows', 'Dataset file size', 'Number of labels only', 'A', 'Hard', 'Feature importance methods estimate the contribution or usefulness of input features.'),

-- Q197
('Machine Learning', 'What is model drift?', 'Change in data or relationships that can reduce model performance over time', 'Faster training', 'Feature scaling', 'More CPU memory', 'A', 'Hard', 'Changes in data distributions or relationships can cause deployed models to degrade.'),

-- Q198
('Machine Learning', 'What is concept drift?', 'Change in the relationship between inputs and target', 'Change in file format only', 'Change in CPU speed', 'Change in feature names only', 'A', 'Hard', 'Concept drift occurs when the underlying relationship being modeled changes.'),

-- Q199
('Machine Learning', 'Why is fairness important in Machine Learning?', 'Models can produce systematically different outcomes for different groups', 'It increases dataset size automatically', 'It eliminates all errors', 'It removes the need for testing', 'A', 'Hard', 'ML systems should be evaluated for potentially harmful or unfair differences in outcomes.'),

-- Q200
('Machine Learning', 'Which is an important practice before deploying an ML model?', 'Evaluate performance on appropriate unseen data', 'Train on the test set', 'Ignore data quality', 'Remove monitoring', 'A', 'Hard', 'Proper evaluation on unseen data helps estimate real-world generalization.');

-- Verification 1
SELECT COUNT(*) AS machine_learning_questions
FROM questions
WHERE skill = 'Machine Learning';

-- Verification 2
SELECT COUNT(DISTINCT question) AS unique_machine_learning_questions
FROM questions
WHERE skill = 'Machine Learning';

-- Verification 3
SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
