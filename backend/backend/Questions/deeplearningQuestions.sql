USE ai_interviewer;

-- Deep Learning 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Deep Learning';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Deep Learning', 'What is Deep Learning?', 'A subset of Machine Learning using multi-layer neural networks', 'A database technology', 'A web development framework', 'A programming language', 'A', 'Easy', 'Deep Learning uses neural networks with multiple layers to learn complex patterns.'),

-- Q2
('Deep Learning', 'Deep Learning is a subset of:', 'Artificial Intelligence and Machine Learning', 'HTML', 'SQL', 'Networking', 'A', 'Easy', 'Deep Learning is a specialized area within Machine Learning, which is part of AI.'),

-- Q3
('Deep Learning', 'The basic computational unit of a neural network is called:', 'Neuron', 'Cluster', 'Query', 'Token', 'A', 'Easy', 'A neuron receives inputs, applies weights and an activation function, and produces an output.'),

-- Q4
('Deep Learning', 'What connects neurons in a neural network?', 'Weights', 'Tables', 'URLs', 'Files', 'A', 'Easy', 'Weights determine how strongly one neuron''s output influences another.'),

-- Q5
('Deep Learning', 'What is a bias in a neural network?', 'An additional learnable parameter', 'A dataset label', 'A missing value', 'A cluster', 'A', 'Easy', 'Bias allows a neuron to shift its activation independently of the weighted inputs.'),

-- Q6
('Deep Learning', 'What is an input layer?', 'Layer that receives input features', 'Final prediction layer only', 'Error layer', 'Database layer', 'A', 'Easy', 'The input layer receives the features supplied to the neural network.'),

-- Q7
('Deep Learning', 'What is a hidden layer?', 'Layer between input and output layers', 'A deleted layer', 'Database layer', 'Test layer', 'A', 'Easy', 'Hidden layers transform representations between inputs and outputs.'),

-- Q8
('Deep Learning', 'What is an output layer?', 'Layer producing final model output', 'Layer containing raw data', 'First hidden layer', 'Dataset storage layer', 'A', 'Easy', 'The output layer generates predictions or final representations.'),

-- Q9
('Deep Learning', 'Why are multiple hidden layers useful?', 'They can learn hierarchical representations', 'They always reduce data size', 'They remove all errors', 'They eliminate training', 'A', 'Easy', 'Deeper networks can learn increasingly complex representations.'),

-- Q10
('Deep Learning', 'What is a feedforward neural network?', 'Information flows from input toward output without recurrent connections', 'Network with only backward connections', 'Database network', 'Wireless network', 'A', 'Easy', 'In a feedforward network, information moves through the network in one general direction.'),

-- Q11
('Deep Learning', 'What is an activation function?', 'Function applied to a neuron''s weighted input', 'Data storage function', 'Database command', 'File compression function', 'A', 'Easy', 'Activation functions introduce nonlinear behavior into neural networks.'),

-- Q12
('Deep Learning', 'Why is nonlinearity important in neural networks?', 'It allows learning complex relationships', 'It removes the need for data', 'It guarantees perfect accuracy', 'It decreases all parameters', 'A', 'Easy', 'Without nonlinear activations, stacked linear layers remain equivalent to a linear transformation.'),

-- Q13
('Deep Learning', 'Which is a common activation function?', 'ReLU', 'SQL', 'HTML', 'CSV', 'A', 'Easy', 'ReLU is widely used in hidden layers.'),

-- Q14
('Deep Learning', 'ReLU is defined as:', 'max(0, x)', 'x²', '1/x', 'log(x) only', 'A', 'Easy', 'ReLU outputs zero for negative inputs and the input itself for positive values.'),

-- Q15
('Deep Learning', 'What is the main advantage of ReLU?', 'Simple computation and useful gradient behavior for positive inputs', 'It always outputs probabilities', 'It removes all overfitting', 'It requires no training', 'A', 'Easy', 'ReLU is computationally simple and generally helps deep networks train effectively.'),

-- Q16
('Deep Learning', 'What is the sigmoid activation range?', '0 to 1', '-∞ to ∞', '-1 to 1 only', '1 to 100', 'A', 'Easy', 'Sigmoid maps real-valued inputs to values between 0 and 1.'),

-- Q17
('Deep Learning', 'Sigmoid is commonly used for:', 'Binary classification output probabilities', 'Image resizing', 'Clustering', 'Sorting', 'A', 'Easy', 'Sigmoid can represent the probability of one class in binary classification.'),

-- Q18
('Deep Learning', 'What is tanh''s output range?', '-1 to 1', '0 to 1', '0 to ∞', '-∞ to 0', 'A', 'Easy', 'The hyperbolic tangent maps inputs to values between -1 and 1.'),

-- Q19
('Deep Learning', 'What does softmax produce?', 'A probability distribution across classes', 'A database table', 'Continuous image pixels only', 'Cluster centers', 'A', 'Easy', 'Softmax converts class scores into probabilities that sum to 1.'),

-- Q20
('Deep Learning', 'Softmax is commonly used in:', 'Multiclass classification output layers', 'Regression preprocessing', 'Database queries', 'Image resizing', 'A', 'Easy', 'Softmax is commonly used when exactly one class is selected among multiple classes.'),

-- Q21
('Deep Learning', 'What is forward propagation?', 'Computing predictions from input through the network', 'Updating weights backward', 'Splitting the dataset', 'Removing neurons', 'A', 'Easy', 'Forward propagation calculates outputs layer by layer.'),

-- Q22
('Deep Learning', 'What is backpropagation?', 'Computing gradients and propagating error information backward', 'Sending data to a database', 'Removing hidden layers', 'Sorting predictions', 'A', 'Easy', 'Backpropagation efficiently calculates gradients of the loss with respect to model parameters.'),

-- Q23
('Deep Learning', 'What is a gradient?', 'Direction and rate of change of a function', 'Number of neurons', 'Dataset size', 'Class label', 'A', 'Easy', 'Gradients indicate how changes in parameters affect the loss.'),

-- Q24
('Deep Learning', 'Neural networks are usually trained by:', 'Optimizing a loss function', 'Manually setting every prediction', 'Deleting training data', 'Sorting labels', 'A', 'Easy', 'Training adjusts parameters to minimize an objective or loss function.'),

-- Q25
('Deep Learning', 'What is a loss function?', 'Measures how wrong predictions are', 'Counts only features', 'Stores images', 'Splits data', 'A', 'Easy', 'The loss quantifies the discrepancy between predictions and target values.'),

