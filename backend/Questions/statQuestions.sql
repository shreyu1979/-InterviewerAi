USE ai_interviewer;

-- Statistics 200 MCQs
-- Difficulty:
-- Q1-Q50   = Easy
-- Q51-Q150 = Medium
-- Q151-Q200 = Hard

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Statistics';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Statistics', 'What is Statistics?', 'Study of programming', 'Collection, analysis, interpretation, and presentation of data', 'Study of hardware', 'Study of networks', 'B', 'Easy', 'Statistics deals with collecting, organizing, analyzing, interpreting, and presenting data.'),

-- Q2
('Statistics', 'What is a population in statistics?', 'A small part of data', 'Entire group being studied', 'Only numerical data', 'A graph', 'B', 'Easy', 'Population is the complete set of individuals or observations of interest.'),

-- Q3
('Statistics', 'What is a sample?', 'Entire population', 'A subset of the population', 'A parameter', 'A variable', 'B', 'Easy', 'A sample is a selected portion of a population.'),

-- Q4
('Statistics', 'A numerical characteristic of a population is called:', 'Statistic', 'Parameter', 'Variable', 'Frequency', 'B', 'Easy', 'A population characteristic is called a parameter.'),

-- Q5
('Statistics', 'A numerical characteristic calculated from a sample is called:', 'Parameter', 'Statistic', 'Population', 'Census', 'B', 'Easy', 'A value calculated from sample data is a statistic.'),

-- Q6
('Statistics', 'Which is an example of a categorical variable?', 'Age', 'Height', 'Blood group', 'Weight', 'C', 'Easy', 'Blood group represents categories rather than numerical measurements.'),

-- Q7
('Statistics', 'Which is a numerical variable?', 'Gender category', 'Eye color', 'Age', 'Blood type', 'C', 'Easy', 'Age is measured numerically.'),

-- Q8
('Statistics', 'Which variable is discrete?', 'Height', 'Temperature', 'Number of students', 'Weight', 'C', 'Easy', 'Number of students is countable and therefore discrete.'),

-- Q9
('Statistics', 'Which variable is continuous?', 'Number of books', 'Number of employees', 'Height', 'Number of cars', 'C', 'Easy', 'Height can take any value within a range.'),

-- Q10
('Statistics', 'Which measurement scale has categories without order?', 'Nominal', 'Ordinal', 'Interval', 'Ratio', 'A', 'Easy', 'Nominal data consist of categories without a meaningful ranking.'),

-- Q11
('Statistics', 'Which scale has ordered categories?', 'Nominal', 'Ordinal', 'Interval', 'Ratio', 'B', 'Easy', 'Ordinal data have a meaningful order but differences are not necessarily equal.'),

-- Q12
('Statistics', 'Temperature in Celsius is generally measured on which scale?', 'Nominal', 'Ordinal', 'Interval', 'Ratio', 'C', 'Easy', 'Celsius has equal intervals but zero does not represent absence of temperature.'),

-- Q13
('Statistics', 'Weight is measured on which scale?', 'Nominal', 'Ordinal', 'Interval', 'Ratio', 'D', 'Easy', 'Weight has a meaningful zero and meaningful ratios.'),

-- Q14
('Statistics', 'What is a census?', 'Study of a sample', 'Study of the entire population', 'Data visualization', 'Data cleaning', 'B', 'Easy', 'A census collects information from every member of the population.'),

-- Q15
('Statistics', 'What is primary data?', 'Data collected firsthand', 'Data copied from a website', 'Historical data only', 'Simulated data only', 'A', 'Easy', 'Primary data are collected directly for a specific study.'),

-- Q16
('Statistics', 'What is secondary data?', 'Newly collected data', 'Data previously collected by another source or study', 'Only experimental data', 'Only survey data', 'B', 'Easy', 'Secondary data already exist and are reused for analysis.'),

-- Q17
('Statistics', 'What is a frequency?', 'Average value', 'Number of times a value occurs', 'Maximum value', 'Difference between values', 'B', 'Easy', 'Frequency represents how often an observation occurs.'),

-- Q18
('Statistics', 'A frequency distribution shows:', 'Only averages', 'Values and their frequencies', 'Only maximum values', 'Only percentages', 'B', 'Easy', 'It organizes observations according to how frequently they occur.'),

-- Q19
('Statistics', 'Which graph is commonly used for categorical data?', 'Bar chart', 'Histogram', 'Scatter plot', 'Box plot', 'A', 'Easy', 'Bar charts are commonly used to compare categories.'),

-- Q20
('Statistics', 'Which graph is commonly used for continuous numerical data?', 'Histogram', 'Pie chart', 'Bar chart', 'Flowchart', 'A', 'Easy', 'Histograms display the distribution of continuous numerical data.'),

-- Q21
('Statistics', 'What does a histogram display?', 'Relationship between two variables', 'Distribution of numerical data', 'Only categories', 'Database structure', 'B', 'Easy', 'A histogram groups numerical observations into intervals.'),

-- Q22
('Statistics', 'What does a scatter plot show?', 'Distribution of one categorical variable', 'Relationship between two numerical variables', 'Only percentages', 'Frequency of categories only', 'B', 'Easy', 'Scatter plots display paired numerical observations.'),

-- Q23
('Statistics', 'A pie chart is mainly used to show:', 'Parts of a whole', 'Regression residuals', 'Continuous distributions', 'Correlation coefficients', 'A', 'Easy', 'Pie charts show how categories contribute to a whole.'),

-- Q24
('Statistics', 'A box plot is useful for showing:', 'Database tables', 'Distribution and spread of numerical data', 'Source code', 'Network traffic', 'B', 'Easy', 'Box plots summarize center, spread, quartiles, and potential outliers.'),

-- Q25
('Statistics', 'Which measure represents the arithmetic average?', 'Median', 'Mode', 'Mean', 'Range', 'C', 'Easy', 'Mean is calculated by adding observations and dividing by their number.'),

-- Q26
('Statistics', 'What is the median?', 'Most frequent value', 'Middle value after sorting', 'Largest value', 'Smallest value', 'B', 'Easy', 'The median is the central ordered observation.'),

-- Q27
('Statistics', 'What is the mode?', 'Average', 'Middle value', 'Most frequently occurring value', 'Difference between maximum and minimum', 'C', 'Easy', 'Mode is the value occurring most frequently.'),

-- Q28
('Statistics', 'Which measure is least affected by extreme values?', 'Mean', 'Median', 'Variance', 'Standard deviation', 'B', 'Easy', 'Median is generally more resistant to outliers than mean.'),

-- Q29
('Statistics', 'For data 2, 4, 6, 8, 10, the mean is:', '4', '5', '6', '8', 'C', 'Easy', '(2+4+6+8+10)/5 = 6.'),

-- Q30
('Statistics', 'For data 3, 5, 7, 9, 11, the median is:', '5', '6', '7', '9', 'C', 'Easy', 'The middle value of the ordered data is 7.'),

-- Q31
('Statistics', 'For data 2, 3, 3, 4, 5, the mode is:', '2', '3', '4', '5', 'B', 'Easy', '3 occurs more frequently than the other values.'),

-- Q32
('Statistics', 'If all observations are identical, their standard deviation is:', '0', '1', '-1', 'Undefined', 'A', 'Easy', 'There is no variation when every observation is identical.'),

-- Q33
('Statistics', 'Range is calculated as:', 'Mean - median', 'Maximum - minimum', 'Q3 - Q1 only', 'Sum / count', 'B', 'Easy', 'Range measures total spread using maximum and minimum values.'),

-- Q34
('Statistics', 'Which measure describes variability?', 'Mean', 'Median', 'Standard deviation', 'Mode', 'C', 'Easy', 'Standard deviation measures the typical spread around the mean.'),

-- Q35
('Statistics', 'Variance is related to:', 'Squared deviations from the mean', 'Categories only', 'Frequency only', 'Median only', 'A', 'Easy', 'Variance is based on squared deviations from the mean.'),

-- Q36
('Statistics', 'Standard deviation is:', 'Square of variance', 'Square root of variance', 'Mean of variance', 'Median of variance', 'B', 'Easy', 'Standard deviation equals the positive square root of variance.'),

-- Q37
('Statistics', 'The interquartile range is:', 'Q1 + Q3', 'Q3 - Q1', 'Q2 - Q1', 'Maximum - minimum', 'B', 'Easy', 'IQR measures the spread of the middle 50% of observations.'),

-- Q38
('Statistics', 'Q2 is also known as:', 'Mean', 'Median', 'Mode', 'Range', 'B', 'Easy', 'The second quartile corresponds to the median.'),

-- Q39
('Statistics', 'The 50th percentile is:', 'Mean', 'Median', 'Mode', 'Maximum', 'B', 'Easy', 'The 50th percentile is the median.'),

-- Q40
('Statistics', 'The 25th percentile corresponds approximately to:', 'Q1', 'Q2', 'Q3', 'Maximum', 'A', 'Easy', 'Q1 is the 25th percentile.'),

-- Q41
('Statistics', 'The 75th percentile corresponds approximately to:', 'Q1', 'Q2', 'Q3', 'Minimum', 'C', 'Easy', 'Q3 represents the 75th percentile.'),

-- Q42
('Statistics', 'A z-score indicates:', 'Frequency only', 'Number of standard deviations from the mean', 'Median position only', 'Sample size', 'B', 'Easy', 'A z-score standardizes an observation relative to the mean and standard deviation.'),

-- Q43
('Statistics', 'A z-score of 0 means the observation is:', 'At the mean', 'At the maximum', 'At the minimum', 'One SD below the mean', 'A', 'Easy', 'A value equal to the mean has z = 0.'),

-- Q44
('Statistics', 'If z = 2, the observation is:', '2 units above mean', '2 standard deviations above mean', '2 standard deviations below mean', 'Equal to median', 'B', 'Easy', 'z = 2 means two standard deviations above the mean.'),

-- Q45
('Statistics', 'A distribution symmetric around its mean generally has:', 'Mean = median', 'Mean > median always', 'Mean < median always', 'No median', 'A', 'Easy', 'In a symmetric distribution, mean and median coincide under common conditions.'),

-- Q46
('Statistics', 'Positive skew generally means:', 'Longer right tail', 'Longer left tail', 'Perfect symmetry', 'No variation', 'A', 'Easy', 'Positive or right skew indicates a longer tail toward larger values.'),

-- Q47
('Statistics', 'Negative skew generally means:', 'Longer right tail', 'Longer left tail', 'No tail', 'Equal values', 'B', 'Easy', 'Negative skew indicates a longer tail toward smaller values.'),

-- Q48
('Statistics', 'An outlier is:', 'A typical observation', 'An unusually distant observation', 'The mean', 'The median', 'B', 'Easy', 'An outlier is unusually far from the general pattern of the data.'),

-- Q49
('Statistics', 'Which measure is most sensitive to extreme observations?', 'Mean', 'Median', 'Mode', 'IQR', 'A', 'Easy', 'Extreme values can substantially change the arithmetic mean.'),

-- Q50
('Statistics', 'The coefficient of variation is generally:', 'SD / mean × 100', 'Mean / SD × 100', 'Variance / mean', 'Mean - SD', 'A', 'Easy', 'CV commonly expresses standard deviation relative to the mean as a percentage.'),

-- Q51
('Statistics', 'What is probability?', 'Measure of uncertainty', 'Measure of average only', 'Measure of size', 'Measure of frequency only', 'A', 'Medium', 'Probability quantifies the likelihood of events.'),

-- Q52
('Statistics', 'Probability values generally range from:', '-1 to 1', '0 to 1', '1 to 1000', '-100 to 100', 'B', 'Medium', 'Probability lies between 0 and 1 inclusive.'),

-- Q53
('Statistics', 'An event with probability 0 is:', 'Certain', 'Impossible', 'Likely', 'Independent', 'B', 'Medium', 'Probability 0 represents an impossible event.'),

-- Q54
('Statistics', 'An event with probability 1 is:', 'Impossible', 'Certain', 'Randomly impossible', 'Independent', 'B', 'Medium', 'Probability 1 means the event is certain under the model.'),

-- Q55
('Statistics', 'What is a sample space?', 'Set of all possible outcomes', 'Set of only successful outcomes', 'Average outcome', 'Population mean', 'A', 'Medium', 'Sample space contains every possible outcome of an experiment.'),