-- Q26
('Deep Learning', 'Which is common for regression?', 'Mean Squared Error', 'Cross-entropy only', 'Accuracy only', 'Recall only', 'A', 'Easy', 'MSE is commonly used as a regression loss.'),

-- Q27
('Deep Learning', 'Which loss is common for multiclass classification?', 'Categorical cross-entropy', 'Mean absolute error only', 'R²', 'RMSE only', 'A', 'Easy', 'Categorical cross-entropy compares predicted class probabilities with target classes.'),

-- Q28
('Deep Learning', 'Binary cross-entropy is commonly used for:', 'Binary classification', 'Clustering', 'PCA', 'Image compression', 'A', 'Easy', 'Binary cross-entropy is commonly used when the target has two classes.'),

-- Q29
('Deep Learning', 'What is an optimizer?', 'Algorithm that updates model parameters', 'Data format', 'Dataset label', 'Visualization', 'A', 'Easy', 'Optimizers use gradients to update neural-network parameters.'),

-- Q30
('Deep Learning', 'Which is a popular optimizer?', 'Adam', 'HTML', 'SQL', 'CSV', 'A', 'Easy', 'Adam is an adaptive optimization algorithm widely used for neural networks.'),

-- Q31
('Deep Learning', 'What does SGD stand for?', 'Stochastic Gradient Descent', 'Simple Gradient Database', 'Statistical Graph Data', 'Standard Group Distribution', 'A', 'Easy', 'SGD updates parameters using individual examples or small batches.'),

-- Q32
('Deep Learning', 'What is the learning rate?', 'Controls the size of parameter updates', 'Number of layers', 'Number of classes', 'Number of images', 'A', 'Easy', 'Learning rate determines how aggressively parameters are updated.'),

-- Q33
('Deep Learning', 'A learning rate that is too high can:', 'Cause unstable training', 'Always improve accuracy', 'Remove all weights', 'Eliminate the loss function', 'A', 'Easy', 'Excessively large updates can overshoot good solutions.'),

-- Q34
('Deep Learning', 'A learning rate that is too low can:', 'Make training very slow', 'Always cause divergence', 'Remove data', 'Increase classes', 'A', 'Easy', 'Very small updates may require many iterations to converge.'),

-- Q35
('Deep Learning', 'What is an epoch?', 'One complete pass through training data', 'One neuron', 'One prediction', 'One class', 'A', 'Easy', 'An epoch processes the entire training dataset once.'),

-- Q36
('Deep Learning', 'What is batch size?', 'Number of samples processed in one training batch', 'Number of classes', 'Number of layers', 'Number of outputs', 'A', 'Easy', 'Batch size controls how many examples contribute to each parameter update.'),

-- Q37
('Deep Learning', 'What is mini-batch training?', 'Training using small groups of samples', 'Training without data', 'Training only on test data', 'Training one class at a time always', 'A', 'Easy', 'Mini-batches are commonly used to make neural-network training efficient.'),

-- Q38
('Deep Learning', 'What is a parameter in a neural network?', 'A value learned during training', 'A fixed dataset label', 'A file extension', 'A class name', 'A', 'Easy', 'Weights and biases are learned parameters.'),

-- Q39
('Deep Learning', 'What is a hyperparameter?', 'Setting selected outside the learned parameter values', 'Output prediction', 'Learned weight', 'Training label', 'A', 'Easy', 'Examples include learning rate, batch size, and number of layers.'),

-- Q40
('Deep Learning', 'What is overfitting in deep learning?', 'Excellent training performance but poor generalization', 'Poor training and test performance always', 'No model parameters', 'No training data', 'A', 'Easy', 'Overfitting occurs when the network learns training-specific patterns too closely.'),

-- Q41
('Deep Learning', 'Which can help reduce overfitting?', 'Dropout', 'Increasing leakage', 'Training on test data', 'Removing validation', 'A', 'Easy', 'Dropout randomly disables units during training, which can improve generalization.'),

-- Q42
('Deep Learning', 'What does dropout do?', 'Randomly sets selected activations to zero during training', 'Deletes the entire dataset', 'Removes labels', 'Increases image resolution', 'A', 'Easy', 'Dropout acts as a regularization technique.'),

-- Q43
('Deep Learning', 'Is dropout usually active during inference?', 'No', 'Yes, always at the same rate', 'Only for test labels', 'Only for CNNs', 'A', 'Easy', 'Standard dropout is disabled during inference, with appropriate scaling handled by the implementation.'),

-- Q44
('Deep Learning', 'What is regularization?', 'Technique used to improve generalization by controlling model complexity', 'Data sorting', 'Image conversion', 'Label encoding only', 'A', 'Easy', 'Regularization discourages models from fitting noise excessively.'),

-- Q45
('Deep Learning', 'What is early stopping?', 'Stopping training when validation performance stops improving', 'Stopping before loading data', 'Removing the output layer', 'Deleting weights', 'A', 'Easy', 'Early stopping can prevent excessive fitting to training data.'),

-- Q46
('Deep Learning', 'What is validation data used for?', 'Model selection and tuning', 'Final production input only', 'Replacing training data', 'Storing source code', 'A', 'Easy', 'Validation data helps choose training settings and monitor generalization.'),

-- Q47
('Deep Learning', 'Why should test data remain separate?', 'To provide an unbiased final evaluation', 'To increase training accuracy', 'To tune every parameter', 'To create hidden layers', 'A', 'Easy', 'Using test data for tuning can lead to overly optimistic evaluation.'),

-- Q48
('Deep Learning', 'What is normalization in neural-network preprocessing?', 'Scaling input values into a suitable range', 'Removing all features', 'Adding labels', 'Increasing image size', 'A', 'Easy', 'Scaling inputs can make optimization easier.'),

-- Q49
('Deep Learning', 'Why are neural networks sensitive to input scaling?', 'Poorly scaled features can make optimization harder', 'Scaling changes labels automatically', 'Scaling removes neurons', 'Scaling always causes overfitting', 'A', 'Easy', 'Similar feature scales can improve optimization behavior.'),

-- Q50
('Deep Learning', 'What is a deep neural network?', 'Neural network with multiple hidden layers', 'Network with no hidden layers', 'Database system', 'Sorting algorithm', 'A', 'Easy', 'Multiple hidden layers give the network depth.'),

-- Q51
('Deep Learning', 'CNN stands for:', 'Convolutional Neural Network', 'Computer Numerical Network', 'Central Neural Node', 'Classification Network', 'A', 'Medium', 'CNNs are neural networks designed especially for structured grid data such as images.'),

-- Q52
('Deep Learning', 'CNNs are widely used for:', 'Image processing', 'SQL queries', 'Database normalization', 'Text file compression only', 'A', 'Medium', 'CNNs are highly effective for computer-vision tasks.'),

-- Q53
('Deep Learning', 'What is convolution?', 'Applying a filter across an input to extract patterns', 'Deleting image pixels', 'Sorting image files', 'Compressing databases', 'A', 'Medium', 'Convolution combines local input regions with learned filters.'),

-- Q54
('Deep Learning', 'What is a convolution kernel/filter?', 'Learnable matrix used to detect patterns', 'Database key', 'File extension', 'Class label', 'A', 'Medium', 'Filters learn features such as edges or textures.'),

-- Q55
('Deep Learning', 'Early CNN layers often detect:', 'Simple patterns such as edges', 'Complete objects only', 'Database records', 'Text paragraphs only', 'A', 'Medium', 'Lower layers commonly learn simple visual features.'),

-- Q56
('Deep Learning', 'Deeper CNN layers can learn:', 'More complex patterns and object-level features', 'Only individual pixels', 'Database tables', 'File names', 'A', 'Medium', 'Deeper representations combine lower-level features into more complex structures.'),

-- Q57
('Deep Learning', 'What is stride in convolution?', 'Number of pixels the filter moves at each step', 'Number of filters only', 'Image brightness', 'Number of classes', 'A', 'Medium', 'Stride controls the movement of the convolution filter.'),

-- Q58
('Deep Learning', 'Increasing stride generally:', 'Reduces spatial output dimensions', 'Always increases resolution', 'Adds labels', 'Removes channels only', 'A', 'Medium', 'Larger strides sample the input more coarsely.'),

-- Q59
('Deep Learning', 'What is padding?', 'Adding values around the input borders', 'Removing all borders', 'Increasing labels', 'Compressing the model', 'A', 'Medium', 'Padding can preserve spatial dimensions and allow border information to be processed.'),

-- Q60
('Deep Learning', '"Same" padding generally aims to:', 'Preserve spatial dimensions when stride is 1', 'Remove all pixels', 'Double the image size always', 'Convert RGB to grayscale', 'A', 'Medium', 'Same padding is commonly designed to maintain height and width for stride 1.'),

-- Q61
('Deep Learning', 'What is pooling?', 'Spatial downsampling operation', 'Label encoding', 'Data encryption', 'Weight initialization', 'A', 'Medium', 'Pooling reduces spatial dimensions and can provide some translation robustness.'),

-- Q62
('Deep Learning', 'Which is a common pooling operation?', 'Max pooling', 'SQL pooling', 'Text pooling', 'Database pooling', 'A', 'Medium', 'Max pooling selects the maximum value from each local region.'),

-- Q63
('Deep Learning', 'Average pooling calculates:', 'Average value within a local region', 'Maximum label', 'Number of classes', 'Sum of weights only', 'A', 'Medium', 'Average pooling summarizes a region using its mean.'),

-- Q64
('Deep Learning', 'What is global average pooling?', 'Averaging each feature map spatially into one value', 'Averaging all datasets', 'Averaging labels only', 'Averaging model losses', 'A', 'Medium', 'It converts each feature map into a single value.'),

-- Q65
('Deep Learning', 'What is an image channel?', 'A separate component such as a color channel', 'A database column only', 'A class label', 'A model parameter', 'A', 'Medium', 'RGB images commonly have three color channels.'),

-- Q66
('Deep Learning', 'RGB represents:', 'Red, Green, Blue', 'Random, Green, Black', 'Red, Gray, Blue', 'Right, Green, Bottom', 'A', 'Medium', 'RGB is a three-channel color representation.'),

-- Q67
('Deep Learning', 'A grayscale image commonly has:', 'One channel', 'Three mandatory channels', 'Four labels', 'Zero pixels', 'A', 'Medium', 'Grayscale images typically represent intensity with one channel.'),

-- Q68
('Deep Learning', 'What is image classification?', 'Assigning an image to one or more categories', 'Resizing an image only', 'Deleting pixels', 'Compressing files', 'A', 'Medium', 'Classification predicts category labels for images.'),

-- Q69
('Deep Learning', 'What is object detection?', 'Finding objects and their locations in an image', 'Classifying the entire image only', 'Resizing an image', 'Removing backgrounds only', 'A', 'Medium', 'Object detection typically predicts object classes and bounding boxes.'),

-- Q70
('Deep Learning', 'What is image segmentation?', 'Assigning labels to pixels or regions', 'Classifying only the whole image', 'Compressing images', 'Removing channels', 'A', 'Medium', 'Segmentation determines which pixels belong to particular regions or objects.'),

-- Q71
('Deep Learning', 'Semantic segmentation assigns:', 'A class to each pixel', 'One class to every image only', 'One bounding box per dataset', 'One label to each model', 'A', 'Medium', 'Semantic segmentation labels pixels according to their semantic category.'),

-- Q72
('Deep Learning', 'Instance segmentation differs because it:', 'Separates individual object instances', 'Uses no pixels', 'Only classifies images', 'Only detects edges', 'A', 'Medium', 'Instance segmentation distinguishes separate objects even when they share the same class.'),

-- Q73
('Deep Learning', 'What is a bounding box?', 'Rectangle locating an object', 'Neural-network layer', 'Dataset label only', 'Pooling operation', 'A', 'Medium', 'Object detectors often represent object locations with bounding boxes.'),

-- Q74
('Deep Learning', 'IoU stands for:', 'Intersection over Union', 'Input over Unit', 'Image Output Utility', 'Instance Object Unit', 'A', 'Medium', 'IoU measures overlap between two regions.'),

-- Q75
('Deep Learning', 'IoU is commonly used to evaluate:', 'Bounding-box overlap', 'Learning rate', 'Image brightness', 'Number of channels', 'A', 'Medium', 'IoU compares predicted and ground-truth regions.'),

-- Q76
('Deep Learning', 'What is data augmentation?', 'Creating varied training examples from existing data', 'Deleting training examples', 'Removing labels', 'Increasing model parameters only', 'A', 'Medium', 'Augmentation can include transformations such as flipping or cropping.'),

-- Q77
('Deep Learning', 'Why is image augmentation useful?', 'It can improve generalization', 'It guarantees 100% accuracy', 'It eliminates all labels', 'It removes the need for training', 'A', 'Medium', 'Augmentation exposes models to varied examples and can reduce overfitting.'),