-- Q56
('Statistics', 'When tossing a fair coin, the probability of heads is:', '0', '0.25', '0.5', '1', 'C', 'Medium', 'A fair coin has two equally likely outcomes.'),

-- Q57
('Statistics', 'When rolling a fair six-sided die, P(6) is:', '1/2', '1/3', '1/6', '6', 'C', 'Medium', 'There is one favorable outcome among six equally likely outcomes.'),

-- Q58
('Statistics', 'The complement of event A is commonly written as:', 'A + 1', 'Aᶜ', 'A²', '2A', 'B', 'Medium', 'Aᶜ represents the event that A does not occur.'),

-- Q59
('Statistics', 'P(Aᶜ) equals:', 'P(A)', '1 + P(A)', '1 - P(A)', 'P(A)/2', 'C', 'Medium', 'The probability of an event and its complement sum to 1.'),

-- Q60
('Statistics', 'If P(A)=0.3, P(Aᶜ) is:', '0.3', '0.5', '0.7', '1.3', 'C', 'Medium', '1 - 0.3 = 0.7.'),

-- Q61
('Statistics', 'Two events are mutually exclusive if:', 'They always occur together', 'They cannot occur together', 'They have equal probability', 'They are independent', 'B', 'Medium', 'Mutually exclusive events have no common outcomes.'),

-- Q62
('Statistics', 'For mutually exclusive events A and B:', 'P(A∩B)=1', 'P(A∩B)=0', 'P(A)=P(B)', 'P(A)+P(B)=0', 'B', 'Medium', 'They cannot happen simultaneously.'),

-- Q63
('Statistics', 'Independent events are events where:', 'One event affects the other', 'Occurrence of one does not change the probability of the other', 'They cannot occur together', 'Both have probability zero', 'B', 'Medium', 'Independence means the occurrence of one provides no probability information about the other.'),

-- Q64
('Statistics', 'Conditional probability is written as:', 'P(A+B)', 'P(A|B)', 'P(A-B)', 'P(A×B)', 'B', 'Medium', 'P(A|B) means probability of A given B.'),

-- Q65
('Statistics', 'The multiplication rule for independent events is:', 'P(A∩B)=P(A)+P(B)', 'P(A∩B)=P(A)P(B)', 'P(A∩B)=P(A)-P(B)', 'P(A∩B)=1', 'B', 'Medium', 'For independent events, joint probability is the product of their probabilities.'),

-- Q66
('Statistics', 'Bayes theorem is used to:', 'Calculate only means', 'Update probabilities using new evidence', 'Calculate standard deviation only', 'Draw histograms', 'B', 'Medium', 'Bayes theorem updates prior beliefs using evidence.'),

-- Q67
('Statistics', 'In Bayes theorem, prior probability represents:', 'Probability after observing evidence', 'Initial belief before new evidence', 'Error rate only', 'Sample size', 'B', 'Medium', 'The prior is the probability assigned before incorporating new evidence.'),

-- Q68
('Statistics', 'In Bayes theorem, likelihood represents:', 'Probability of evidence given a hypothesis', 'Probability of hypothesis given evidence', 'Mean of data', 'Variance', 'A', 'Medium', 'Likelihood measures how probable the observed evidence is under a hypothesis.'),

-- Q69
('Statistics', 'A random variable assigns:', 'Names to populations', 'Numerical values to outcomes', 'Graphs to variables', 'Categories to means', 'B', 'Medium', 'A random variable maps outcomes to numerical values.'),

-- Q70
('Statistics', 'A discrete random variable:', 'Takes countable values', 'Always takes every real value', 'Cannot be numerical', 'Has no probability', 'A', 'Medium', 'Discrete random variables have countable possible values.'),

-- Q71
('Statistics', 'A continuous random variable:', 'Takes only integers', 'Can take values over an interval', 'Has no distribution', 'Must be categorical', 'B', 'Medium', 'Continuous variables can take infinitely many values in an interval.'),

-- Q72
('Statistics', 'Expected value represents:', 'Long-run average outcome', 'Maximum value', 'Minimum value', 'Median only', 'A', 'Medium', 'Expected value is the probability-weighted average of possible outcomes.'),

-- Q73
('Statistics', 'The variance of a random variable measures:', 'Its center', 'Its spread', 'Its mode', 'Its sample size', 'B', 'Medium', 'Variance measures expected squared deviation from the mean.'),

-- Q74
('Statistics', 'Bernoulli distribution models:', 'One trial with two outcomes', 'Multiple continuous outcomes', 'Time-to-event only', 'Normal data', 'A', 'Medium', 'A Bernoulli random variable has two possible outcomes, often success and failure.'),

-- Q75
('Statistics', 'Binomial distribution models:', 'Fixed number of independent Bernoulli trials', 'Continuous measurements', 'Ranked categories', 'Time intervals only', 'A', 'Medium', 'Binomial distribution counts successes in a fixed number of independent trials with constant success probability.'),

-- Q76
('Statistics', 'A binomial distribution requires:', 'Fixed number of trials', 'Continuous outcomes', 'No probability', 'Unequal trial definitions', 'A', 'Medium', 'The number of trials is fixed in a binomial model.'),

-- Q77
('Statistics', 'Poisson distribution is commonly used for:', 'Counts of events in a fixed interval', 'Measuring height', 'Measuring color', 'Ranking students', 'A', 'Medium', 'Poisson models counts of events occurring in a specified interval under suitable assumptions.'),

-- Q78
('Statistics', 'The parameter λ in a Poisson distribution represents:', 'Expected event count per interval', 'Median only', 'Sample variance', 'Number of variables', 'A', 'Medium', 'λ is the average event rate for the specified interval.'),

-- Q79
('Statistics', 'The normal distribution is:', 'Always skewed right', 'Symmetric and bell-shaped', 'Always discrete', 'Uniform', 'B', 'Medium', 'The normal distribution is continuous and symmetric around its mean.'),

-- Q80
('Statistics', 'In a normal distribution:', 'Mean = median = mode', 'Mean > median always', 'Mode = 0 always', 'Median does not exist', 'A', 'Medium', 'All three measures coincide for a normal distribution.'),

-- Q81
('Statistics', 'The standard normal distribution has:', 'Mean 1 and SD 0', 'Mean 0 and SD 1', 'Mean 1 and SD 1', 'Mean 0 and SD 0', 'B', 'Medium', 'Standard normal variables have mean 0 and standard deviation 1.'),

-- Q82
('Statistics', 'A z-score is useful for:', 'Comparing observations on different scales', 'Removing all outliers', 'Changing categories', 'Calculating mode only', 'A', 'Medium', 'Standardization converts values into standard deviation units.'),

-- Q83
('Statistics', 'The total area under a probability density curve is:', '0', '0.5', '1', '100', 'C', 'Medium', 'Total probability represented by a density is 1.'),

-- Q84
('Statistics', 'For a continuous random variable, P(X = exact value) is generally:', '1', '0', '0.5', 'Greater than 1', 'B', 'Medium', 'Individual points have zero probability in a continuous distribution.'),

-- Q85
('Statistics', 'The uniform distribution has:', 'Equal density across its defined interval', 'Only one possible value', 'Always a bell shape', 'Only integer values', 'A', 'Medium', 'A continuous uniform distribution assigns equal density throughout its interval.'),

-- Q86
('Statistics', 'The exponential distribution is commonly used to model:', 'Waiting times', 'Categories', 'Student grades only', 'Names', 'A', 'Medium', 'Exponential distributions are often used for waiting or time-between-event models.'),

-- Q87
('Statistics', 'The central limit theorem mainly concerns the distribution of:', 'Sample means', 'Individual categories', 'Population labels', 'Modes only', 'A', 'Medium', 'Under common conditions, sample means become approximately normally distributed as sample size grows.'),

-- Q88
('Statistics', 'The law of large numbers states that:', 'Sample averages tend toward the expected value as sample size grows', 'Every sample equals the population', 'Variance always becomes zero', 'Outliers disappear', 'A', 'Medium', 'Larger samples generally make sample averages more stable around the expected value.'),

-- Q89
('Statistics', 'A probability density function is used for:', 'Continuous random variables', 'Only categorical variables', 'Only text data', 'Database keys', 'A', 'Medium', 'PDFs describe probability distributions for continuous variables.'),

-- Q90
('Statistics', 'A probability mass function is used for:', 'Discrete random variables', 'Continuous variables only', 'Images only', 'Regression coefficients only', 'A', 'Medium', 'PMFs assign probabilities to possible discrete outcomes.'),

-- Q91
('Statistics', 'The sum of probabilities in a discrete probability distribution is:', '0', '1', '-1', 'Greater than 1', 'B', 'Medium', 'Probabilities of all possible discrete outcomes must sum to 1.'),

-- Q92
('Statistics', 'If two events are independent, then:', 'P(A|B)=P(A)', 'P(A|B)=0', 'P(A)=0', 'P(B)=0', 'A', 'Medium', 'Independence means conditioning on B does not change the probability of A.'),

-- Q93
('Statistics', 'If P(A)=0.4 and P(B)=0.5 and A, B are independent, P(A∩B) is:', '0.1', '0.2', '0.9', '1', 'B', 'Medium', '0.4 × 0.5 = 0.2.'),

-- Q94
('Statistics', 'If P(A)=0.7, the probability that A does not occur is:', '0.1', '0.2', '0.3', '0.7', 'C', 'Medium', '1 - 0.7 = 0.3.'),

-- Q95
('Statistics', 'Which distribution is appropriate for the number of successes in fixed independent trials?', 'Binomial', 'Normal', 'Uniform', 'Exponential', 'A', 'Medium', 'Binomial distribution counts successes in fixed Bernoulli trials.'),

-- Q96
('Statistics', 'Which distribution is commonly associated with rare-event counts?', 'Poisson', 'Normal', 'Uniform', 'Exponential', 'A', 'Medium', 'Poisson distribution is commonly used for event counts, especially under a suitable rare-event framework.'),

-- Q97
('Statistics', 'A fair die has expected value:', '2', '3', '3.5', '6', 'C', 'Medium', '(1+2+3+4+5+6)/6 = 3.5.'),

-- Q98
('Statistics', 'Probability of getting an even number on a fair six-sided die is:', '1/6', '1/3', '1/2', '2/3', 'C', 'Medium', 'Even outcomes are 2, 4, and 6: 3/6 = 1/2.'),

-- Q99
('Statistics', 'The normal distribution is:', 'Discrete', 'Continuous', 'Categorical', 'Ordinal', 'B', 'Medium', 'Normal distributions describe continuous random variables.'),

-- Q100
('Statistics', 'Which distribution is memoryless?', 'Normal', 'Exponential', 'Uniform', 'Binomial', 'B', 'Medium', 'The exponential distribution has the memoryless property.'),

-- Q101
('Statistics', 'Simple random sampling means:', 'Every population member has a known, typically equal chance of selection', 'Only volunteers are selected', 'Only experts are selected', 'First members are always selected', 'A', 'Medium', 'Simple random sampling gives each member an equal selection opportunity in its standard form.'),

-- Q102
('Statistics', 'Stratified sampling divides a population into:', 'Strata or subgroups', 'Random errors', 'Regression lines', 'Histograms', 'A', 'Medium', 'The population is divided into meaningful subgroups called strata.'),

-- Q103
('Statistics', 'Cluster sampling involves:', 'Selecting groups or clusters', 'Selecting only the largest values', 'Selecting every individual randomly', 'Removing outliers', 'A', 'Medium', 'Entire groups or clusters are sampled rather than individual members directly.'),

-- Q104
('Statistics', 'Systematic sampling commonly selects:', 'Every kth member after a starting point', 'Only volunteers', 'Only extreme values', 'Only experts', 'A', 'Medium', 'Systematic sampling uses a fixed interval after an appropriate starting point.'),

-- Q105
('Statistics', 'Convenience sampling selects:', 'Easily accessible participants', 'Every population member', 'Only random numbers', 'Only experimental subjects', 'A', 'Medium', 'Convenience samples use subjects who are readily available.'),

-- Q106
('Statistics', 'Sampling bias occurs when:', 'Sample selection systematically misrepresents the population', 'Sample size is always large', 'Data are numerical', 'Mean equals median', 'A', 'Medium', 'Bias can cause the sample to differ systematically from the target population.'),