-- Q78
('Deep Learning', 'Which is an image augmentation technique?', 'Horizontal flipping', 'SQL joining', 'One-hot database encoding', 'PCA only', 'A', 'Medium', 'Flipping can create additional training variations when appropriate.'),

-- Q79
('Deep Learning', 'What is transfer learning?', 'Reusing knowledge from a pretrained model for a new task', 'Moving files between computers', 'Transferring database records', 'Changing programming languages', 'A', 'Medium', 'Transfer learning can reduce training requirements for new tasks.'),

-- Q80
('Deep Learning', 'A pretrained CNN is:', 'A CNN trained previously on a dataset', 'An untrained network', 'A database', 'A clustering model', 'A', 'Medium', 'Pretrained networks provide learned parameters that can be reused.'),

-- Q81
('Deep Learning', 'What is fine-tuning?', 'Further training a pretrained model on a target dataset', 'Removing all pretrained weights', 'Changing image file names', 'Sorting classes', 'A', 'Medium', 'Fine-tuning adapts pretrained representations to a new task.'),

-- Q82
('Deep Learning', 'What is feature extraction using a pretrained CNN?', 'Using learned intermediate representations for another task', 'Extracting files from a computer', 'Deleting feature maps', 'Removing all layers', 'A', 'Medium', 'Pretrained layers can provide useful features for downstream tasks.'),

-- Q83
('Deep Learning', 'What is a feature map?', 'Output produced by applying a filter to an input', 'Dataset table', 'Class label', 'Model loss', 'A', 'Medium', 'Feature maps show where learned visual patterns are detected.'),

-- Q84
('Deep Learning', 'What does receptive field mean?', 'Input region influencing a neuron''s activation', 'Number of classes', 'Dataset size', 'Learning rate', 'A', 'Medium', 'A neuron''s receptive field is the portion of the input that can affect its output.'),

-- Q85
('Deep Learning', 'What is a fully connected layer?', 'Layer where neurons connect to all outputs of the previous layer', 'Layer with no parameters', 'Pooling layer', 'Input image', 'A', 'Medium', 'Fully connected layers connect each unit to every unit in the previous layer.'),

-- Q86
('Deep Learning', 'Why are fully connected layers sometimes replaced by global average pooling?', 'To reduce parameters and preserve spatially aggregated information', 'To increase image size', 'To remove all features', 'To create labels', 'A', 'Medium', 'Global average pooling can reduce parameter count and overfitting risk.'),

-- Q87
('Deep Learning', 'What is a residual connection?', 'Shortcut connection that bypasses one or more layers', 'Database connection', 'Network cable', 'Image border', 'A', 'Medium', 'Residual connections help information and gradients flow through deep networks.'),

-- Q88
('Deep Learning', 'ResNet is known for:', 'Residual connections', 'Database normalization', 'K-means clustering', 'Text tokenization', 'A', 'Medium', 'ResNet architectures use residual blocks to train deep networks effectively.'),

-- Q89
('Deep Learning', 'What problem can residual connections help address?', 'Difficulty training very deep networks', 'Missing labels only', 'Database errors', 'Image file corruption', 'A', 'Medium', 'Shortcut connections improve gradient flow in deep architectures.'),

-- Q90
('Deep Learning', 'What is a kernel size such as 3×3?', 'Spatial dimensions of a convolution filter', 'Number of classes', 'Number of epochs', 'Image channels', 'A', 'Medium', 'A 3×3 kernel examines a local 3-by-3 region at each convolution step.'),

-- Q91
('Deep Learning', 'What is channel depth in a CNN layer?', 'Number of feature maps/channels', 'Image height only', 'Number of classes only', 'Number of epochs', 'A', 'Medium', 'Each convolution filter generally produces one output feature map.'),

-- Q92
('Deep Learning', 'Increasing the number of filters generally:', 'Increases the number of learned feature maps', 'Removes all features', 'Decreases all computation', 'Removes channels', 'A', 'Medium', 'More filters allow a layer to learn more feature types but usually increase computation.'),

-- Q93
('Deep Learning', 'What is batch normalization?', 'Normalization technique applied to layer activations during training', 'Dataset deletion', 'Image classification', 'Clustering algorithm', 'A', 'Medium', 'Batch normalization normalizes activations using statistics derived from mini-batches.'),

-- Q94
('Deep Learning', 'Batch normalization can help:', 'Stabilize and speed up training in many networks', 'Guarantee no overfitting', 'Remove the need for labels', 'Eliminate all parameters', 'A', 'Medium', 'Batch normalization can improve optimization behavior.'),

-- Q95
('Deep Learning', 'What is data leakage in image classification?', 'Using information from evaluation data during training', 'Augmenting training images correctly', 'Normalizing inputs', 'Using CNN filters', 'A', 'Medium', 'Evaluation information must not influence model training or preprocessing decisions improperly.'),

-- Q96
('Deep Learning', 'Why should image augmentation be applied carefully?', 'Some transformations can change the true label', 'Augmentation always decreases accuracy', 'Augmentation removes pixels only', 'Augmentation cannot be used in training', 'A', 'Medium', 'A transformation should preserve the task''s meaning.'),

-- Q97
('Deep Learning', 'What is class imbalance in image datasets?', 'Some classes have many more examples than others', 'All classes have equal examples', 'Images have different sizes', 'Images have multiple channels', 'A', 'Medium', 'Imbalance can cause a model to favor majority classes.'),

-- Q98
('Deep Learning', 'Which metric is useful for imbalanced classification?', 'Precision, recall, and F1-score', 'Image width only', 'Training time only', 'Number of pixels only', 'A', 'Medium', 'These metrics provide more detailed information than accuracy alone.'),

-- Q99
('Deep Learning', 'What is a confusion matrix used for in image classification?', 'Analyzing predicted versus actual classes', 'Resizing images', 'Extracting pixels', 'Increasing channels', 'A', 'Medium', 'It shows which classes are being confused by the model.'),

-- Q100
('Deep Learning', 'What is computer vision?', 'Field concerned with enabling computers to interpret visual information', 'Database management', 'Web design', 'Network routing', 'A', 'Medium', 'Computer vision processes and interprets images and videos.'),

-- Q101
('Deep Learning', 'RNN stands for:', 'Recurrent Neural Network', 'Random Neural Node', 'Regression Neural Network', 'Recursive Numerical Network', 'A', 'Medium', 'RNNs are designed to process sequential information.'),

-- Q102
('Deep Learning', 'RNNs are especially suitable for:', 'Sequential data', 'Static database schemas', 'File compression', 'HTML rendering', 'A', 'Medium', 'RNNs maintain information across sequence steps.'),