-- Q107
('Statistics', 'Nonresponse bias can occur when:', 'Selected individuals do not respond and differ systematically from respondents', 'Everyone responds', 'Data are normally distributed', 'Sample size is zero', 'A', 'Medium', 'Nonresponse can distort results if nonrespondents differ from respondents.'),

-- Q108
('Statistics', 'Sampling error is:', 'Natural difference between a sample estimate and population value', 'Always a calculation mistake', 'Data theft', 'A programming error', 'A', 'Medium', 'Different samples naturally produce somewhat different estimates.'),

-- Q109
('Statistics', 'Standard error measures:', 'Variability of a sampling statistic', 'Population size', 'Number of categories', 'Maximum value', 'A', 'Medium', 'Standard error describes how much an estimator varies across repeated samples.'),

-- Q110
('Statistics', 'Increasing sample size generally causes standard error to:', 'Increase', 'Decrease', 'Stay exactly constant', 'Become negative', 'B', 'Medium', 'Larger samples generally provide more precise estimates.'),

-- Q111
('Statistics', 'A confidence interval provides:', 'A range of plausible values for a population parameter under a specified procedure', 'The exact population value', 'Only the sample mean', 'A guarantee of correctness', 'A', 'Medium', 'Confidence intervals quantify uncertainty around an estimate.'),

-- Q112
('Statistics', 'A 95% confidence level means:', 'The parameter has exactly 95% probability of being inside this fixed interval', 'The procedure captures the true parameter in about 95% of repeated samples under its assumptions', 'The sample is 95% correct', 'The data are 95% normally distributed', 'B', 'Medium', 'Confidence level describes long-run performance of the interval-producing procedure.'),

-- Q113
('Statistics', 'Increasing confidence level from 95% to 99% generally makes the interval:', 'Narrower', 'Wider', 'Unchanged', 'Zero width', 'B', 'Medium', 'Higher confidence requires a wider interval, all else equal.'),

-- Q114
('Statistics', 'Increasing sample size generally makes a confidence interval:', 'Wider', 'Narrower', 'Impossible', 'Negative', 'B', 'Medium', 'Larger samples usually reduce sampling uncertainty.'),

-- Q115
('Statistics', 'A null hypothesis is commonly denoted:', 'H₀', 'H₁', 'X̄', 'μ', 'A', 'Medium', 'H₀ represents the null hypothesis.'),

-- Q116
('Statistics', 'The alternative hypothesis is commonly denoted:', 'H₀', 'H₁', 'X', 'σ', 'B', 'Medium', 'H₁ commonly represents the alternative hypothesis.'),

-- Q117
('Statistics', 'A p-value is:', 'Probability that H₀ is true', 'Probability, assuming H₀, of obtaining data at least as extreme as observed according to the test statistic', 'Probability that H₀ is true', 'Sample size', 'B', 'Medium', 'A p-value measures how unusual the observed evidence would be if the null model were true.'),

-- Q118
('Statistics', 'A small p-value generally provides:', 'Stronger evidence against H₀', 'Proof that H₀ is true', 'Proof of causation', 'Larger sample size automatically', 'A', 'Medium', 'A small p-value indicates the observed result is relatively incompatible with H₀.'),

-- Q119
('Statistics', 'Statistical significance is determined using:', 'A significance level and a test result', 'Mean only', 'Median only', 'Maximum value only', 'A', 'Medium', 'A p-value is typically compared with a preselected significance level α.'),

-- Q120
('Statistics', 'The common significance level is:', '0.5', '0.05', '5', '50', 'B', 'Medium', 'α = 0.05 is a commonly used significance threshold.'),

-- Q121
('Statistics', 'Type I error means:', 'Failing to reject a false null', 'Rejecting a true null', 'Correctly rejecting null', 'Increasing sample size', 'B', 'Medium', 'Type I error is a false positive.'),

-- Q122
('Statistics', 'Type II error means:', 'Rejecting a true null', 'Failing to reject a false null', 'Correctly rejecting null', 'Correctly accepting null', 'B', 'Medium', 'Type II error is a false negative.'),

-- Q123
('Statistics', 'Statistical power is:', 'Probability of detecting an effect when a specified alternative is true', 'Probability of Type I error', 'Sample mean', 'Population size', 'A', 'Medium', 'Power is the probability of rejecting H₀ when the alternative is true under the specified conditions.'),

-- Q124
('Statistics', 'Power is equal to:', 'α', '1 - β', 'β', '1 - α only', 'B', 'Medium', 'Power is one minus the Type II error probability β.'),

-- Q125
('Statistics', 'A one-tailed test has:', 'One direction specified for the alternative', 'No hypothesis', 'Two unrelated samples only', 'No significance level', 'A', 'Medium', 'A one-tailed test examines an effect in a specified direction.'),

-- Q126
('Statistics', 'A two-tailed test considers:', 'Only positive effects', 'Both directions of departure from the null', 'No effects', 'Only zero values', 'B', 'Medium', 'Two-tailed tests consider departures in both directions.'),

-- Q127
('Statistics', 'A z-test is commonly used when:', 'Population standard deviation is known under suitable assumptions', 'Data are always categorical', 'Sample size is always one', 'There is no hypothesis', 'A', 'Medium', 'A z-test is commonly used for means when population SD is known and assumptions are appropriate.'),

-- Q128
('Statistics', 'A t-test is commonly used for:', 'Comparing means under appropriate assumptions', 'Comparing only categories', 'Creating pie charts', 'Measuring correlation only', 'A', 'Medium', 't-tests are commonly used for inference about means.'),

-- Q129
('Statistics', 'A one-sample t-test compares:', 'Sample mean with a hypothesized population mean', 'Two variances only', 'Two categorical variables', 'Two medians only', 'A', 'Medium', 'It tests whether a sample mean differs from a specified value.'),

-- Q130
('Statistics', 'An independent two-sample t-test compares:', 'Means of two independent groups', 'Means within the same observations only', 'Frequencies of categories only', 'Medians of four groups', 'A', 'Medium', 'It compares means between two independent groups under appropriate assumptions.'),

-- Q131
('Statistics', 'A paired t-test is appropriate for:', 'Matched or repeated measurements', 'Four unrelated groups', 'Categorical counts only', 'Population proportions only', 'A', 'Medium', 'Paired tests analyze differences within matched pairs or repeated measurements.'),

-- Q132
('Statistics', 'ANOVA is commonly used to compare:', 'Means across three or more groups', 'Only one observation', 'Two categorical labels', 'Percentiles only', 'A', 'Medium', 'Analysis of variance tests whether group means differ beyond expected sampling variation.'),

-- Q133
('Statistics', 'The null hypothesis in one-way ANOVA generally states:', 'All group means are equal', 'All group means are different', 'All variances are zero', 'All observations are identical', 'A', 'Medium', 'ANOVA initially tests the hypothesis that all group means are equal.'),

-- Q134
('Statistics', 'ANOVA uses which major ratio?', 'Mean square between / mean square within', 'Mean / median', 'Range / mode', 'Median / mean', 'A', 'Medium', 'The F-statistic compares between-group variation to within-group variation.'),

-- Q135
('Statistics', 'The F-statistic is used in:', 'ANOVA', 'Median calculation', 'Pie charts', 'Data sorting', 'A', 'Medium', 'ANOVA uses an F-statistic.'),

-- Q136
('Statistics', 'Chi-square tests are commonly used with:', 'Categorical count data', 'Continuous heights only', 'Regression residuals only', 'Means only', 'A', 'Medium', 'Chi-square procedures commonly analyze frequencies in categories.'),

-- Q137
('Statistics', 'A chi-square test of independence examines:', 'Association between categorical variables', 'Difference between two means', 'Normality of a single variable only', 'Regression slope only', 'A', 'Medium', 'It tests whether categorical variables are statistically associated.'),

-- Q138
('Statistics', 'A goodness-of-fit chi-square test compares:', 'Observed and expected category counts', 'Two sample means', 'Two standard deviations', 'Regression coefficients', 'A', 'Medium', 'Goodness-of-fit compares observed frequencies to expected frequencies under a specified model.'),

-- Q139
('Statistics', 'Practical significance refers to:', 'Real-world importance of an effect', 'p-value only', 'Sample size only', 'Probability of H₀', 'A', 'Medium', 'An effect can be statistically significant but too small to matter practically.'),

-- Q140
('Statistics', 'Effect size measures:', 'Magnitude of an effect', 'Only probability', 'Sample identification', 'Data type', 'A', 'Medium', 'Effect size quantifies how large a difference or association is.'),

-- Q141
('Statistics', 'A statistically significant result is:', 'Always practically important', 'Not necessarily practically important', 'Always causal', 'Always unbiased', 'B', 'Medium', 'Statistical significance and practical importance are different concepts.'),

-- Q142
('Statistics', 'If p = 0.03 and α = 0.05, the usual decision is:', 'Reject H₀', 'Accept H₀ as proven', 'Increase α automatically', 'Ignore the result', 'A', 'Medium', 'Since 0.03 < 0.05, the result is statistically significant at the 5% level.'),

-- Q143
('Statistics', 'If p = 0.20 and α = 0.05:', 'Reject H₀', 'Fail to reject H₀', 'Prove H₀ false', 'Increase sample mean', 'B', 'Medium', 'The p-value is greater than the significance level.'),

-- Q144
('Statistics', 'Fail to reject H₀ means:', 'H₀ has been proven true', 'There is insufficient evidence to reject H₀', 'H₀ is proven true', 'Data are invalid', 'B', 'Medium', 'A non-significant result does not prove the null hypothesis true.'),

-- Q145
('Statistics', 'A confidence interval containing zero for a difference often indicates:', 'The difference may not be statistically significant at the corresponding two-sided level', 'The sample is invalid', 'The means are always identical', 'There is definitely no effect', 'A', 'Medium', 'Under standard conditions, inclusion of zero suggests the data are compatible with no difference at that confidence level.'),

-- Q146
('Statistics', 'The margin of error represents:', 'Uncertainty around an estimate', 'Sample size', 'Population size', 'Data type', 'A', 'Medium', 'Margin of error indicates the uncertainty component added to or subtracted from an estimate.'),

-- Q147
('Statistics', 'A larger standard deviation generally causes a confidence interval to:', 'Become narrower', 'Become wider', 'Become zero', 'Become negative', 'B', 'Medium', 'Greater variability increases uncertainty in the estimate.'),

-- Q148
('Statistics', 'Which factor generally increases statistical power?', 'Larger sample size', 'Smaller effect size', 'More noise', 'Smaller sample size', 'A', 'Medium', 'Larger samples generally provide greater ability to detect a specified effect.'),

-- Q149
('Statistics', 'Random sampling primarily helps improve:', 'Representativeness and generalizability', 'Programming speed', 'Database storage', 'Graph colors', 'A', 'Medium', 'Proper random sampling reduces selection bias and supports population inference.'),

-- Q150
('Statistics', 'Random assignment in an experiment primarily helps:', 'Balance confounding factors across groups', 'Increase population size', 'Create categorical data', 'Calculate median', 'A', 'Medium', 'Random assignment helps make treatment groups comparable and supports causal inference.'),

-- Q151
('Statistics', 'Correlation measures:', 'Strength and direction of linear association', 'Causation automatically', 'Only sample size', 'Only mean', 'A', 'Hard', 'Correlation summarizes the strength and direction of linear association between numerical variables.'),

-- Q152
('Statistics', 'Pearson correlation coefficient ranges from:', '0 to 1', '-1 to +1', '-100 to 100', '1 to 10', 'B', 'Hard', 'Pearson’s r lies between -1 and +1.'),

-- Q153
('Statistics', 'A correlation of +1 indicates:', 'Perfect positive linear relationship', 'Perfect negative relationship', 'No relationship', 'Causation', 'A', 'Hard', 'r = +1 indicates perfect positive linear association.'),

-- Q154
('Statistics', 'A correlation of -1 indicates:', 'Perfect positive linear relationship', 'Perfect negative linear relationship', 'No relationship', 'Zero variance', 'B', 'Hard', 'r = -1 indicates perfect negative linear association.'),