-- Q103
('Deep Learning', 'Which is an example of sequential data?', 'Time-series values', 'A single constant', 'Database schema only', 'Image file name', 'A', 'Medium', 'Time-series observations have an ordered temporal structure.'),

-- Q104
('Deep Learning', 'An RNN maintains:', 'A hidden state', 'A database table', 'A fixed image', 'A class list only', 'A', 'Medium', 'The hidden state carries information from previous sequence steps.'),

-- Q105
('Deep Learning', 'What is the purpose of hidden state in an RNN?', 'Capture information from previous time steps', 'Store database records', 'Resize images', 'Encode URLs', 'A', 'Medium', 'Hidden state provides a form of memory across sequence positions.'),

-- Q106
('Deep Learning', 'What is backpropagation through time?', 'Applying backpropagation across sequence steps of an RNN', 'Image augmentation', 'Dataset splitting', 'Database backup', 'A', 'Medium', 'BPTT computes gradients through the unfolded recurrent computation.'),

-- Q107
('Deep Learning', 'What is the vanishing-gradient problem?', 'Gradients become extremely small during deep/recurrent backpropagation', 'Dataset becomes empty', 'Images disappear', 'Labels are deleted', 'A', 'Medium', 'Very small gradients can make learning long-range dependencies difficult.'),

-- Q108
('Deep Learning', 'What is the exploding-gradient problem?', 'Gradients become excessively large', 'Model loses all data', 'Classes disappear', 'Images become larger', 'A', 'Medium', 'Very large gradients can make training unstable.'),

-- Q109
('Deep Learning', 'Which technique can help with exploding gradients?', 'Gradient clipping', 'Increasing leakage', 'Removing validation', 'Deleting labels', 'A', 'Medium', 'Gradient clipping limits gradient magnitude.'),

-- Q110
('Deep Learning', 'LSTM stands for:', 'Long Short-Term Memory', 'Large Sequence Training Model', 'Long Statistical Transfer Machine', 'Linear Short-Term Model', 'A', 'Medium', 'LSTM is a recurrent architecture designed to handle long-term dependencies.'),

-- Q111
('Deep Learning', 'LSTM uses:', 'Gates', 'SQL tables', 'Image filters only', 'PCA components', 'A', 'Medium', 'Gates control information flow through the LSTM cell.'),

-- Q112
('Deep Learning', 'Which is an LSTM gate?', 'Forget gate', 'Database gate', 'Image gate', 'Query gate', 'A', 'Medium', 'The forget gate controls information removed from the cell state.'),

-- Q113
('Deep Learning', 'What does the forget gate control?', 'What information to remove from cell state', 'Image size', 'Number of classes', 'Dataset size', 'A', 'Medium', 'It determines which existing information should be discarded.'),

-- Q114
('Deep Learning', 'What does the input gate control?', 'What new information should be stored', 'Test-set size', 'Number of filters', 'Image resolution', 'A', 'Medium', 'The input gate controls incorporation of new information into the cell state.'),

-- Q115
('Deep Learning', 'What does the output gate control?', 'Information exposed as the hidden state', 'Dataset labels', 'Image channels', 'Learning rate only', 'A', 'Medium', 'The output gate controls which cell-state information becomes the hidden output.'),

-- Q116
('Deep Learning', 'What is the cell state in an LSTM?', 'Internal memory pathway', 'Database table', 'Input image', 'Class label', 'A', 'Medium', 'The cell state carries information through the sequence.'),

-- Q117
('Deep Learning', 'GRU stands for:', 'Gated Recurrent Unit', 'General Regression Unit', 'Graphical Recurrent Utility', 'Gradient Reduction Unit', 'A', 'Medium', 'GRU is a gated recurrent architecture.'),

-- Q118
('Deep Learning', 'Compared with LSTM, GRU generally:', 'Uses fewer gates and parameters', 'Has no recurrent state', 'Requires CNNs', 'Cannot process sequences', 'A', 'Medium', 'GRUs simplify the gating structure while retaining recurrent memory.'),

-- Q119
('Deep Learning', 'Which architecture is often used for sequence classification?', 'RNN/LSTM/GRU', 'PCA only', 'K-means only', 'Decision tree only', 'A', 'Medium', 'Recurrent architectures can summarize sequence information for classification.'),

-- Q120
('Deep Learning', 'What is sequence-to-one modeling?', 'A sequence produces one output', 'One input produces many unrelated outputs', 'No input produces output', 'One pixel produces one class', 'A', 'Medium', 'Sentiment classification of a sentence is an example.'),

-- Q121
('Deep Learning', 'What is sequence-to-sequence modeling?', 'Sequence input produces sequence output', 'One number produces no output', 'Image classification only', 'Clustering only', 'A', 'Medium', 'Translation is a common sequence-to-sequence task.'),

-- Q122
('Deep Learning', 'What is one-to-many modeling?', 'One input produces a sequence of outputs', 'Sequence produces one output', 'Many inputs produce one label only', 'No outputs', 'A', 'Medium', 'Image captioning can be viewed as generating a sequence from an image representation.'),

-- Q123
('Deep Learning', 'What is teacher forcing?', 'Feeding the true previous output as input during sequence training', 'Removing sequence labels', 'Increasing image resolution', 'Randomly deleting classes', 'A', 'Medium', 'Teacher forcing can make recurrent sequence training more efficient.'),

-- Q124
('Deep Learning', 'What is exposure bias?', 'Difference between training with true previous outputs and inference using model outputs', 'Image brightness problem', 'Dataset imbalance only', 'CNN padding problem', 'A', 'Medium', 'During training, teacher forcing may provide information unavailable at inference.'),

-- Q125
('Deep Learning', 'What is a bidirectional RNN?', 'Processes sequence in both forward and backward directions', 'Uses two datasets only', 'Uses two CNNs only', 'Predicts two classes only', 'A', 'Medium', 'Bidirectional networks use information from both past and future sequence positions.'),

-- Q126
('Deep Learning', 'Bidirectional models are useful when:', 'Future context is available for the task', 'Only past information is allowed', 'No sequence exists', 'Only images are used', 'A', 'Medium', 'They can use context from both directions when the application permits it.'),

-- Q127
('Deep Learning', 'Why may standard RNNs struggle with long sequences?', 'Vanishing or exploding gradients', 'Too many labels only', 'No hidden state', 'No parameters', 'A', 'Medium', 'Repeated recurrent transformations can cause unstable gradient magnitudes.'),

-- Q128
('Deep Learning', 'LSTM was designed partly to:', 'Better preserve long-term dependencies', 'Replace databases', 'Resize images', 'Perform SQL queries', 'A', 'Medium', 'Its gated memory helps preserve useful information across many time steps.'),

-- Q129
('Deep Learning', 'What is a time step?', 'One position in a sequence', 'One class', 'One filter', 'One hidden layer', 'A', 'Medium', 'Each sequential observation corresponds to a time or sequence step.'),

-- Q130
('Deep Learning', 'What is sequence length?', 'Number of positions in a sequence', 'Number of classes', 'Number of neurons only', 'Number of filters', 'A', 'Medium', 'Sequence length indicates how many time steps are processed.'),

-- Q131
('Deep Learning', 'What is padding in sequence processing?', 'Adding special values/tokens to make sequences compatible in length', 'Adding image borders', 'Increasing neurons', 'Removing labels', 'A', 'Medium', 'Padding allows variable-length sequences to be processed in batches.'),

-- Q132
('Deep Learning', 'What is masking?', 'Ignoring padded positions during computation or loss', 'Deleting real observations', 'Removing all labels', 'Increasing sequence length', 'A', 'Medium', 'Masking prevents padding values from influencing learning.'),

-- Q133
('Deep Learning', 'What is a time-series forecasting task?', 'Predicting future values from historical observations', 'Classifying images', 'Detecting edges', 'Clustering pixels', 'A', 'Medium', 'Forecasting uses historical sequences to predict future values.'),

-- Q134
('Deep Learning', 'Which neural architecture can be used for time series?', 'LSTM', 'PCA only', 'K-means only', 'Naive Bayes only', 'A', 'Medium', 'LSTMs can model temporal dependencies.'),

-- Q135
('Deep Learning', 'What is sequence classification?', 'Assigning a class to an entire sequence', 'Resizing each sequence', 'Clustering pixels', 'Compressing data', 'A', 'Medium', 'Sentiment classification of a sentence is a common example.'),

-- Q136
('Deep Learning', 'What is tokenization?', 'Splitting text into smaller units such as words or subwords', 'Scaling numerical values', 'Resizing images', 'Removing all text', 'A', 'Medium', 'Tokenization converts text into units suitable for language models.'),

-- Q137
('Deep Learning', 'What is an embedding?', 'Dense vector representation of discrete items', 'Image border', 'Database key', 'Loss function', 'A', 'Medium', 'Embeddings represent words, tokens, or other items in continuous vector spaces.'),

-- Q138
('Deep Learning', 'Word embeddings can capture:', 'Semantic and contextual relationships to some extent', 'Database indexes', 'Image resolution', 'File permissions', 'A', 'Medium', 'Similar meanings often correspond to related vector representations.'),

-- Q139
('Deep Learning', 'What is an embedding dimension?', 'Number of values in an embedding vector', 'Number of classes', 'Number of epochs', 'Number of training examples', 'A', 'Medium', 'It defines the length of each embedding vector.'),

-- Q140
('Deep Learning', 'What is sequence attention?', 'Mechanism that weights relevant parts of a sequence', 'Image compression', 'Database indexing', 'Random sampling', 'A', 'Medium', 'Attention allows a model to focus more on relevant sequence positions.'),

-- Q141
('Deep Learning', 'Attention is especially useful for:', 'Capturing relationships between different positions', 'Removing all tokens', 'Reducing image channels only', 'Sorting labels', 'A', 'Medium', 'Attention can connect information across distant positions.'),

-- Q142
('Deep Learning', 'What is an encoder?', 'Network component that transforms input into a representation', 'Database storage engine', 'Image file', 'Label generator only', 'A', 'Medium', 'Encoders create representations used by downstream components.'),

-- Q143
('Deep Learning', 'What is a decoder?', 'Component that generates or transforms an output from representations', 'Dataset cleaner', 'Image filter only', 'Database key', 'A', 'Medium', 'Decoders transform encoded information into task outputs.'),

-- Q144
('Deep Learning', 'What is multimodal learning?', 'Learning from multiple data modalities', 'Learning from one feature only', 'Database normalization', 'Image resizing', 'A', 'Medium', 'Modalities can include text, images, audio, and structured data.'),

-- Q145
('Deep Learning', 'What is speech recognition?', 'Converting spoken audio into text or recognized linguistic units', 'Image classification', 'Database clustering', 'Image segmentation', 'A', 'Medium', 'Speech recognition systems analyze audio to produce textual or linguistic outputs.'),

-- Q146
('Deep Learning', 'Deep learning can be used for speech recognition because:', 'Neural networks can learn patterns in audio representations', 'Speech contains no patterns', 'It requires only SQL', 'It cannot process sequences', 'A', 'Medium', 'Deep models can learn acoustic and linguistic patterns.'),

-- Q147
('Deep Learning', 'What is sequence generation?', 'Producing a sequence one or more elements at a time', 'Deleting sequence elements', 'Sorting a sequence', 'Clustering images', 'A', 'Medium', 'Text generation is a common sequence-generation task.'),

-- Q148
('Deep Learning', 'What is autoregressive generation?', 'Predicting the next element based on previous elements', 'Predicting all outputs without input', 'Clustering tokens', 'Removing sequence order', 'A', 'Medium', 'Autoregressive models generate outputs step by step using previous context.'),

-- Q149
('Deep Learning', 'What is teacher forcing mainly used during?', 'Training sequence models', 'Image resizing', 'Dataset visualization', 'Database creation', 'A', 'Medium', 'It provides the correct previous output as input during training.'),

-- Q150
('Deep Learning', 'Which is a major advantage of LSTM over a basic RNN?', 'Better handling of long-term dependencies', 'No parameters', 'No training required', 'It only works on images', 'A', 'Medium', 'LSTM''s memory and gating mechanisms help preserve important information over longer sequences.'),

-- Q151
('Deep Learning', 'What is an autoencoder?', 'Neural network that learns to reconstruct input data', 'Classification tree', 'Database system', 'Clustering algorithm only', 'A', 'Hard', 'Autoencoders learn compressed representations and reconstruct their inputs.'),

-- Q152
('Deep Learning', 'An autoencoder usually contains:', 'Encoder and decoder', 'Only a database', 'Only an input layer', 'Only a classifier', 'A', 'Hard', 'The encoder creates a representation and the decoder reconstructs the input.'),