-- Q155
('Statistics', 'A correlation near 0 indicates:', 'Little or no linear association', 'Perfect causation', 'Perfect negative relationship', 'Identical variables', 'A', 'Hard', 'A correlation near zero indicates little linear association, though nonlinear relationships may still exist.'),

-- Q156
('Statistics', 'Correlation does not imply:', 'Association', 'Causation', 'Numerical measurement', 'Direction', 'B', 'Hard', 'Association alone does not establish a causal relationship.'),

-- Q157
('Statistics', 'Covariance measures:', 'Joint variability of two variables', 'Only central tendency', 'Only sample size', 'Only frequency', 'A', 'Hard', 'Covariance indicates whether two variables tend to vary together.'),

-- Q158
('Statistics', 'Unlike correlation, covariance:', 'Is always between -1 and 1', 'Depends on the units of measurement', 'Cannot be negative', 'Measures only categories', 'B', 'Hard', 'Covariance is scale-dependent, while correlation is standardized.'),

-- Q159
('Statistics', 'Simple linear regression models:', 'Relationship between a response and one predictor', 'Only categorical frequencies', 'Only medians', 'Random sampling', 'A', 'Hard', 'Simple linear regression uses one predictor to model a numerical response.'),

-- Q160
('Statistics', 'In regression, the dependent variable is also called:', 'Response variable', 'Predictor', 'Stratum', 'Parameter only', 'A', 'Hard', 'The dependent variable is commonly called the response or outcome variable.'),

-- Q161
('Statistics', 'In regression, an independent variable is also called:', 'Predictor', 'Residual', 'Response', 'Error only', 'A', 'Hard', 'Predictor variables are used to explain or predict the response.'),

-- Q162
('Statistics', 'The equation of simple linear regression is commonly written:', 'y = a + bx', 'y = x²', 'y = a - b only', 'y = x/a', 'A', 'Hard', 'A simple linear regression line has an intercept and slope.'),

-- Q163
('Statistics', 'In y = a + bx, b represents:', 'Intercept', 'Slope', 'Mean', 'Residual', 'B', 'Hard', 'The slope indicates expected change in y for a one-unit increase in x.'),

-- Q164
('Statistics', 'In y = a + bx, a represents:', 'Slope', 'Intercept', 'Correlation', 'Variance', 'B', 'Hard', 'The intercept is the predicted value of y when x = 0.'),

-- Q165
('Statistics', 'A residual is:', 'Observed value - predicted value', 'Predicted value - mean only', 'Maximum - minimum', 'Mean - median', 'A', 'Hard', 'Residuals measure prediction errors from the fitted regression model.'),

-- Q166
('Statistics', 'R² in linear regression measures:', 'Proportion of response variation explained by the model in the sample/model context', 'Probability of causation', 'Sample size', 'Standard error only', 'A', 'Hard', 'R² describes the proportion of variability in the response accounted for by the regression model.'),

-- Q167
('Statistics', 'R² usually ranges from:', '-1 to 1', '0 to 1 for ordinary least-squares models with an intercept', '1 to 100', '-100 to 100', 'B', 'Hard', 'Standard OLS R² with an intercept is between 0 and 1.'),

-- Q168
('Statistics', 'A residual plot can help detect:', 'Model assumption problems', 'Population size', 'Data ownership', 'Sample labels', 'A', 'Hard', 'Residual patterns can reveal nonlinearity, unequal variance, and other issues.'),

-- Q169
('Statistics', 'Homoscedasticity means:', 'Constant variance of errors across relevant fitted values or predictors', 'Zero variance', 'Equal means', 'Equal sample sizes', 'A', 'Hard', 'Homoscedasticity means the error variance is approximately constant.'),

-- Q170
('Statistics', 'Heteroscedasticity means:', 'Nonconstant error variance', 'Equal error variance', 'No errors', 'Equal means', 'A', 'Hard', 'Heteroscedasticity occurs when error variability changes across observations.'),

-- Q171
('Statistics', 'Multicollinearity occurs when:', 'Predictors are strongly related to each other', 'Response is categorical', 'Sample size is zero', 'Errors are absent', 'A', 'Hard', 'Strong relationships among predictors can make coefficient estimates unstable.'),

-- Q172
('Statistics', 'Multiple linear regression uses:', 'Multiple predictors', 'No predictors', 'Only one observation', 'Only categorical responses', 'A', 'Hard', 'Multiple regression models a response using two or more predictors.'),

-- Q173
('Statistics', 'Logistic regression is commonly used for:', 'Binary classification/probability modeling', 'Calculating median only', 'Creating histograms', 'Measuring height', 'A', 'Hard', 'Logistic regression models probabilities for categorical outcomes, commonly binary outcomes.'),

-- Q174
('Statistics', 'Logistic regression commonly uses which function to map values to probabilities?', 'Sigmoid/logistic function', 'Square root function only', 'Absolute function', 'Step function only', 'A', 'Hard', 'The logistic function maps real-valued linear predictors to probabilities between 0 and 1.'),

-- Q175
('Statistics', 'An odds ratio is commonly associated with:', 'Logistic regression', 'Histogram construction', 'Mean calculation', 'Sampling frame', 'A', 'Hard', 'Odds ratios are commonly used to interpret logistic regression coefficients.'),

-- Q176
('Statistics', 'The Mann-Whitney U test is:', 'A nonparametric test for two independent groups', 'A normality test only', 'A regression method', 'A sampling method', 'A', 'Hard', 'Mann-Whitney is a nonparametric method for comparing two independent groups under appropriate assumptions.'),

-- Q177
('Statistics', 'The Wilcoxon signed-rank test is commonly used for:', 'Paired or matched observations', 'Three unrelated groups only', 'Categorical independence only', 'Population census', 'A', 'Hard', 'It is a nonparametric alternative for paired data.'),

-- Q178
('Statistics', 'Kruskal-Wallis test is commonly used to compare:', 'Three or more independent groups', 'Only one observation', 'Two paired observations only', 'Two categorical variables', 'A', 'Hard', 'Kruskal-Wallis is a nonparametric method for comparing multiple independent groups.'),

-- Q179
('Statistics', 'Nonparametric tests are useful when:', 'Parametric assumptions may not be appropriate', 'Data must always be normal', 'Sample size must be zero', 'Variables must be text', 'A', 'Hard', 'Nonparametric methods often require fewer distributional assumptions.'),