-- Q153
('Deep Learning', 'What is the bottleneck in an autoencoder?', 'Lower-dimensional representation', 'Output database', 'Training label', 'Image border', 'A', 'Hard', 'The bottleneck forces the network to learn a compact representation.'),

-- Q154
('Deep Learning', 'What can autoencoders be used for?', 'Dimensionality reduction and representation learning', 'SQL queries only', 'Web styling', 'Sorting numbers', 'A', 'Hard', 'Autoencoders can learn useful compact representations.'),

-- Q155
('Deep Learning', 'What is a denoising autoencoder?', 'Autoencoder trained to reconstruct clean input from corrupted input', 'Model that adds noise only', 'Classification-only network', 'Database cleaner', 'A', 'Hard', 'It learns representations that are useful for removing input corruption.'),

-- Q156
('Deep Learning', 'What is a variational autoencoder?', 'Generative model based on probabilistic latent representations', 'Decision tree', 'K-means model', 'Linear regression', 'A', 'Hard', 'VAEs learn a structured latent distribution from which new samples can be generated.'),

-- Q157
('Deep Learning', 'VAE stands for:', 'Variational Autoencoder', 'Variable Algorithm Encoder', 'Visual AI Engine', 'Vector Analysis Evaluator', 'A', 'Hard', 'VAE is a probabilistic generative neural architecture.'),

-- Q158
('Deep Learning', 'What is a GAN?', 'Generative Adversarial Network', 'General Algorithm Network', 'Graph Analysis Node', 'Gradient Activation Network', 'A', 'Hard', 'GANs use competing generator and discriminator networks.'),

-- Q159
('Deep Learning', 'A GAN contains:', 'Generator and discriminator', 'Encoder and database', 'Classifier and PCA only', 'Two decision trees', 'A', 'Hard', 'The generator creates samples while the discriminator distinguishes generated from real data.'),

-- Q160
('Deep Learning', 'What does a GAN generator do?', 'Produces synthetic samples', 'Only labels real data', 'Deletes data', 'Calculates SQL queries', 'A', 'Hard', 'The generator learns to create samples resembling the training distribution.'),

-- Q161
('Deep Learning', 'What does the GAN discriminator do?', 'Distinguishes real and generated samples', 'Creates all synthetic samples', 'Reduces image size', 'Performs PCA', 'A', 'Hard', 'The discriminator evaluates whether samples appear real or generated.'),

-- Q162
('Deep Learning', 'What is GAN training conceptually?', 'Adversarial competition between generator and discriminator', 'Only supervised regression', 'K-means clustering', 'Decision-tree pruning', 'A', 'Hard', 'The two networks are trained with opposing objectives.'),

-- Q163
('Deep Learning', 'What is mode collapse in GANs?', 'Generator produces limited varieties of samples', 'Dataset becomes larger', 'Discriminator disappears', 'Training labels increase', 'A', 'Hard', 'Mode collapse occurs when generated outputs lack diversity.'),

-- Q164
('Deep Learning', 'What is a latent space?', 'Learned representation space containing encoded information', 'Database memory', 'Input image only', 'Output label list', 'A', 'Hard', 'Latent spaces represent underlying factors in a compressed form.'),

-- Q165
('Deep Learning', 'What is generative modeling?', 'Learning a data distribution to generate new samples', 'Only classifying existing data', 'Sorting data', 'Removing labels', 'A', 'Hard', 'Generative models learn patterns that allow them to produce new data.'),

-- Q166
('Deep Learning', 'What is synthetic data?', 'Artificially generated data', 'Always corrupted data', 'Deleted data', 'Database metadata', 'A', 'Hard', 'Synthetic data is created algorithmically rather than collected directly.'),

-- Q167
('Deep Learning', 'What is self-supervised learning?', 'Learning supervisory signals from the data itself', 'Learning only from manually labeled datasets', 'No training', 'Clustering only', 'A', 'Hard', 'Self-supervised methods create learning targets from the input data.'),

-- Q168
('Deep Learning', 'An example of self-supervised learning is:', 'Predicting a hidden portion of input', 'Using manually assigned class labels only', 'Randomly deleting datasets', 'Sorting numbers', 'A', 'Hard', 'The missing portion can serve as a target generated from the data itself.'),

-- Q169
('Deep Learning', 'What is contrastive learning?', 'Learning representations by comparing similar and dissimilar examples', 'Regression-only training', 'Database normalization', 'Image resizing', 'A', 'Hard', 'Contrastive learning encourages related examples to have similar representations.'),

-- Q170
('Deep Learning', 'What is representation learning?', 'Automatically learning useful features from data', 'Manually creating every feature', 'Database design', 'File compression', 'A', 'Hard', 'Deep networks can learn representations directly from raw or minimally processed inputs.'),

-- Q171
('Deep Learning', 'What is attention?', 'Mechanism that assigns importance to different input elements', 'Data compression', 'Database indexing', 'Image padding', 'A', 'Hard', 'Attention dynamically weights information according to relevance.'),

-- Q172
('Deep Learning', 'What is a transformer?', 'Neural architecture based primarily on attention mechanisms', 'Database system', 'CNN-only architecture', 'Clustering algorithm', 'A', 'Hard', 'Transformers use attention-based mechanisms to process sequences and other structured inputs.'),

-- Q173
('Deep Learning', 'What is self-attention?', 'Attention where elements attend to other elements within the same sequence', 'Attention to external databases', 'Image resizing', 'Classification threshold', 'A', 'Hard', 'Self-attention computes relationships among positions in the same input.'),

-- Q174
('Deep Learning', 'Why are positional encodings used in transformers?', 'To provide information about token order', 'To remove tokens', 'To scale images', 'To create labels', 'A', 'Hard', 'Attention alone does not inherently encode sequence order.'),

-- Q175
('Deep Learning', 'What is multi-head attention?', 'Multiple attention mechanisms operating in parallel', 'Multiple datasets only', 'Multiple labels per image', 'Multiple database keys', 'A', 'Hard', 'Different attention heads can learn different relationships.'),

-- Q176
('Deep Learning', 'What is fine-tuning a pretrained deep model?', 'Updating pretrained parameters using a target task', 'Deleting all pretrained knowledge', 'Using no target data', 'Only changing file names', 'A', 'Hard', 'Fine-tuning adapts an existing model to a specific task.'),

-- Q177
('Deep Learning', 'What is freezing layers?', 'Preventing selected layers'' parameters from being updated', 'Deleting layers', 'Increasing learning rate', 'Removing input data', 'A', 'Hard', 'Frozen layers retain their pretrained parameters during training.'),