-- Q180
('Statistics', 'Bootstrapping is a method based on:', 'Repeated resampling from observed data', 'Deleting all observations', 'Using only population data', 'Changing categories', 'A', 'Hard', 'Bootstrap methods repeatedly resample observed data to approximate sampling distributions.'),

-- Q181
('Statistics', 'A bootstrap sample usually has:', 'Same size as the original sample and is sampled with replacement', 'Zero observations', 'Only unique observations', 'Only population observations', 'A', 'Hard', 'Standard bootstrap samples have the same size as the original and allow repeated observations.'),

-- Q182
('Statistics', 'Permutation tests are based on:', 'Rearranging labels or observations under a null hypothesis', 'Increasing sample size', 'Removing the mean', 'Calculating only median', 'A', 'Hard', 'Permutation tests construct a null distribution through valid rearrangements.'),

-- Q183
('Statistics', 'Multiple comparisons can increase:', 'Family-wise false-positive risk', 'Sample accuracy automatically', 'Population size', 'Median', 'A', 'Hard', 'Testing many hypotheses increases the chance of at least one false positive.'),

-- Q184
('Statistics', 'Bonferroni correction controls:', 'Family-wise error rate', 'Sample mean', 'Population size', 'Standard deviation', 'A', 'Hard', 'Bonferroni adjusts significance thresholds to control family-wise error rate.'),

-- Q185
('Statistics', 'False discovery rate (FDR) concerns:', 'Proportion of false discoveries among rejected hypotheses', 'Mean of data', 'Sample size only', 'Population variance only', 'A', 'Hard', 'FDR controls the expected proportion of false positives among the discoveries.'),

-- Q186
('Statistics', 'Missing data means:', 'Some expected observations or values are unavailable', 'All data are correct', 'Data are normally distributed', 'Data have zero variance', 'A', 'Hard', 'Missing data occur when values are not recorded or are unavailable.'),

-- Q187
('Statistics', 'Complete-case analysis uses:', 'Records with all required variables observed', 'Only missing records', 'Only outliers', 'Only maximum values', 'A', 'Hard', 'Complete-case analysis excludes observations with missing required values.'),

-- Q188
('Statistics', 'Mean imputation replaces missing values with:', 'Mean of available values', 'Maximum always', 'Zero always', 'Random text', 'A', 'Hard', 'Mean imputation substitutes missing numerical values with an estimated mean.'),

-- Q189
('Statistics', 'A major concern with naive mean imputation is:', 'It can reduce variability and distort relationships', 'It always increases variance', 'It creates new observations', 'It guarantees unbiased results', 'A', 'Hard', 'Simple imputation can underestimate variability and affect associations.'),

-- Q190
('Statistics', 'A confounding variable is:', 'A variable related to both an exposure and outcome that can distort their observed relationship', 'Always the dependent variable', 'Always random noise', 'The sample mean', 'A', 'Hard', 'Confounding can create or mask an apparent association.'),

-- Q191
('Statistics', 'A control group is used to:', 'Provide a comparison condition', 'Increase missing data', 'Remove the sample', 'Calculate only mode', 'A', 'Hard', 'Control groups provide a baseline for comparison with the treatment or intervention group.'),

-- Q192
('Statistics', 'Randomized controlled experiments are especially useful for studying:', 'Causal effects', 'Only descriptive statistics', 'Only medians', 'File formats', 'A', 'Hard', 'Random assignment helps isolate treatment effects and supports causal inference.'),

-- Q193
('Statistics', 'Observational studies generally:', 'Observe variables without randomly assigning treatments', 'Always prove causation', 'Never use samples', 'Have no variables', 'A', 'Hard', 'Researchers observe naturally occurring exposures or conditions.'),

-- Q194
('Statistics', 'Correlation between two variables means:', 'They are associated in some way measured by the correlation', 'One definitely causes the other', 'They are identical', 'Their means are equal', 'A', 'Hard', 'Correlation indicates association, not necessarily causation.'),

-- Q195
('Statistics', 'Reproducibility means:', 'Similar results can be obtained when the analysis is repeated appropriately', 'Results must always be identical', 'Data cannot change', 'Only one researcher can analyze data', 'A', 'Hard', 'Reproducibility supports confidence that results are not dependent on an accidental analysis.'),

-- Q196
('Statistics', 'A statistically significant correlation:', 'Proves causation', 'Indicates evidence of association but does not by itself prove causation', 'Means variables are identical', 'Means the effect is practically important', 'B', 'Hard', 'Statistical association alone cannot establish a causal relationship.'),

-- Q197
('Statistics', 'Which is an important assumption for ordinary linear regression?', 'Appropriate linear relationship between predictors and response', 'All predictors must be categorical', 'Sample size must be exactly 10', 'Response must always be binary', 'A', 'Hard', 'Linear regression assumes the conditional mean relationship is appropriately represented by a linear form.'),

-- Q198
('Statistics', 'Which measure is robust to extreme values?', 'IQR', 'Variance', 'Standard deviation', 'Mean', 'A', 'Hard', 'IQR is based on quartiles and is less affected by extreme observations.'),

-- Q199
('Statistics', 'Which statement about statistics is correct?', 'Statistical significance always means practical importance', 'Correlation always proves causation', 'A p-value is the probability that the null hypothesis is true', 'Statistical conclusions depend on assumptions and study design', 'D', 'Hard', 'Correct statistical interpretation requires considering assumptions, uncertainty, and study design.'),

-- Q200
('Statistics', 'Which is the best general principle when interpreting statistical results?', 'Look only at the p-value', 'Consider effect size, uncertainty, assumptions, study design, and practical context', 'Ignore sample size', 'Assume association means causation', 'B', 'Hard', 'Good statistical interpretation considers the full context rather than relying on a single number.');

-- Verification 1
SELECT COUNT(*) AS statistics_questions
FROM questions
WHERE skill = 'Statistics';

-- Verification 2
SELECT COUNT(DISTINCT question) AS unique_statistics_questions
FROM questions
WHERE skill = 'Statistics';

-- Verification 3
SELECT skill, COUNT(*) AS question_count
FROM questions
GROUP BY skill
ORDER BY skill;