-- Q178
('Deep Learning', 'Why freeze early layers during transfer learning?', 'They may contain reusable low-level features', 'They contain no information', 'They always cause overfitting', 'They are never useful', 'A', 'Hard', 'Early layers often learn general features such as edges and textures.'),

-- Q179
('Deep Learning', 'What is catastrophic forgetting?', 'A model loses previously learned knowledge while learning new information', 'Dataset deletion', 'Image corruption', 'Label encoding error', 'A', 'Hard', 'Fine-tuning on a new task can sometimes reduce performance on earlier tasks.'),

-- Q180
('Deep Learning', 'What is model checkpointing?', 'Saving model state during training', 'Deleting model weights', 'Resizing data', 'Removing validation', 'A', 'Hard', 'Checkpoints allow training to resume or the best model to be restored.'),

-- Q181
('Deep Learning', 'What is early stopping based on?', 'Monitoring training or validation performance', 'File size', 'Number of labels only', 'Image width', 'A', 'Hard', 'Validation performance is commonly monitored to determine when to stop.'),

-- Q182
('Deep Learning', 'What is data pipeline preprocessing?', 'Preparing and transforming data before model consumption', 'Deleting all raw data', 'Writing HTML', 'Creating SQL tables only', 'A', 'Hard', 'Data pipelines handle loading, transformation, batching, and related operations.'),

-- Q183
('Deep Learning', 'What is inference?', 'Using a trained model to produce predictions', 'Training from scratch', 'Cleaning a database', 'Creating labels manually', 'A', 'Hard', 'Inference is the prediction stage after or outside model training.'),

-- Q184
('Deep Learning', 'What is model deployment?', 'Making a trained model available for use', 'Training only', 'Removing the model', 'Collecting labels only', 'A', 'Hard', 'Deployment integrates a trained model into an application or service.'),

-- Q185
('Deep Learning', 'What is model serving?', 'Providing predictions through an application or service', 'Training a dataset', 'Resizing images', 'Creating neural layers', 'A', 'Hard', 'Model serving exposes trained-model inference to users or systems.'),

-- Q186
('Deep Learning', 'What is latency?', 'Time taken to produce a response or prediction', 'Number of training samples', 'Model accuracy', 'Number of classes', 'A', 'Hard', 'Prediction latency is important for real-time applications.'),

-- Q187
('Deep Learning', 'What is throughput?', 'Amount of data or requests processed per unit time', 'Number of layers', 'Accuracy percentage', 'Number of classes', 'A', 'Hard', 'Throughput measures processing capacity over time.'),

-- Q188
('Deep Learning', 'Why can GPUs accelerate deep learning?', 'They efficiently perform large numbers of parallel numerical operations', 'They automatically label data', 'They remove the need for models', 'They replace datasets', 'A', 'Hard', 'Neural-network operations are highly parallel and can benefit from GPU hardware.'),

-- Q189
('Deep Learning', 'What is a TPU?', 'Tensor Processing Unit', 'Training Prediction Utility', 'Text Processing Unit', 'Tensor Programming User', 'A', 'Hard', 'TPUs are specialized hardware designed for machine-learning workloads.'),

-- Q190
('Deep Learning', 'What is model quantization?', 'Representing model values with lower numerical precision', 'Increasing all weights', 'Adding more layers', 'Increasing image resolution', 'A', 'Hard', 'Quantization can reduce memory use and improve inference efficiency.'),

-- Q191
('Deep Learning', 'What is pruning in neural networks?', 'Removing selected weights or structures to reduce model size', 'Increasing every parameter', 'Adding datasets', 'Removing labels', 'A', 'Hard', 'Neural-network pruning can reduce computation and storage requirements.'),

-- Q192
('Deep Learning', 'What is knowledge distillation?', 'Training a smaller student model using information from a larger teacher model', 'Removing all model knowledge', 'Data normalization', 'Image segmentation', 'A', 'Hard', 'Distillation transfers useful behavior from a teacher model to a student.'),

-- Q193
('Deep Learning', 'What is model compression?', 'Reducing model size or computational requirements', 'Increasing model parameters', 'Increasing image dimensions', 'Adding labels', 'A', 'Hard', 'Quantization, pruning, and distillation are common compression approaches.'),

-- Q194
('Deep Learning', 'What is explainable AI?', 'Methods for understanding or interpreting model behavior', 'Increasing training data only', 'Removing model predictions', 'Image compression', 'A', 'Hard', 'Explainability techniques help users understand model predictions or behavior.'),

-- Q195
('Deep Learning', 'What is saliency in computer vision?', 'Indication of image regions influential to a model''s output', 'Dataset size', 'Number of classes', 'Learning rate', 'A', 'Hard', 'Saliency methods highlight regions that may strongly affect predictions.'),

-- Q196
('Deep Learning', 'What is adversarial example?', 'Input intentionally modified to cause a model to make an incorrect prediction', 'Training label', 'Database record', 'Model checkpoint', 'A', 'Hard', 'Adversarial examples exploit model sensitivities with carefully designed input changes.'),

-- Q197
('Deep Learning', 'What is robustness in deep learning?', 'Ability to maintain performance under expected variations or perturbations', 'Number of layers', 'Dataset size', 'Training speed only', 'A', 'Hard', 'Robust models are less sensitive to relevant changes and disturbances.'),

-- Q198
('Deep Learning', 'Why is monitoring important after deploying a deep-learning model?', 'Data and model performance can change over time', 'Models never change after deployment', 'Monitoring increases labels automatically', 'It eliminates all errors', 'A', 'Hard', 'Monitoring helps detect performance degradation, data drift, and operational issues.'),

-- Q199
('Deep Learning', 'Which is an important ethical consideration in deep learning?', 'Bias and fairness', 'Increasing model size regardless of need', 'Removing evaluation', 'Ignoring data quality', 'A', 'Hard', 'Deep-learning systems can inherit or amplify biases present in data and design.'),

-- Q200
('Deep Learning', 'What is the main objective of a well-designed deep-learning system?', 'Learn useful representations and make reliable predictions or generate useful outputs', 'Memorize training data only', 'Maximize the number of layers', 'Avoid evaluation', 'A', 'Hard', 'A good deep-learning system should generalize effectively and perform its intended task reliably.');

-- Verification 1
SELECT COUNT(*) AS deep_learning_questions
FROM questions
WHERE skill = 'Deep Learning';

-- Verification 2
SELECT COUNT(DISTINCT question) AS unique_deep_learning_questions
FROM questions
WHERE skill = 'Deep Learning';

-- Verification 3
SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
