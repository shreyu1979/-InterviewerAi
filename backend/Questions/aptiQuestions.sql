USE ai_interviewer;

-- ============================================================
-- APTITUDE QUESTION BANK
-- STAGE 1 : Q1 - Q250
-- Q1-Q50   = Easy
-- Q51-Q150  = Medium
-- Q151-Q250 = Hard
-- ============================================================

SET SQL_SAFE_UPDATES = 0;

DELETE FROM questions
WHERE skill = 'Aptitude';

SET SQL_SAFE_UPDATES = 1;

INSERT INTO questions
(skill, question, option_a, option_b, option_c, option_d, correct_answer, difficulty, explanation)
VALUES

-- Q1
('Aptitude', 'What is 25% of 200?', '25', '40', '50', '75', 'C', 'Easy', '25% of 200 = 0.25 × 200 = 50.'),

-- Q2
('Aptitude', 'What is 15 + 27?', '32', '42', '52', '38', 'B', 'Easy', '15 + 27 = 42.'),

-- Q3
('Aptitude', 'What is 144 divided by 12?', '10', '11', '12', '14', 'C', 'Easy', '144 ÷ 12 = 12.'),

-- Q4
('Aptitude', 'What is the square of 15?', '125', '200', '225', '250', 'C', 'Easy', '15 × 15 = 225.'),

-- Q5
('Aptitude', 'What is the average of 10 and 20?', '10', '15', '20', '30', 'B', 'Easy', 'Average = (10 + 20) ÷ 2 = 15.'),

-- Q6
('Aptitude', 'If a pen costs Rs. 20, what is the cost of 5 pens?', 'Rs. 80', 'Rs. 90', 'Rs. 100', 'Rs. 120', 'C', 'Easy', '5 × 20 = Rs. 100.'),

-- Q7
('Aptitude', 'What is 3/4 expressed as a percentage?', '25%', '50%', '75%', '80%', 'C', 'Easy', '3/4 × 100 = 75%.'),

-- Q8
('Aptitude', 'What is the next number in the series 2, 4, 6, 8, ?', '9', '10', '11', '12', 'B', 'Easy', 'The series increases by 2 each time, so the next number is 10.'),

-- Q9
('Aptitude', 'What is the smallest prime number?', '0', '1', '2', '3', 'C', 'Easy', '2 is the smallest prime number.'),

-- Q10
('Aptitude', 'What is 10% of 500?', '25', '50', '75', '100', 'B', 'Easy', '10% of 500 = 50.'),

-- Q11
('Aptitude', 'If x + 5 = 12, what is x?', '5', '6', '7', '8', 'C', 'Easy', 'x = 12 - 5 = 7.'),

-- Q12
('Aptitude', 'What is 7 × 8?', '48', '54', '56', '64', 'C', 'Easy', '7 × 8 = 56.'),

-- Q13
('Aptitude', 'What is the perimeter of a square with side 5 cm?', '10 cm', '15 cm', '20 cm', '25 cm', 'C', 'Easy', 'Perimeter = 4 × side = 20 cm.'),

-- Q14
('Aptitude', 'What is 100 - 37?', '53', '63', '67', '73', 'B', 'Easy', '100 - 37 = 63.'),

-- Q15
('Aptitude', 'What is the cube of 3?', '6', '9', '18', '27', 'D', 'Easy', '3 × 3 × 3 = 27.'),

-- Q16
('Aptitude', 'If 5 notebooks cost Rs. 100, what is the cost of one notebook?', 'Rs. 10', 'Rs. 15', 'Rs. 20', 'Rs. 25', 'C', 'Easy', '100 ÷ 5 = Rs. 20.'),

-- Q17
('Aptitude', 'What is 1/2 + 1/4?', '1/4', '1/2', '3/4', '1', 'C', 'Easy', '1/2 = 2/4, so 2/4 + 1/4 = 3/4.'),

-- Q18
('Aptitude', 'How many hours are there in 2 days?', '24', '36', '48', '72', 'C', 'Easy', '2 × 24 = 48 hours.'),

-- Q19
('Aptitude', 'What is the LCM of 4 and 6?', '8', '10', '12', '24', 'C', 'Easy', 'The least common multiple of 4 and 6 is 12.'),

-- Q20
('Aptitude', 'What is the HCF of 12 and 18?', '3', '6', '9', '12', 'B', 'Easy', 'The highest common factor of 12 and 18 is 6.'),

-- Q21
('Aptitude', 'A train travels 60 km in 2 hours. What is its average speed?', '20 km/h', '30 km/h', '40 km/h', '60 km/h', 'B', 'Easy', 'Speed = Distance ÷ Time = 60 ÷ 2 = 30 km/h.'),

-- Q22
('Aptitude', 'What is 30% of 300?', '60', '90', '100', '120', 'B', 'Easy', '30% of 300 = 90.'),

-- Q23
('Aptitude', 'If a number is increased by 10 from 25, what is the result?', '30', '35', '40', '45', 'B', 'Easy', '25 + 10 = 35.'),

-- Q24
('Aptitude', 'What is the value of 9²?', '18', '72', '81', '90', 'C', 'Easy', '9 × 9 = 81.'),

-- Q25
('Aptitude', 'Which number is divisible by 5?', '42', '53', '65', '72', 'C', 'Easy', '65 ends in 5, so it is divisible by 5.'),

-- Q26
('Aptitude', 'What is the average of 5, 10 and 15?', '8', '10', '12', '15', 'B', 'Easy', 'Average = 30 ÷ 3 = 10.'),

-- Q27
('Aptitude', 'A shirt costs Rs. 500. If there is a discount of Rs. 50, what is the selling price?', 'Rs. 400', 'Rs. 450', 'Rs. 500', 'Rs. 550', 'B', 'Easy', 'Selling price = 500 - 50 = Rs. 450.'),

-- Q28
('Aptitude', 'What is the ratio 10:20 in simplest form?', '1:2', '2:1', '1:3', '2:3', 'A', 'Easy', 'Dividing both terms by 10 gives 1:2.'),

-- Q29
('Aptitude', 'What is 2⁵?', '16', '24', '32', '64', 'C', 'Easy', '2 × 2 × 2 × 2 × 2 = 32.'),

-- Q30
('Aptitude', 'If today is Monday, what day will it be after 3 days?', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'C', 'Easy', 'Three days after Monday is Thursday.'),

-- Q31
('Aptitude', 'What is the sum of the first five natural numbers?', '10', '15', '20', '25', 'B', 'Easy', '1 + 2 + 3 + 4 + 5 = 15.'),

-- Q32
('Aptitude', 'What is 40% of 150?', '40', '50', '60', '70', 'C', 'Easy', '40% of 150 = 60.'),

-- Q33
('Aptitude', 'If 8 workers each receive Rs. 100, what is the total amount?', 'Rs. 400', 'Rs. 600', 'Rs. 800', 'Rs. 1000', 'C', 'Easy', '8 × 100 = Rs. 800.'),

-- Q34
('Aptitude', 'What is the next number: 5, 10, 15, 20, ?', '22', '24', '25', '30', 'C', 'Easy', 'The series increases by 5, so the next number is 25.'),

-- Q35
('Aptitude', 'What is 0.5 expressed as a percentage?', '5%', '25%', '50%', '75%', 'C', 'Easy', '0.5 × 100 = 50%.'),

-- Q36
('Aptitude', 'How many sides does a hexagon have?', '5', '6', '7', '8', 'B', 'Easy', 'A hexagon has 6 sides.'),

-- Q37
('Aptitude', 'What is 18 ÷ 3?', '3', '6', '9', '12', 'B', 'Easy', '18 ÷ 3 = 6.'),

-- Q38
('Aptitude', 'What is the next number: 1, 3, 5, 7, ?', '8', '9', '10', '11', 'B', 'Easy', 'The series increases by 2, so the next number is 9.'),

-- Q39
('Aptitude', 'If 4 apples cost Rs. 80, what is the cost of one apple?', 'Rs. 15', 'Rs. 20', 'Rs. 25', 'Rs. 30', 'B', 'Easy', '80 ÷ 4 = Rs. 20.'),

-- Q40
('Aptitude', 'What is the sum of 45 and 55?', '90', '95', '100', '110', 'C', 'Easy', '45 + 55 = 100.'),

-- Q41
('Aptitude', 'Which of the following is an even number?', '17', '21', '28', '35', 'C', 'Easy', '28 is divisible by 2.'),

-- Q42
('Aptitude', 'What is 20% of 250?', '25', '40', '50', '75', 'C', 'Easy', '20% of 250 = 50.'),

-- Q43
('Aptitude', 'If x = 4, what is 3x + 2?', '10', '12', '14', '16', 'C', 'Easy', '3(4) + 2 = 14.'),

-- Q44
('Aptitude', 'What is the area of a square with side 6 cm?', '12 cm²', '24 cm²', '36 cm²', '48 cm²', 'C', 'Easy', 'Area = side² = 6² = 36 cm².'),

-- Q45
('Aptitude', 'What is 75 - 28?', '37', '47', '57', '67', 'B', 'Easy', '75 - 28 = 47.'),

-- Q46
('Aptitude', 'What is the reciprocal of 5?', '1/5', '5', '1/10', '10', 'A', 'Easy', 'The reciprocal of 5 is 1/5.'),

-- Q47
('Aptitude', 'What is 12% of 100?', '10', '12', '15', '20', 'B', 'Easy', '12% of 100 = 12.'),

-- Q48
('Aptitude', 'If a car travels 100 km in 2 hours, what is its speed?', '25 km/h', '40 km/h', '50 km/h', '60 km/h', 'C', 'Easy', 'Speed = 100 ÷ 2 = 50 km/h.'),

-- Q49
('Aptitude', 'What is the next number: 10, 20, 40, 80, ?', '100', '120', '140', '160', 'D', 'Easy', 'Each term is multiplied by 2, so the next number is 160.'),

-- Q50
('Aptitude', 'What is 5% of 400?', '10', '20', '30', '40', 'B', 'Easy', '5% of 400 = 20.'),

-- Q51
('Aptitude', 'A number is increased from 80 to 100. What is the percentage increase?', '20%', '25%', '30%', '40%', 'B', 'Medium', 'Increase = 20. Percentage increase = 20/80 × 100 = 25%.'),

-- Q52
('Aptitude', 'The average of 12, 18 and 24 is?', '16', '18', '20', '22', 'B', 'Medium', 'Average = 54 ÷ 3 = 18.'),

-- Q53
('Aptitude', 'A product costing Rs. 500 is sold for Rs. 600. What is the profit percentage?', '10%', '15%', '20%', '25%', 'C', 'Medium', 'Profit = 100. Profit percentage = 100/500 × 100 = 20%.'),

-- Q54
('Aptitude', 'If 5x = 45, what is x?', '5', '7', '9', '11', 'C', 'Medium', 'x = 45 ÷ 5 = 9.'),

-- Q55
('Aptitude', 'A can complete a task in 10 days. What fraction of the task does it complete in one day?', '1/5', '1/10', '1/15', '1/20', 'B', 'Medium', 'One day work = 1/10 of the task.'),

-- Q56
('Aptitude', 'A train travels 240 km in 4 hours. What is its speed?', '40 km/h', '50 km/h', '60 km/h', '80 km/h', 'C', 'Medium', 'Speed = 240 ÷ 4 = 60 km/h.'),

-- Q57
('Aptitude', 'The ratio of boys to girls is 3:2. If there are 30 boys, how many girls are there?', '15', '20', '25', '30', 'B', 'Medium', '30 corresponds to 3 parts, so one part is 10 and girls = 20.'),

-- Q58
('Aptitude', 'What is the simple interest on Rs. 1000 at 10% per annum for 2 years?', 'Rs. 100', 'Rs. 150', 'Rs. 200', 'Rs. 250', 'C', 'Medium', 'SI = PRT/100 = 1000 × 10 × 2 / 100 = Rs. 200.'),

-- Q59
('Aptitude', 'If 20 workers complete a task in 10 days, assuming equal efficiency, how many worker-days are required?', '100', '150', '200', '250', 'C', 'Medium', 'Worker-days = 20 × 10 = 200.'),

-- Q60
('Aptitude', 'A number is divided by 5 and the quotient is 12. What is the number?', '50', '55', '60', '65', 'C', 'Medium', 'Number = 12 × 5 = 60.'),

-- Q61
('Aptitude', 'What is 35% of 240?', '72', '84', '96', '108', 'B', 'Medium', '35% of 240 = 84.'),

-- Q62
('Aptitude', 'If the selling price is Rs. 900 and profit is Rs. 100, what is the cost price?', 'Rs. 700', 'Rs. 800', 'Rs. 900', 'Rs. 1000', 'B', 'Medium', 'Cost price = selling price - profit = 800.'),

-- Q63
('Aptitude', 'What is the average of the first 10 positive integers?', '5', '5.5', '6', '6.5', 'B', 'Medium', 'Average of 1 to 10 = (1 + 10)/2 = 5.5.'),

-- Q64
('Aptitude', 'A person travels 120 km at 40 km/h. How long does the journey take?', '2 hours', '3 hours', '4 hours', '5 hours', 'B', 'Medium', 'Time = 120 ÷ 40 = 3 hours.'),

-- Q65
('Aptitude', 'If 3 pens and 2 notebooks cost Rs. 160, and each pen costs Rs. 20, what is the cost of two notebooks?', 'Rs. 80', 'Rs. 90', 'Rs. 100', 'Rs. 110', 'C', 'Medium', 'Three pens cost 60, so two notebooks cost 160 - 60 = 100.'),

-- Q66
('Aptitude', 'What is the LCM of 12 and 18?', '24', '30', '36', '48', 'C', 'Medium', 'The least common multiple of 12 and 18 is 36.'),

-- Q67
('Aptitude', 'What is the HCF of 36 and 48?', '6', '8', '12', '16', 'C', 'Medium', 'The highest common factor is 12.'),

-- Q68
('Aptitude', 'If 4 workers finish a job in 15 days, how many worker-days are needed?', '45', '50', '60', '75', 'C', 'Medium', '4 × 15 = 60 worker-days.'),

-- Q69
('Aptitude', 'A shop gives a 10% discount on an item priced at Rs. 800. What is the selling price?', 'Rs. 700', 'Rs. 720', 'Rs. 740', 'Rs. 760', 'B', 'Medium', 'Discount = 80, so selling price = 720.'),

-- Q70
('Aptitude', 'If x/4 = 12, what is x?', '36', '40', '48', '52', 'C', 'Medium', 'x = 12 × 4 = 48.'),

-- Q71
('Aptitude', 'A number is 20% greater than 50. What is the number?', '55', '60', '65', '70', 'B', 'Medium', '20% of 50 is 10, so the number is 60.'),

-- Q72
('Aptitude', 'A class has 40 students. If 60% are boys, how many girls are there?', '12', '16', '20', '24', 'B', 'Medium', 'Boys = 24, so girls = 40 - 24 = 16.'),

-- Q73
('Aptitude', 'What is the probability of getting a head when a fair coin is tossed once?', '0', '1/4', '1/2', '1', 'C', 'Medium', 'There is one favorable outcome out of two equally likely outcomes.'),

-- Q74
('Aptitude', 'What is the probability of rolling a 6 on a fair die?', '1/2', '1/4', '1/6', '1/3', 'C', 'Medium', 'There is one favorable outcome among six possible outcomes.'),

-- Q75
('Aptitude', 'If a:b = 4:5 and b = 25, what is a?', '15', '20', '25', '30', 'B', 'Medium', '5 parts = 25, so 1 part = 5 and a = 20.'),

-- Q76
('Aptitude', 'What is the compound interest on Rs. 1000 at 10% per annum for 2 years?', 'Rs. 200', 'Rs. 210', 'Rs. 220', 'Rs. 240', 'B', 'Medium', 'Amount = 1000 × 1.1² = 1210, so CI = 210.'),

-- Q77
('Aptitude', 'A person buys an item for Rs. 400 and sells it for Rs. 360. What is the loss percentage?', '5%', '10%', '15%', '20%', 'B', 'Medium', 'Loss = 40. Loss percentage = 40/400 × 100 = 10%.'),

-- Q78
('Aptitude', 'What is the next number: 3, 6, 12, 24, ?', '36', '42', '48', '54', 'C', 'Medium', 'Each term is multiplied by 2.'),

-- Q79
('Aptitude', 'What is the next number: 2, 5, 10, 17, 26, ?', '35', '36', '37', '38', 'C', 'Medium', 'Differences are 3, 5, 7, 9, so the next difference is 11 and answer is 37.'),

-- Q80
('Aptitude', 'If 6 machines produce 600 units in a day, how many units will 10 machines produce at the same rate?', '800', '900', '1000', '1200', 'C', 'Medium', 'Each machine produces 100 units, so 10 machines produce 1000 units.'),

-- Q81
('Aptitude', 'A sum of Rs. 500 is divided in the ratio 2:3. What is the larger share?', 'Rs. 200', 'Rs. 250', 'Rs. 300', 'Rs. 350', 'C', 'Medium', 'Total parts = 5; larger share = 3/5 × 500 = 300.'),

-- Q82
('Aptitude', 'What is 2/5 of 150?', '50', '60', '70', '75', 'B', 'Medium', '150 × 2/5 = 60.'),

-- Q83
('Aptitude', 'A car covers 180 km in 3 hours. How far will it travel in 5 hours at the same speed?', '240 km', '270 km', '300 km', '320 km', 'C', 'Medium', 'Speed = 60 km/h, so in 5 hours it travels 300 km.'),

-- Q84
('Aptitude', 'If 8% of a number is 24, what is the number?', '200', '250', '300', '350', 'C', 'Medium', 'Number = 24 × 100/8 = 300.'),

-- Q85
('Aptitude', 'What is the median of 3, 7, 9, 11, 15?', '7', '8', '9', '11', 'C', 'Medium', 'The middle value is 9.'),

-- Q86
('Aptitude', 'What is the mode of 2, 3, 3, 4, 5?', '2', '3', '4', '5', 'B', 'Medium', '3 occurs most frequently.'),

-- Q87
('Aptitude', 'If 12% of a number is 36, what is the number?', '200', '250', '300', '350', 'C', 'Medium', 'Number = 36 × 100/12 = 300.'),

-- Q88
('Aptitude', 'A man walks at 5 km/h. How much distance will he cover in 4 hours?', '15 km', '20 km', '25 km', '30 km', 'B', 'Medium', 'Distance = 5 × 4 = 20 km.'),

-- Q89
('Aptitude', 'What is the sum of angles in a triangle?', '90°', '180°', '270°', '360°', 'B', 'Medium', 'The interior angles of a triangle sum to 180°.'),

-- Q90
('Aptitude', 'If the radius of a circle is 7 cm, what is its diameter?', '7 cm', '14 cm', '21 cm', '28 cm', 'B', 'Medium', 'Diameter = 2 × radius = 14 cm.'),

-- Q91
('Aptitude', 'A person earns Rs. 30,000 and saves 20%. How much does the person save?', 'Rs. 4,000', 'Rs. 5,000', 'Rs. 6,000', 'Rs. 7,000', 'C', 'Medium', '20% of 30,000 = 6,000.'),

-- Q92
('Aptitude', 'What is 45% of 800?', '320', '340', '360', '380', 'C', 'Medium', '45% of 800 = 360.'),

-- Q93
('Aptitude', 'If 7x - 5 = 30, what is x?', '4', '5', '6', '7', 'B', 'Medium', '7x = 35, so x = 5.'),

-- Q94
('Aptitude', 'A sum becomes Rs. 1200 after a simple interest of Rs. 200. What was the principal?', 'Rs. 800', 'Rs. 900', 'Rs. 1000', 'Rs. 1100', 'C', 'Medium', 'Principal = Amount - Interest = 1000.'),

-- Q95
('Aptitude', 'If 15 men complete a job in 12 days, how many men are needed to complete it in 9 days?', '15', '18', '20', '24', 'C', 'Medium', 'Men × days is constant: 15 × 12 = 20 × 9.'),

-- Q96
('Aptitude', 'A train 120 m long passes a pole in 6 seconds. What is its speed?', '15 m/s', '20 m/s', '25 m/s', '30 m/s', 'B', 'Medium', 'Speed = 120/6 = 20 m/s.'),

-- Q97
('Aptitude', 'What is the value of 5! ?', '60', '100', '120', '150', 'C', 'Medium', '5! = 5 × 4 × 3 × 2 × 1 = 120.'),

-- Q98
('Aptitude', 'How many ways can 2 different books be arranged?', '1', '2', '3', '4', 'B', 'Medium', 'Two books can be arranged in 2! = 2 ways.'),

-- Q99
('Aptitude', 'What is the probability of selecting a red ball from a bag containing 3 red and 7 blue balls?', '3/7', '3/10', '7/10', '1/2', 'B', 'Medium', 'Probability = favorable outcomes/total outcomes = 3/10.'),

-- Q100
('Aptitude', 'If a number is divided by 7 and leaves remainder 3, which could be the number?', '17', '21', '24', '28', 'C', 'Medium', '24 ÷ 7 leaves remainder 3.'),

-- Q101
('Aptitude', 'What is the average of 20, 30, 40 and 50?', '30', '35', '40', '45', 'B', 'Medium', 'Average = 140 ÷ 4 = 35.'),

-- Q102
('Aptitude', 'A shopkeeper marks an item at Rs. 1000 and gives 20% discount. What is the selling price?', 'Rs. 700', 'Rs. 750', 'Rs. 800', 'Rs. 850', 'C', 'Medium', 'Selling price = 1000 - 20% of 1000 = 800.'),

-- Q103
('Aptitude', 'If 3/8 of a number is 45, what is the number?', '100', '110', '120', '130', 'C', 'Medium', 'Number = 45 × 8/3 = 120.'),

-- Q104
('Aptitude', 'A person spends 75% of income and saves Rs. 5,000. What is the income?', 'Rs. 15,000', 'Rs. 20,000', 'Rs. 25,000', 'Rs. 30,000', 'B', 'Medium', 'Savings are 25%, so income = 5000/0.25 = 20,000.'),

-- Q105
('Aptitude', 'If 5 consecutive integers have an average of 20, what is the middle integer?', '18', '19', '20', '21', 'C', 'Medium', 'For consecutive integers, the average equals the middle number.'),

-- Q106
('Aptitude', 'A boat travels 30 km downstream in 3 hours. What is its downstream speed?', '5 km/h', '10 km/h', '15 km/h', '20 km/h', 'B', 'Medium', 'Speed = 30 ÷ 3 = 10 km/h.'),

-- Q107
('Aptitude', 'What is the square root of 196?', '12', '13', '14', '16', 'C', 'Medium', '14 × 14 = 196.'),

-- Q108
('Aptitude', 'If 4x + 7 = 31, what is x?', '4', '5', '6', '7', 'C', 'Medium', '4x = 24, so x = 6.'),

-- Q109
('Aptitude', 'What is the ratio of 45 minutes to 1 hour?', '1:2', '2:3', '3:4', '4:5', 'C', 'Medium', '45 minutes : 60 minutes = 3:4.'),

-- Q110
('Aptitude', 'A product costs Rs. 800 and is sold at a 15% profit. What is the selling price?', 'Rs. 880', 'Rs. 900', 'Rs. 920', 'Rs. 940', 'C', 'Medium', '15% of 800 = 120, so selling price = 920.'),

-- Q111
('Aptitude', 'What is the next number: 4, 9, 16, 25, ?', '30', '32', '36', '49', 'C', 'Medium', 'These are squares 2², 3², 4², 5², so next is 6² = 36.'),

-- Q112
('Aptitude', 'If a:b = 2:3 and b:c = 4:5, what is a:c?', '8:15', '2:5', '4:15', '6:5', 'A', 'Medium', 'Make b common: a:b = 8:12 and b:c = 12:15, so a:c = 8:15.'),

-- Q113
('Aptitude', 'A man completes 1/3 of a job in 4 days. At the same rate, how many days will he need for the whole job?', '8', '10', '12', '15', 'C', 'Medium', 'If one-third takes 4 days, the whole job takes 12 days.'),

-- Q114
('Aptitude', 'What is 18% of 250?', '35', '40', '45', '50', 'C', 'Medium', '18% of 250 = 45.'),

-- Q115
('Aptitude', 'A number is decreased by 20% from 250. What is the result?', '180', '200', '220', '230', 'B', 'Medium', '20% of 250 = 50, so result = 200.'),

-- Q116
('Aptitude', 'What is the simple interest on Rs. 2000 at 5% for 3 years?', 'Rs. 200', 'Rs. 250', 'Rs. 300', 'Rs. 350', 'C', 'Medium', 'SI = 2000 × 5 × 3 / 100 = 300.'),

-- Q117
('Aptitude', 'A person travels half the distance at 40 km/h and half at 60 km/h. What is the average speed?', '45 km/h', '48 km/h', '50 km/h', '52 km/h', 'B', 'Medium', 'For equal distances, average speed = 2ab/(a+b) = 48 km/h.'),

-- Q118
('Aptitude', 'What is the remainder when 125 is divided by 8?', '1', '3', '5', '7', 'C', 'Medium', '8 × 15 = 120, remainder = 5.'),

-- Q119
('Aptitude', 'What is the probability of drawing an ace from a standard 52-card deck?', '1/13', '1/26', '4/13', '1/4', 'A', 'Medium', 'There are 4 aces among 52 cards, so probability = 4/52 = 1/13.'),

-- Q120
('Aptitude', 'If 6x = 72, what is 2x?', '12', '18', '24', '36', 'C', 'Medium', 'x = 12, so 2x = 24.'),

-- Q121
('Aptitude', 'A work is completed by A in 12 days and by B in 18 days. How much work do they complete together in one day?', '1/6', '5/36', '1/9', '7/36', 'B', 'Medium', 'Combined work = 1/12 + 1/18 = 5/36.'),

-- Q122
('Aptitude', 'A sum of Rs. 720 is divided in the ratio 5:7. What is the smaller share?', '250', '300', '320', '350', 'B', 'Medium', '12 parts = 720, one part = 60, smaller share = 300.'),

-- Q123
('Aptitude', 'A shopkeeper buys an article for Rs. 600 and sells it for Rs. 690. What is the profit percentage?', '10%', '12%', '15%', '18%', 'C', 'Medium', 'Profit = 90; 90/600 × 100 = 15%.'),

-- Q124
('Aptitude', 'If the price of an item increases from Rs. 400 to Rs. 500, what is the percentage increase?', '20%', '25%', '30%', '40%', 'B', 'Medium', 'Increase = 100; 100/400 × 100 = 25%.'),

-- Q125
('Aptitude', 'The sum of two numbers is 50 and their difference is 10. What is the larger number?', '20', '25', '30', '35', 'C', 'Medium', 'Adding equations gives 2 × larger = 60, so larger = 30.'),

-- Q126
('Aptitude', 'If 10% of x is 15, what is x?', '100', '120', '150', '180', 'C', 'Medium', 'x = 15 × 100/10 = 150.'),

-- Q127
('Aptitude', 'A train moving at 72 km/h covers how many meters in 5 seconds?', '80 m', '90 m', '100 m', '120 m', 'C', 'Medium', '72 km/h = 20 m/s, so distance = 20 × 5 = 100 m.'),

-- Q128
('Aptitude', 'What is the next number: 1, 4, 9, 16, 25, ?', '30', '32', '36', '40', 'C', 'Medium', 'The numbers are consecutive squares; next is 6² = 36.'),

-- Q129
('Aptitude', 'What is the average of 7 consecutive integers centered at 25?', '22', '24', '25', '28', 'C', 'Medium', 'The average of consecutive integers is the middle number, 25.'),

-- Q130
('Aptitude', 'If 40% of a number is 80, what is 25% of the number?', '40', '50', '60', '70', 'B', 'Medium', 'The number is 200; 25% of 200 = 50.'),

-- Q131
('Aptitude', 'A sum doubles in 5 years under simple interest. What is the annual interest rate?', '10%', '15%', '20%', '25%', 'C', 'Medium', 'Interest equals principal in 5 years, so rate = 100/5 = 20%.'),

-- Q132
('Aptitude', 'If 2 men can complete a job in 12 days, how many days would 4 men take at the same efficiency?', '3', '6', '8', '10', 'B', 'Medium', 'Doubling workers halves the time: 12 × 2/4 = 6 days.'),

-- Q133
('Aptitude', 'What is the probability of getting an even number on a fair die?', '1/6', '1/3', '1/2', '2/3', 'C', 'Medium', 'Even outcomes are 2, 4 and 6: 3/6 = 1/2.'),

-- Q134
('Aptitude', 'How many diagonals does a square have?', '1', '2', '3', '4', 'B', 'Medium', 'A square has two diagonals.'),

-- Q135
('Aptitude', 'A rectangle has length 12 cm and width 5 cm. What is its area?', '17 cm²', '34 cm²', '60 cm²', '120 cm²', 'C', 'Medium', 'Area = 12 × 5 = 60 cm².'),

-- Q136
('Aptitude', 'A rectangle has length 12 cm and width 5 cm. What is its perimeter?', '24 cm', '30 cm', '34 cm', '60 cm', 'C', 'Medium', 'Perimeter = 2(12 + 5) = 34 cm.'),

-- Q137
('Aptitude', 'What is the smallest number that should be added to 98 to make it divisible by 7?', '0', '1', '2', '3', 'A', 'Medium', '98 is divisible by 7, so the smallest number to add is 0.'),

-- Q138
('Aptitude', 'What is the greatest 3-digit number divisible by 9?', '981', '990', '999', '998', 'C', 'Medium', '999 is divisible by 9 because its digit sum is 27.'),

-- Q139
('Aptitude', 'What is the smallest 3-digit number divisible by 8?', '100', '104', '108', '112', 'B', 'Medium', '104 is the first three-digit multiple of 8.'),

-- Q140
('Aptitude', 'If a:b = 5:8 and a = 25, what is b?', '30', '35', '40', '45', 'C', 'Medium', '5 parts = 25, so one part = 5 and b = 40.'),

-- Q141
('Aptitude', 'A candidate scores 72 out of 90. What percentage is this?', '70%', '75%', '80%', '85%', 'C', 'Medium', '72/90 × 100 = 80%.'),

-- Q142
('Aptitude', 'A salary increases from Rs. 40,000 to Rs. 46,000. What is the percentage increase?', '10%', '12%', '15%', '20%', 'C', 'Medium', 'Increase = 6000; 6000/40000 × 100 = 15%.'),

-- Q143
('Aptitude', 'If 3 pencils cost Rs. 45, how many pencils can be bought for Rs. 120?', '6', '7', '8', '9', 'C', 'Medium', 'One pencil costs 15, so 120/15 = 8.'),

-- Q144
('Aptitude', 'What is the sum of the first 20 positive integers?', '200', '210', '220', '230', 'B', 'Medium', 'Sum = 20 × 21 / 2 = 210.'),

-- Q145
('Aptitude', 'What is the value of 10P2?', '20', '45', '90', '100', 'C', 'Medium', '10P2 = 10 × 9 = 90.'),

-- Q146
('Aptitude', 'What is the value of 10C2?', '20', '45', '90', '100', 'B', 'Medium', '10C2 = 10 × 9 / 2 = 45.'),

-- Q147
('Aptitude', 'A box contains 5 red and 5 blue balls. What is the probability of drawing a blue ball?', '1/5', '1/4', '1/2', '3/4', 'C', 'Medium', 'There are 5 blue balls out of 10, giving probability 1/2.'),

-- Q148
('Aptitude', 'If 5x + 3 = 28, what is x?', '4', '5', '6', '7', 'B', 'Medium', '5x = 25, so x = 5.'),

-- Q149
('Aptitude', 'A person travels 150 km at 50 km/h. If the return journey is at 75 km/h, what is the total travel time?', '4 hours', '5 hours', '6 hours', '7 hours', 'B', 'Medium', 'First journey takes 3 hours and return takes 2 hours, total 5 hours.'),

-- Q150
('Aptitude', 'What is the next number: 2, 6, 12, 20, 30, ?', '36', '40', '42', '44', 'C', 'Medium', 'Terms follow n(n+1): 1×2, 2×3, ..., 6×7 = 42.'),

-- Q151
('Aptitude', 'A and B can complete a task in 12 and 18 days respectively. How many days will they take together?', '6 days', '7.2 days', '8 days', '9 days', 'B', 'Hard', 'Combined rate = 1/12 + 1/18 = 5/36, so time = 36/5 = 7.2 days.'),

-- Q152
('Aptitude', 'A can complete a job in 15 days and B in 20 days. They work together for 4 days. What fraction of the job remains?', '1/3', '2/5', '7/15', '8/15', 'C', 'Hard', 'Combined rate = 7/60; in 4 days they complete 7/15, leaving 8/15.'),

-- Q153
('Aptitude', 'A train 180 m long crosses a 270 m platform in 18 seconds. What is its speed?', '60 km/h', '72 km/h', '90 km/h', '100 km/h', 'C', 'Hard', 'Total distance = 450 m. Speed = 450/18 = 25 m/s = 90 km/h.'),

-- Q154
('Aptitude', 'Two numbers are in the ratio 3:5 and their sum is 96. What is the larger number?', '36', '48', '60', '64', 'C', 'Hard', '8 parts = 96, one part = 12, larger = 5 × 12 = 60.'),

-- Q155
('Aptitude', 'A price is increased by 20% and then decreased by 20%. What is the net percentage change?', '0%', '4% decrease', '4% increase', '8% decrease', 'B', 'Hard', 'Using 100: after increase 120, then decrease by 20% gives 96, a 4% decrease.'),

-- Q156
('Aptitude', 'A man spends 80% of his income. If his savings are Rs. 8,000, what is his income?', 'Rs. 32,000', 'Rs. 40,000', 'Rs. 48,000', 'Rs. 50,000', 'B', 'Hard', 'Savings are 20%, so income = 8000/0.20 = 40,000.'),

-- Q157
('Aptitude', 'The average of 8 numbers is 25. If one number 18 is replaced by 34, what is the new average?', '26', '27', '28', '29', 'B', 'Hard', 'Total increases by 16; average increases by 16/8 = 2, so new average = 27.'),

-- Q158
('Aptitude', 'A sum of Rs. 10,000 is invested at 10% compound interest annually for 2 years. What is the amount?', 'Rs. 11,000', 'Rs. 12,000', 'Rs. 12,100', 'Rs. 12,200', 'C', 'Hard', 'Amount = 10000 × 1.1² = Rs. 12,100.'),

-- Q159
('Aptitude', 'If x + 1/x = 5, what is x² + 1/x²?', '21', '23', '25', '27', 'B', 'Hard', 'Squaring gives x² + 2 + 1/x² = 25, so result = 23.'),

-- Q160
('Aptitude', 'What is the least positive integer that leaves remainder 2 when divided by 5, 6 and 7?', '212', '210', '214', '216', 'A', 'Hard', 'LCM of 5, 6 and 7 is 210. The least positive integer leaving remainder 2 is 210 + 2 = 212.'),

-- Q161
('Aptitude', 'A boat travels downstream at 18 km/h and upstream at 10 km/h. What is the speed of the boat in still water?', '12 km/h', '14 km/h', '16 km/h', '18 km/h', 'B', 'Hard', 'Still-water speed = (18 + 10)/2 = 14 km/h.'),

-- Q162
('Aptitude', 'For the same boat, what is the speed of the stream?', '2 km/h', '4 km/h', '6 km/h', '8 km/h', 'B', 'Hard', 'Stream speed = (18 - 10)/2 = 4 km/h.'),

-- Q163
('Aptitude', 'A person covers a distance at 40 km/h and returns at 60 km/h. What is the average speed for the complete journey?', '45 km/h', '48 km/h', '50 km/h', '52 km/h', 'B', 'Hard', 'For equal distances, average speed = 2×40×60/(40+60) = 48 km/h.'),

-- Q164
('Aptitude', 'If 12 men or 18 women can complete a job in 20 days, what is the ratio of efficiency of one man to one woman?', '2:3', '3:2', '1:1', '4:3', 'B', 'Hard', '12 men = 18 women, so one man is 18/12 = 3/2 times one woman.'),

-- Q165
('Aptitude', 'A starts a business with Rs. 20,000 and B joins after 4 months with Rs. 30,000. What is their profit-sharing ratio after one year?', '1:1', '2:3', '3:4', '1:2', 'A', 'Hard', 'A invests for 12 months: 240,000. B invests for 8 months: 240,000. Ratio = 1:1.'),

-- Q166
('Aptitude', 'If the roots of x² - 7x + 12 = 0 are?', '2 and 6', '3 and 4', '1 and 12', '4 and 5', 'B', 'Hard', 'The factors are (x-3)(x-4), so roots are 3 and 4.'),

-- Q167
('Aptitude', 'What is the sum of the first 15 odd positive integers?', '200', '225', '250', '275', 'B', 'Hard', 'The sum of the first n odd numbers is n². Thus 15² = 225.'),

-- Q168
('Aptitude', 'What is the sum of the first 20 even positive integers?', '400', '410', '420', '440', 'C', 'Hard', 'Sum = 2(1+2+...+20) = 2 × 210 = 420.'),

-- Q169
('Aptitude', 'If a number is increased by 25% and then increased by another 20%, what is the total percentage increase?', '40%', '45%', '50%', '55%', 'C', 'Hard', 'Net factor = 1.25 × 1.20 = 1.50, so the total increase is 50%.'),

-- Q170
('Aptitude', 'An article is sold at a 20% profit. If its cost price is Rs. 750, what is its selling price?', 'Rs. 850', 'Rs. 900', 'Rs. 950', 'Rs. 1000', 'B', 'Hard', 'Selling price = 750 × 1.20 = 900.'),

-- Q171
('Aptitude', 'A shopkeeper gives two successive discounts of 10% and 20%. What is the equivalent discount?', '28%', '30%', '32%', '35%', 'A', 'Hard', 'Equivalent discount = 1 - 0.9×0.8 = 0.28 = 28%.'),

-- Q172
('Aptitude', 'A person invests Rs. 5,000 at 8% simple interest for 3 years. What is the total amount?', 'Rs. 5,800', 'Rs. 6,000', 'Rs. 6,200', 'Rs. 6,500', 'C', 'Hard', 'Interest = 5000×8×3/100 = 1200, amount = 6200.'),

-- Q173
('Aptitude', 'If 2x + 3y = 17 and x = 4, what is y?', '2', '3', '4', '5', 'B', 'Hard', '8 + 3y = 17, so y = 3.'),

-- Q174
('Aptitude', 'If x:y = 3:4 and y:z = 8:9, what is x:z?', '2:3', '3:6', '3:8', '6:9', 'A', 'Hard', 'Make y common: 3:4 = 6:8, so x:z = 6:9 = 2:3.'),

-- Q175
('Aptitude', 'A and B have salaries in the ratio 5:7. If each receives an increase of Rs. 2,000, their new ratio becomes 3:4. What was A’s original salary?', 'Rs. 8,000', 'Rs. 10,000', 'Rs. 12,000', 'Rs. 14,000', 'B', 'Hard', 'Let salaries be 5x and 7x. (5x+2000)/(7x+2000)=3/4 gives x=2000, so A=10000.'),

-- Q176
('Aptitude', 'A train crosses a man in 10 seconds and a platform 150 m long in 25 seconds. What is the train length?', '75 m', '100 m', '125 m', '150 m', 'B', 'Hard', 'Let train length L. L/10 = (L+150)/25. Solving gives L = 100 m.'),

-- Q177
('Aptitude', 'If the probability of an event is 0.35, what is the probability that it does not occur?', '0.35', '0.50', '0.65', '0.75', 'C', 'Hard', 'Complementary probability = 1 - 0.35 = 0.65.'),

-- Q178
('Aptitude', 'Two dice are rolled. What is the probability that the sum is 7?', '1/12', '1/6', '1/9', '1/4', 'B', 'Hard', 'There are 6 combinations giving sum 7 out of 36, so probability = 1/6.'),

-- Q179
('Aptitude', 'Two dice are rolled. What is the probability that both show the same number?', '1/12', '1/6', '1/4', '1/3', 'B', 'Hard', 'There are 6 doubles out of 36 outcomes, giving 1/6.'),

-- Q180
('Aptitude', 'How many different 3-letter arrangements can be made from A, B, C, D without repetition?', '12', '18', '24', '36', 'C', 'Hard', 'Number of arrangements = 4P3 = 4×3×2 = 24.'),

-- Q181
('Aptitude', 'How many ways can 4 people sit in a row?', '12', '16', '20', '24', 'D', 'Hard', 'Number of arrangements = 4! = 24.'),

-- Q182
('Aptitude', 'How many ways can 5 people sit in a row?', '60', '100', '120', '125', 'C', 'Hard', 'Number of arrangements = 5! = 120.'),

-- Q183
('Aptitude', 'How many diagonals does a polygon with 8 sides have?', '16', '20', '24', '28', 'B', 'Hard', 'Number of diagonals = n(n-3)/2 = 8×5/2 = 20.'),

-- Q184
('Aptitude', 'If the mean of five numbers is 18 and four numbers are 12, 15, 20 and 25, what is the fifth number?', '16', '18', '20', '22', 'B', 'Hard', 'Total = 5×18 = 90; known total = 72; fifth number = 18.'),

-- Q185
('Aptitude', 'The average age of 6 people is 25 years. If one person aged 30 leaves, what is the new average?', '23', '24', '25', '26', 'B', 'Hard', 'Total age = 150. After removing 30, total = 120; 120/5 = 24.'),

-- Q186
('Aptitude', 'A number is first decreased by 10% and then increased by 10%. What is the net change?', 'No change', '1% decrease', '1% increase', '2% decrease', 'B', 'Hard', 'Using 100 gives 90 then 99, so there is a 1% decrease.'),

-- Q187
('Aptitude', 'If the cost price of an item is Rs. 800 and it is sold at a 12.5% profit, what is the selling price?', 'Rs. 850', 'Rs. 880', 'Rs. 900', 'Rs. 920', 'C', 'Hard', '12.5% of 800 = 100, so selling price = 900.'),

-- Q188
('Aptitude', 'A person can complete a task in 24 days. After working for 8 days, what fraction of the task remains?', '1/3', '1/2', '2/3', '3/4', 'C', 'Hard', 'In 8 days, 8/24 = 1/3 is completed, leaving 2/3.'),

-- Q189
('Aptitude', 'A and B together can complete a task in 10 days. A alone can do it in 15 days. How many days does B alone take?', '20', '25', '30', '35', 'C', 'Hard', 'B rate = 1/10 - 1/15 = 1/30, so B takes 30 days.'),

-- Q190
('Aptitude', 'A pipe fills a tank in 12 hours and another pipe fills it in 18 hours. How long will they take together?', '6 hours', '7.2 hours', '8 hours', '9 hours', 'B', 'Hard', 'Combined rate = 1/12 + 1/18 = 5/36, so time = 36/5 = 7.2 hours.'),

-- Q191
('Aptitude', 'A pipe fills a tank in 10 hours while a leak empties it in 15 hours. How long will the tank take to fill?', '20 hours', '25 hours', '30 hours', '35 hours', 'C', 'Hard', 'Net rate = 1/10 - 1/15 = 1/30, so it takes 30 hours.'),

-- Q192
('Aptitude', 'A man spends 30% of his income on rent and 20% on food. If he saves Rs. 25,000, what is his income?', 'Rs. 40,000', 'Rs. 45,000', 'Rs. 50,000', 'Rs. 55,000', 'C', 'Hard', 'Savings are 50% of income, so income = 25,000/0.5 = 50,000.'),

-- Q193
('Aptitude', 'A number is increased by 30% and becomes 260. What was the original number?', '180', '200', '220', '240', 'B', 'Hard', 'Original × 1.3 = 260, so original = 200.'),

-- Q194
('Aptitude', 'If 40% of A equals 60% of B, what is A:B?', '2:3', '3:2', '2:5', '3:5', 'B', 'Hard', '0.4A = 0.6B, so A/B = 3/2.'),

-- Q195
('Aptitude', 'The ratio of two numbers is 4:7. If their difference is 45, what is the larger number?', '60', '75', '90', '105', 'D', 'Hard', 'Difference is 3 parts = 45, one part = 15; larger number = 7×15 = 105.'),

-- Q196
('Aptitude', 'A person covers 1/4 of a journey at 20 km/h and the remaining 3/4 at 60 km/h. What is the average speed?', '40 km/h', '45 km/h', '48 km/h', '50 km/h', 'A', 'Hard', 'For a 4-unit distance, time = 1/20 + 3/60 = 0.10 hour, so average speed = 40 km/h.'),

-- Q197
('Aptitude', 'What is the smallest positive number divisible by 12, 15 and 20?', '30', '40', '50', '60', 'D', 'Hard', 'LCM of 12, 15 and 20 is 60.'),

-- Q198
('Aptitude', 'What is the remainder when 2^10 is divided by 7?', '1', '2', '3', '4', 'B', 'Hard', '2^10 = 1024; 1024 divided by 7 leaves remainder 2.'),

-- Q199
('Aptitude', 'If x² - 5x + 6 = 0, what is the sum of the roots?', '4', '5', '6', '7', 'B', 'Hard', 'For x² - 5x + 6, sum of roots = 5.'),

-- Q200
('Aptitude', 'If x² - 9x + 20 = 0, what is the product of the roots?', '9', '18', '20', '29', 'C', 'Hard', 'Product of roots = constant term = 20.'),

-- Q201
('Aptitude', 'A person invests Rs. 12,000 for 8 months and another invests Rs. 18,000 for 6 months. What is their profit-sharing ratio?', '4:5', '8:9', '16:27', '2:3', 'B', 'Hard', 'Investment-time products are 96,000 and 108,000, giving 8:9.'),

-- Q202
('Aptitude', 'A starts with Rs. 15,000 and B with Rs. 20,000. After 6 months A withdraws half of his capital. What is the profit ratio after one year?', '15:20', '3:5', '9:16', '10:13', 'C', 'Hard', 'A investment-time = 15000×6 + 7500×6 = 135000; B = 240000; ratio = 9:16.'),

-- Q203
('Aptitude', 'A train travels 360 km partly at 60 km/h and partly at 90 km/h. If total time is 5 hours, how many hours does it travel at 60 km/h?', '2 hours', '3 hours', '4 hours', '5 hours', 'B', 'Hard', 'Let time at 60 be t. 60t + 90(5-t)=360 gives t=3 hours.'),

-- Q204
('Aptitude', 'A person walks 6 km at 4 km/h and then 8 km at 8 km/h. What is the total time?', '2 hours', '2.5 hours', '3 hours', '3.5 hours', 'B', 'Hard', 'Time = 6/4 + 8/8 = 1.5 + 1 = 2.5 hours.'),

-- Q205
('Aptitude', 'If the average of 10 numbers is 50 and one number is excluded, the average of the remaining 9 is 48. What was the excluded number?', '58', '68', '70', '72', 'B', 'Hard', 'Original total = 500; remaining total = 432; excluded number = 68.'),

-- Q206
('Aptitude', 'A student scores 70, 80, 90 and 60 in four tests. What score is required in the fifth test to get an average of 80?', '90', '95', '100', '105', 'C', 'Hard', 'Required total = 400; existing total = 300; required score = 100.'),

-- Q207
('Aptitude', 'If the average of A and B is 25 and the average of B and C is 30, and A = 20, what is C?', '25', '30', '35', '40', 'B', 'Hard', 'A+B=50, so B=30. B+C=60, so C=30.'),

-- Q208
('Aptitude', 'A 20% discount is given on an item and the selling price is Rs. 960. What was the marked price?', 'Rs. 1,100', 'Rs. 1,200', 'Rs. 1,250', 'Rs. 1,300', 'B', 'Hard', '80% of marked price = 960, so marked price = 1200.'),

-- Q209
('Aptitude', 'An article is sold for Rs. 720 after a 10% discount. What was its marked price?', 'Rs. 760', 'Rs. 800', 'Rs. 820', 'Rs. 900', 'B', 'Hard', '90% of marked price = 720, so marked price = 800.'),

-- Q210
('Aptitude', 'An article is sold at 20% profit. If its selling price is Rs. 960, what is its cost price?', 'Rs. 760', 'Rs. 800', 'Rs. 820', 'Rs. 840', 'B', 'Hard', 'Cost price = 960/1.2 = 800.'),

-- Q211
('Aptitude', 'A mixture contains milk and water in ratio 5:2. If 7 liters of water are added, ratio becomes 5:3. What was the original quantity of milk?', '25 L', '30 L', '35 L', '40 L', 'C', 'Hard', 'Let milk=5x, water=2x. 5x/(2x+7)=5/3 gives x=7, milk=35 L.'),

-- Q212
('Aptitude', 'A 40-liter mixture contains milk and water in ratio 3:2. How much water should be added to make the ratio 3:4?', '10 L', '16 L', '20 L', '25 L', 'B', 'Hard', 'Initial milk = 24 L and water = 16 L. For a 3:4 ratio, water must be 32 L, so add 16 L.'),

-- Q213
('Aptitude', 'A sum of Rs. 6,000 is divided among A, B and C in ratio 2:3:5. What is C’s share?', 'Rs. 2,000', 'Rs. 2,500', 'Rs. 3,000', 'Rs. 3,500', 'C', 'Hard', 'Total parts = 10; C gets 5/10 × 6000 = 3000.'),

-- Q214
('Aptitude', 'If 4 workers work 6 hours a day for 10 days to complete a job, how many days will 5 workers working 8 hours a day need?', '5 days', '6 days', '7 days', '8 days', 'B', 'Hard', 'Total work = 4×6×10=240 worker-hours. New days = 240/(5×8)=6.'),

-- Q215
('Aptitude', 'A can do a job in 20 days, B in 30 days and C in 60 days. How long will they take together?', '8 days', '10 days', '12 days', '15 days', 'B', 'Hard', 'Combined rate = 1/20+1/30+1/60 = 1/10, so 10 days.'),

-- Q216
('Aptitude', 'A and B together can complete a job in 8 days. A alone takes 12 days. How long does B alone take?', '20 days', '24 days', '30 days', '36 days', 'B', 'Hard', 'B rate = 1/8 - 1/12 = 1/24, so B takes 24 days.'),

-- Q217
('Aptitude', 'A pipe fills a tank in 8 hours, B in 12 hours and C in 24 hours. How long will all three take together?', '3 hours', '4 hours', '5 hours', '6 hours', 'B', 'Hard', 'Combined rate = 1/8+1/12+1/24 = 1/4, so time = 4 hours.'),

-- Q218
('Aptitude', 'A clock gains 5 minutes every hour. How many minutes will it gain in 12 hours?', '30', '45', '60', '75', 'C', 'Hard', 'Gain = 5 × 12 = 60 minutes.'),

-- Q219
('Aptitude', 'A clock loses 4 minutes every hour. How much will it lose in 15 hours?', '40 minutes', '50 minutes', '60 minutes', '70 minutes', 'C', 'Hard', 'Loss = 4 × 15 = 60 minutes.'),

-- Q220
('Aptitude', 'At what time between 3 and 4 o’clock are the hour and minute hands together?', '3:15', '3:16 4/11', '3:20', '3:25', 'B', 'Hard', 'Coincidence time after 3 = 30×3/5.5 = 16 4/11 minutes.'),

-- Q221
('Aptitude', 'How many times do the hands of a clock overlap in 12 hours?', '10', '11', '12', '13', 'B', 'Hard', 'The hands overlap 11 times in 12 hours.'),

-- Q222
('Aptitude', 'If January 1 is a Monday in a non-leap year, what day is February 1?', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'C', 'Hard', 'January has 31 days, which shifts the day by 3; Monday becomes Thursday.'),

-- Q223
('Aptitude', 'If today is Wednesday, what day will it be after 100 days?', 'Monday', 'Tuesday', 'Thursday', 'Friday', 'D', 'Hard', '100 mod 7 = 2, so Wednesday + 2 days = Friday.'),

-- Q224
('Aptitude', 'Two numbers have product 180 and HCF 6. If one number is 30, what is the other?', '5', '6', '9', '12', 'B', 'Hard', 'Other number = 180/30 = 6.'),

-- Q225
('Aptitude', 'The LCM of two numbers is 180 and their HCF is 6. If one number is 30, what is the other?', '24', '30', '36', '42', 'C', 'Hard', 'Product of numbers = LCM×HCF = 1080; other = 1080/30 = 36.'),

-- Q226
('Aptitude', 'What is the smallest number which when divided by 6, 8 and 12 leaves remainder 5?', '29', '41', '53', '65', 'A', 'Hard', 'LCM of 6,8,12 is 24; 24+5 = 29.'),

-- Q227
('Aptitude', 'What is the greatest number that divides 43, 91 and 183 leaving the same remainder?', '2', '4', '6', '8', 'B', 'Hard', 'Differences are 48 and 92; HCF is 4.'),

-- Q228
('Aptitude', 'What is the smallest number that must be added to 1000 to make it divisible by 17?', '2', '3', '4', '5', 'B', 'Hard', '1000 leaves remainder 14 when divided by 17, so add 3.'),

-- Q229
('Aptitude', 'What is the remainder when 3^5 is divided by 5?', '1', '2', '3', '4', 'C', 'Hard', '3^5 = 243, and 243 leaves remainder 3 when divided by 5.'),

-- Q230
('Aptitude', 'If 2x + 3 = 5x - 12, what is x?', '3', '4', '5', '6', 'C', 'Hard', '15 = 3x, so x = 5.'),

-- Q231
('Aptitude', 'If x:y = 4:7 and y:z = 14:15, what is x:z?', '4:15', '8:15', '7:15', '8:21', 'B', 'Hard', 'Make y common: 4:7 = 8:14, so x:z = 8:15.'),

-- Q232
('Aptitude', 'If a+b=12 and ab=35, what is a²+b²?', '64', '72', '74', '84', 'C', 'Hard', 'a²+b² = (a+b)² - 2ab = 144 - 70 = 74.'),

-- Q233
('Aptitude', 'If a-b=5 and ab=24, what is a²+b²?', '49', '73', '74', '81', 'B', 'Hard', 'a²+b² = (a-b)² + 2ab = 25 + 48 = 73.'),

-- Q234
('Aptitude', 'If x + y = 10 and x² + y² = 58, what is xy?', '15', '18', '21', '24', 'C', 'Hard', '100 = 58 + 2xy, so xy = 21.'),

-- Q235
('Aptitude', 'If x - 1/x = 3, what is x² + 1/x²?', '7', '9', '11', '13', 'C', 'Hard', 'Squaring gives x² - 2 + 1/x² = 9, so result = 11.'),

-- Q236
('Aptitude', 'What is the probability of getting exactly two heads when three fair coins are tossed?', '1/8', '3/8', '1/2', '5/8', 'B', 'Hard', 'Three favorable sequences out of eight give probability 3/8.'),

-- Q237
('Aptitude', 'What is the probability of getting at least one head when three fair coins are tossed?', '1/8', '3/8', '7/8', '1/2', 'C', 'Hard', 'Probability = 1 - P(no heads) = 1 - 1/8 = 7/8.'),

-- Q238
('Aptitude', 'A bag has 4 red, 3 blue and 3 green balls. What is the probability of drawing a red or blue ball?', '3/10', '7/10', '4/10', '8/10', 'B', 'Hard', 'Favorable balls = 4+3=7 out of 10, so probability = 7/10.'),

-- Q239
('Aptitude', 'How many 4-digit numbers can be formed using 1,2,3,4 without repetition?', '12', '16', '24', '32', 'C', 'Hard', 'All four digits are arranged: 4! = 24.'),

-- Q240
('Aptitude', 'How many ways can 3 people be selected from 8 people?', '24', '48', '56', '64', 'C', 'Hard', '8C3 = 8×7×6/(3×2×1) = 56.'),

-- Q241
('Aptitude', 'How many ways can a committee of 4 be selected from 10 people?', '120', '180', '210', '240', 'C', 'Hard', '10C4 = 210.'),

-- Q242
('Aptitude', 'In how many ways can the letters of the word CAT be arranged?', '3', '6', '9', '12', 'B', 'Hard', 'Three distinct letters can be arranged in 3! = 6 ways.'),

-- Q243
('Aptitude', 'In how many ways can the letters of the word LEVEL be arranged?', '20', '30', '40', '60', 'B', 'Hard', '5 letters with L repeated twice and E repeated twice: 5!/(2!2!) = 30.'),

-- Q244
('Aptitude', 'A group has 6 men and 4 women. How many ways can one man and one woman be selected?', '10', '20', '24', '30', 'C', 'Hard', 'Choose 1 man in 6 ways and 1 woman in 4 ways: 6×4 = 24.'),

-- Q245
('Aptitude', 'A box contains 5 red and 4 blue balls. Two balls are drawn without replacement. What is the probability both are red?', '5/18', '5/12', '10/18', '1/2', 'A', 'Hard', 'Probability = 5/9 × 4/8 = 20/72 = 5/18.'),

-- Q246
('Aptitude', 'A class has 60 students. 35 study Java, 30 study Python and 15 study both. How many study at least one of the two?', '45', '50', '55', '60', 'B', 'Hard', 'Using inclusion-exclusion: 35+30-15 = 50.'),

-- Q247
('Aptitude', 'In a group of 100 candidates, 60 know Java, 50 know Python and 30 know both. How many know neither?', '10', '20', '30', '40', 'B', 'Hard', 'At least one = 60+50-30 = 80, so neither = 20.'),

-- Q248
('Aptitude', 'A survey of 120 candidates shows 70 like Python, 60 like Java and 30 like both. How many like exactly one of the two?', '60', '70', '80', '90', 'B', 'Hard', 'Exactly one = (70-30)+(60-30)=70.'),

-- Q249
('Aptitude', 'A candidate needs an average of 75 in 5 tests. Scores in four tests are 68, 72, 80 and 74. What score is needed in the fifth test?', '76', '78', '81', '82', 'C', 'Hard', 'Required total = 375. Existing total = 294, so required score = 81.'),

-- Q250
('Aptitude', 'A person buys an item at 20% discount on the marked price and sells it at 25% profit on the cost price. If the marked price is Rs. 1,000, what is the selling price?', 'Rs. 900', 'Rs. 950', 'Rs. 1,000', 'Rs. 1,050', 'C', 'Hard', 'Cost price after 20% discount = Rs. 800. Selling at 25% profit gives Rs. 1,000.'),
-- Q251
('Aptitude', 'What is 35% of 480?', '148', '168', '178', '188', 'B', 'Easy', '35% of 480 = 0.35 × 480 = 168.'),

-- Q252
('Aptitude', 'If 7 books cost ₹560, what is the cost of 12 books?', '₹840', '₹900', '₹960', '₹980', 'C', 'Easy', 'One book costs ₹560/7 = ₹80. Therefore 12 books cost ₹960.'),

-- Q253
('Aptitude', 'A number is increased from 250 to 300. What is the percentage increase?', '15%', '20%', '25%', '30%', 'B', 'Easy', 'Increase = 50. Percentage increase = 50/250 × 100 = 20%.'),

-- Q254
('Aptitude', 'What is the average of 24, 36, 48 and 52?', '38', '40', '42', '44', 'B', 'Easy', 'Sum = 160. Average = 160/4 = 40.'),

-- Q255
('Aptitude', 'If 5x = 75, what is x?', '10', '12', '15', '20', 'C', 'Easy', 'x = 75/5 = 15.'),

-- Q256
('Aptitude', 'What is 18% of 250?', '35', '40', '45', '50', 'C', 'Easy', '18% of 250 = 45.'),

-- Q257
('Aptitude', 'A product bought for ₹750 is sold for ₹900. What is the profit percentage?', '15%', '18%', '20%', '25%', 'C', 'Easy', 'Profit = ₹150. Profit percentage = 150/750 × 100 = 20%.'),

-- Q258
('Aptitude', 'What is the HCF of 48 and 72?', '12', '16', '24', '36', 'C', 'Easy', 'The greatest common factor of 48 and 72 is 24.'),

-- Q259
('Aptitude', 'What is the LCM of 15 and 20?', '40', '50', '60', '80', 'C', 'Easy', 'LCM of 15 and 20 is 60.'),

-- Q260
('Aptitude', 'A train travels 360 km in 6 hours. What is its speed?', '50 km/h', '60 km/h', '70 km/h', '80 km/h', 'B', 'Easy', 'Speed = 360/6 = 60 km/h.'),

-- Q261
('Aptitude', 'What is 7/8 expressed as a percentage?', '75%', '80%', '87.5%', '90%', 'C', 'Easy', '7/8 × 100 = 87.5%.'),

-- Q262
('Aptitude', 'If 30% of a number is  ninety, what is the number?', '270', '300', '330', '360', 'B', 'Easy', 'Number = 90/0.30 = 300.'),

-- Q263
('Aptitude', 'A shop offers a 20% discount on an item marked ₹1,500. What is the selling price?', '₹1,100', '₹1,200', '₹1,250', '₹1,300', 'B', 'Easy', 'Discount = ₹300. Selling price = ₹1,200.'),

-- Q264
('Aptitude', 'What is the next number: 3, 6, 12, 24, ?', '36', '42', '48', '54', 'C', 'Easy', 'Each term is multiplied by 2. Next term = 48.'),

-- Q265
('Aptitude', 'If 9 pens cost ₹135, what is the cost of 15 pens?', '₹200', '₹225', '₹240', '₹250', 'B', 'Easy', 'One pen costs ₹15. Therefore 15 pens cost ₹225.'),

-- Q266
('Aptitude', 'What is the square of 18?', '286', '324', '342', '364', 'B', 'Easy', '18² = 324.'),

-- Q267
('Aptitude', 'A person earns ₹40,000 and spends 75% of it. How much is saved?', '₹8,000', '₹10,000', '₹12,000', '₹15,000', 'B', 'Easy', 'Savings = 25% of ₹40,000 = ₹10,000.'),

-- Q268
('Aptitude', 'What is the remainder when 83 is divided by 7?', '5', '6', '7', '4', 'B', 'Easy', '83 = 7 × 11 + 6, so the remainder is 6.'),

-- Q269
('Aptitude', 'If 4 workers complete a task in 18 days, how many worker-days are required?', '54', '64', '72', '82', 'C', 'Easy', 'Total work = 4 × 18 = 72 worker-days.'),

-- Q270
('Aptitude', 'What is the sum of the first 10 natural numbers?', '45', '50', '55', '60', 'C', 'Easy', 'Sum = 10 × 11 / 2 = 55.'),

-- Q271
('Aptitude', 'If x - 15 = 28, what is x?', '33', '38', '43', '48', 'C', 'Easy', 'x = 28 + 15 = 43.'),

-- Q272
('Aptitude', 'A car covers 240 km at 80 km/h. How much time does it take?', '2 hours', '3 hours', '4 hours', '5 hours', 'B', 'Easy', 'Time = 240/80 = 3 hours.'),

-- Q273
('Aptitude', 'What is 12.5% of 800?', '80', '90', '100', '120', 'C', 'Easy', '12.5% = 1/8. 800/8 = 100.'),

-- Q274
('Aptitude', 'The ratio of two numbers is 3:5 and their sum is 64. What is the smaller number?', '20', '24', '28', '32', 'B', 'Easy', 'Total parts = 8. One part = 8. Smaller number = 3 × 8 = 24.'),

-- Q275
('Aptitude', 'What is the cube of 4?', '16', '32', '64', '128', 'C', 'Easy', '4³ = 64.'),

-- Q276
('Aptitude', 'A candidate scores 45 out of 60. What percentage is this?', '65%', '70%', '75%', '80%', 'C', 'Easy', '45/60 × 100 = 75%.'),

-- Q277
('Aptitude', 'If 6 machines produce 900 units, how many units does each machine produce?', '100', '120', '150', '180', 'C', 'Easy', '900/6 = 150 units.'),

-- Q278
('Aptitude', 'A number is decreased from 500 to 425. What is the percentage decrease?', '10%', '12%', '15%', '18%', 'C', 'Easy', 'Decrease = 75. 75/500 × 100 = 15%.'),

-- Q279
('Aptitude', 'What is the smallest composite number?', '1', '2', '3', '4', 'D', 'Easy', '4 is the smallest composite number.'),

-- Q280
('Aptitude', 'If 3x + 5 = 20, what is x?', '3', '4', '5', '6', 'C', 'Easy', '3x = 15, so x = 5.'),

-- Q281
('Aptitude', 'The average of 6 numbers is 18. What is their total?', '96', '108', '116', '120', 'B', 'Easy', 'Total = 18 × 6 = 108.'),

-- Q282
('Aptitude', 'A person walks 12 km in 3 hours. What is the average speed?', '3 km/h', '4 km/h', '5 km/h', '6 km/h', 'B', 'Easy', 'Speed = 12/3 = 4 km/h.'),

-- Q283
('Aptitude', 'What is the simple interest on ₹4,000 at 5% for 3 years?', '₹400', '₹500', '₹600', '₹700', 'C', 'Easy', 'SI = 4000 × 5 × 3 / 100 = ₹600.'),

-- Q284
('Aptitude', 'If 80% of a number is 160, what is the number?', '180', '200', '220', '240', 'B', 'Easy', 'Number = 160/0.8 = 200.'),

-- Q285
('Aptitude', 'What is the next number: 7, 14, 21, 28, ?', '32', '35', '36', '42', 'B', 'Easy', 'The sequence increases by 7. Next number = 35.'),

-- Q286
('Aptitude', 'A shirt costs ₹800 after a 20% discount. What was its marked price?', '₹900', '₹950', '₹1,000', '₹1,100', 'C', 'Easy', '₹800 represents 80% of marked price. Marked price = 800/0.8 = ₹1,000.'),

-- Q287
('Aptitude', 'If 10 workers complete a job in 8 days, how many worker-days are required?', '60', '70', '80', '90', 'C', 'Easy', 'Work = 10 × 8 = 80 worker-days.'),

-- Q288
('Aptitude', 'What is the value of 15 + 6 × 2?', '42', '27', '30', '21', 'B', 'Easy', 'Multiplication first: 6 × 2 = 12. Then 15 + 12 = 27.'),

-- Q289
('Aptitude', 'What is the HCF of 18 and 30?', '3', '6', '9', '12', 'B', 'Easy', 'The greatest common factor is 6.'),

-- Q290
('Aptitude', 'What is the LCM of 6 and 9?', '12', '15', '18', '24', 'C', 'Easy', 'LCM of 6 and 9 is 18.'),

-- Q291
('Aptitude', 'If 2/3 of a number is 40, what is the number?', '50', '60', '70', '80', 'B', 'Easy', 'Number = 40 × 3/2 = 60.'),

-- Q292
('Aptitude', 'A product costs ₹1,200 and is sold for ₹1,080. What is the loss percentage?', '8%', '10%', '12%', '15%', 'B', 'Easy', 'Loss = ₹120. Loss percentage = 120/1200 × 100 = 10%.'),

-- Q293
('Aptitude', 'What is 45% of 200?', '80', '90', '100', '110', 'B', 'Easy', '45% of 200 = 90.'),

-- Q294
('Aptitude', 'A train covers 450 km in 5 hours. What is its speed?', '80 km/h', '90 km/h', '100 km/h', '110 km/h', 'B', 'Easy', 'Speed = 450/5 = 90 km/h.'),

-- Q295
('Aptitude', 'What is the average of 15, 25, 35 and 45?', '25', '30', '35', '40', 'B', 'Easy', 'Sum = 120. Average = 30.'),

-- Q296
('Aptitude', 'If 8x = 96, what is x?', '10', '12', '14', '16', 'B', 'Easy', 'x = 96/8 = 12.'),

-- Q297
('Aptitude', 'A man spends ₹18,000 from an income of ₹30,000. What percentage does he save?', '30%', '35%', '40%', '45%', 'C', 'Easy', 'Savings = ₹12,000. Percentage = 12,000/30,000 × 100 = 40%.'),

-- Q298
('Aptitude', 'What is the remainder when 95 is divided by 8?', '5', '6', '7', '8', 'C', 'Easy', '95 = 8 × 11 + 7. Remainder = 7.'),

-- Q299
('Aptitude', 'If 12 pencils cost ₹96, what is the cost of 20 pencils?', '₹140', '₹150', '₹160', '₹180', 'C', 'Easy', 'One pencil costs ₹8. Twenty pencils cost ₹160.'),

-- Q300
('Aptitude', 'What is 25% of 640?', '120', '140', '160', '180', 'C', 'Easy', '25% = 1/4. 640/4 = 160.'),

-- Q301
('Aptitude', 'A and B can complete a task in 20 and 30 days respectively. How long will they take together?', '10 days', '12 days', '15 days', '18 days', 'B', 'Medium', 'Combined rate = 1/20 + 1/30 = 1/12. Therefore time = 12 days.'),

-- Q302
('Aptitude', 'A sum of ₹8,000 earns simple interest of ₹1,600 in 4 years. What is the rate?', '4%', '5%', '6%', '8%', 'B', 'Medium', 'R = SI × 100/(P × T) = 1600×100/(8000×4) = 5%.'),

-- Q303
('Aptitude', 'A product is marked 20% above cost price and sold at 10% discount. What is the profit percentage?', '5%', '8%', '10%', '12%', 'B', 'Medium', 'Let CP = 100. MP = 120. SP = 108. Profit = 8%.'),
 
-- Q304
('Aptitude', 'A train 150 m long crosses a pole in 10 seconds. What is its speed?', '45 km/h', '54 km/h', '60 km/h', '72 km/h', 'B', 'Medium', 'Speed = 150/10 = 15 m/s = 54 km/h.'),

-- Q305
('Aptitude', 'The compound interest on ₹5,000 at 10% per annum for 2 years is:', '₹950', '₹1,000', '₹1,050', '₹1,100', 'C', 'Medium', 'Amount = 5000 × 1.1² = 6050. CI = ₹1,050.'),

-- Q306
('Aptitude', 'Two numbers are in the ratio 4:7 and their difference is 24. What is the smaller number?', '24', '28', '32', '36', 'C', 'Medium', 'Difference = 3 parts = 24, so one part = 8. Smaller number = 4×8 = 32.'),

-- Q307
('Aptitude', 'A can complete a job in 12 days and B in 18 days. What fraction of the job do they complete together in one day?', '1/6', '5/36', '7/36', '1/4', 'B', 'Medium', 'Combined work per day = 1/12 + 1/18 = 5/36.'),

-- Q308
('Aptitude', 'Successive discounts of 20% and 10% are equivalent to what single discount?', '26%', '28%', '30%', '32%', 'B', 'Medium', 'Equivalent discount = 1 - (0.8×0.9) = 28%.'),

-- Q309
('Aptitude', 'A person travels equal distances at 40 km/h and 60 km/h. What is the average speed?', '45 km/h', '48 km/h', '50 km/h', '52 km/h', 'B', 'Medium', 'For equal distances, average speed = 2ab/(a+b) = 4800/100 = 48 km/h.'),

-- Q310
('Aptitude', 'The present ages of A and B are in the ratio 3:4. After 5 years their ratio becomes 4:5. What is A’s present age?', '12', '15', '18', '20', 'B', 'Medium', 'Let ages be 3x and 4x. (3x+5)/(4x+5)=4/5 gives x=5. A=15.'),

-- Q311
('Aptitude', 'A mixture contains milk and water in ratio 3:2. If total mixture is 25 litres, how much milk is present?', '10 L', '12 L', '15 L', '18 L', 'C', 'Medium', 'Milk = 3/5 × 25 = 15 litres.'),

-- Q312
('Aptitude', 'What is the probability of getting a number greater than 4 on a fair die?', '1/6', '1/3', '1/2', '2/3', 'B', 'Medium', 'Favorable outcomes are 5 and 6. Probability = 2/6 = 1/3.'),

-- Q313
('Aptitude', 'How many 2-digit numbers can be formed using 1, 2, 3 and 4 without repetition?', '8', '10', '12', '16', 'C', 'Medium', 'Number of arrangements = 4P2 = 4×3 = 12.'),

-- Q314
('Aptitude', 'If x + 1/x = 6, what is x² + 1/x²?', '32', '34', '36', '38', 'B', 'Medium', 'Squaring gives x² + 2 + 1/x² = 36. Therefore result = 34.'),

-- Q315
('Aptitude', 'A number leaves remainder 4 when divided by 9. What remainder will 3 times the number leave?', '1', '3', '6', '8', 'B', 'Medium', 'If n = 9k+4, then 3n = 27k+12, giving remainder 3.'),

-- Q316
('Aptitude', 'The average of 7 numbers is 30. If one number 42 is removed, what is the new average?', '26', '28', '29', '30', 'B', 'Medium', 'Original sum = 210. New sum = 168. New average = 168/6 = 28.'),

-- Q317
('Aptitude', 'A pipe fills a tank in 15 hours and another in 10 hours. How long do they take together?', '5 hours', '6 hours', '7 hours', '8 hours', 'B', 'Medium', 'Combined rate = 1/15 + 1/10 = 1/6. Time = 6 hours.'),

-- Q318
('Aptitude', 'A 25% increase in a number results in 250. What was the original number?', '180', '200', '220', '240', 'B', 'Medium', 'Original number = 250/1.25 = 200.'),

-- Q319
('Aptitude', 'If the selling price is 140% of cost price, what is the profit percentage?', '30%', '35%', '40%', '45%', 'C', 'Medium', 'If CP = 100, SP = 140. Profit = 40%.'),

-- Q320
('Aptitude', 'A student scores 35% and fails by 13 marks. If passing marks are 40%, what are the maximum marks?', '200', '240', '260', '280', 'C', 'Medium', 'Difference is 5% of total marks = 13. Total = 13/0.05 = 260.'),

-- Q321
('Aptitude', 'A train 200 m long crosses a 300 m platform in 20 seconds. What is its speed?', '72 km/h', '80 km/h', '90 km/h', '100 km/h', 'C', 'Medium', 'Total distance = 500 m. Speed = 25 m/s = 90 km/h.'),

-- Q322
('Aptitude', 'The sum of three consecutive even numbers is 78. What is the largest number?', '24', '26', '28', '30', 'C', 'Medium', 'Numbers are 24, 26 and 28. Largest = 28.'),

-- Q323
('Aptitude', 'A man invests ₹15,000 at 8% simple interest for 2.5 years. What is the interest?', '₹2,500', '₹3,000', '₹3,500', '₹4,000', 'B', 'Medium', 'SI = 15000×8×2.5/100 = ₹3,000.'),

-- Q324
('Aptitude', 'If 4x - 9 = 31, what is x?', '8', '9', '10', '12', 'C', 'Medium', '4x = 40, so x = 10.'),

-- Q325
('Aptitude', 'A can complete a job in 24 days and B in 36 days. Working together, how long will they take?', '12 days', '14.4 days', '16 days', '18 days', 'B', 'Medium', 'Combined rate = 1/24 + 1/36 = 5/72. Time = 72/5 = 14.4 days.'),

-- Q326
('Aptitude', 'A bag contains 4 red, 5 blue and 1 green ball. What is the probability of selecting a red ball?', '1/5', '2/5', '1/2', '3/5', 'B', 'Medium', 'Total balls = 10 and red balls = 4. Probability = 4/10 = 2/5.'),

-- Q327
('Aptitude', 'How many ways can 6 people be arranged in a row?', '120', '240', '360', '720', 'D', 'Medium', 'Number of arrangements = 6! = 720.'),

-- Q328
('Aptitude', 'What is the value of (15² - 10²)?', '100', '125', '150', '175', 'B', 'Medium', '15² - 10² = 225 - 100 = 125.'),

-- Q329
('Aptitude', 'A number is divisible by both 4 and 6. Which of the following can be that number?', '18', '20', '24', '30', 'C', 'Medium', '24 is divisible by both 4 and 6.'),

-- Q330
('Aptitude', 'The ratio of boys to girls is 5:4. If there are 45 students, how many are girls?', '18', '20', '25', '30', 'B', 'Medium', 'Total parts = 9. One part = 5. Girls = 4×5 = 20.'),

-- Q331
('Aptitude', 'A shopkeeper buys an item for ₹1,000 and marks it 30% above cost. If he gives a 10% discount, what is the selling price?', '₹1,100', '₹1,150', '₹1,170', '₹1,200', 'C', 'Medium', 'Marked price = ₹1,300. Selling price after 10% discount = ₹1,170.'),

-- Q332
('Aptitude', 'A and B invest ₹4,000 and ₹6,000 respectively for the same period. What is their profit ratio?', '2:3', '3:2', '4:5', '5:4', 'A', 'Medium', 'For equal time, profit ratio equals investment ratio = 4000:6000 = 2:3.'),

-- Q333
('Aptitude', 'A sum becomes ₹12,000 from ₹10,000 in 4 years at simple interest. What is the annual rate?', '4%', '5%', '6%', '8%', 'B', 'Medium', 'SI = ₹2,000. Rate = 2000×100/(10000×4) = 5%.'),

-- Q334
('Aptitude', 'A car travels 120 km at 40 km/h and 180 km at 60 km/h. What is the average speed?', '45 km/h', '50 km/h', '55 km/h', '60 km/h', 'B', 'Medium', 'Total distance = 300 km. Total time = 3+3 = 6 hours. Average = 50 km/h.'),

-- Q335
('Aptitude', 'If 12% of a number is 48, what is the number?', '300', '350', '400', '450', 'C', 'Medium', 'Number = 48/0.12 = 400.'),

-- Q336
('Aptitude', 'A number is first increased by 10% and then increased by 20%. What is the total percentage increase?', '28%', '30%', '32%', '35%', 'C', 'Medium', 'Overall factor = 1.1×1.2 = 1.32, giving 32% increase.'),

-- Q337
('Aptitude', 'If 5 men complete a job in 16 days, how many days will 8 men take at the same rate?', '8 days', '10 days', '12 days', '14 days', 'B', 'Medium', 'Total work = 5×16 = 80 worker-days. 80/8 = 10 days.'),

-- Q338
('Aptitude', 'The average age of 5 people is 24 years. If a new person aged 30 joins, what is the new average?', '24', '25', '26', '27', 'B', 'Medium', 'Original total = 120. New total = 150. Average = 150/6 = 25.'),

-- Q339
('Aptitude', 'A boat travels 30 km downstream in 2 hours. What is its downstream speed?', '10 km/h', '15 km/h', '20 km/h', '25 km/h', 'B', 'Medium', 'Speed = 30/2 = 15 km/h.'),

-- Q340
('Aptitude', 'What is the probability of getting a head when a fair coin is tossed?', '0', '1/4', '1/2', '1', 'C', 'Easy', 'A fair coin has two equally likely outcomes. Probability of head = 1/2.'),

-- Q341
('Aptitude', 'How many ways can 4 people be selected from 7 people?', '21', '28', '35', '42', 'C', 'Medium', 'Number of selections = 7C4 = 35.'),

-- Q342
('Aptitude', 'If x - 1/x = 3, what is x² + 1/x²?', '9', '10', '11', '12', 'C', 'Medium', 'Squaring gives x² - 2 + 1/x² = 9, so result = 11.'),

-- Q343
('Aptitude', 'What is the smallest number that leaves remainder 1 when divided by 2, 3 and 4?', '7', '13', '17', '25', 'B', 'Medium', 'LCM of 2, 3 and 4 is 12. The smallest number greater than 1 is 13.'),

-- Q344
('Aptitude', 'A person spends 60% of income. If savings are ₹12,000, what is the income?', '₹20,000', '₹25,000', '₹30,000', '₹35,000', 'C', 'Medium', 'Savings are 40%. Income = 12000/0.4 = ₹30,000.'),

-- Q345
('Aptitude', 'A product is sold for ₹1,440 at a profit of 20%. What is its cost price?', '₹1,100', '₹1,200', '₹1,250', '₹1,300', 'B', 'Medium', 'CP = 1440/1.2 = ₹1,200.'),

-- Q346
('Aptitude', 'A train moving at 72 km/h crosses a pole in 10 seconds. What is the train length?', '180 m', '200 m', '220 m', '240 m', 'B', 'Medium', '72 km/h = 20 m/s. Length = 20×10 = 200 m.'),

-- Q347
('Aptitude', 'The average of 10 numbers is 50. If each number is increased by 5, what is the new average?', '50', '52', '55', '60', 'C', 'Easy', 'Increasing every value by 5 increases the average by 5. New average = 55.'),

-- Q348
('Aptitude', 'If 25 workers complete a task in 12 days, how many workers are needed to complete it in 10 days?', '25', '28', '30', '35', 'C', 'Medium', 'Workers × days is constant. Workers = 25×12/10 = 30.'),

-- Q349
('Aptitude', 'A sum of ₹20,000 is invested at 6% compound interest for 2 years. What is the amount?', '₹22,000', '₹22,472', '₹22,600', '₹23,000', 'B', 'Medium', 'Amount = 20000×1.06² = ₹22,472.'),

-- Q350
('Aptitude', 'A and B together earn ₹7,200. Their earning ratio is 5:7. How much does B earn?', '₹3,000', '₹3,600', '₹4,200', '₹4,800', 'C', 'Medium', 'Total parts = 12. B gets 7/12 × 7200 = ₹4,200.'),

-- Q351
('Aptitude', 'A can do a job in 8 days and B in 12 days. What fraction of the job do they complete together in 2 days?', '1/3', '5/12', '1/2', '2/3', 'B', 'Medium', 'Combined rate = 1/8 + 1/12 = 5/24. In 2 days they complete 5/12.'),

-- Q352
('Aptitude', 'A shopkeeper gives 15% discount on ₹2,000. What is the selling price?', '₹1,600', '₹1,650', '₹1,700', '₹1,750', 'C', 'Easy', 'Discount = ₹300. Selling price = ₹1,700.'),

-- Q353
('Aptitude', 'A number is 40% more than 200. What is the number?', '260', '280', '300', '320', 'B', 'Easy', '40% of 200 = 80. Number = 280.'),

-- Q354
('Aptitude', 'What is the ratio 45 minutes to 1 hour?', '2:3', '3:4', '4:5', '5:6', 'B', 'Easy', '1 hour = 60 minutes. Ratio = 45:60 = 3:4.'),

-- Q355
('Aptitude', 'A cyclist travels at 18 km/h. How far will he travel in 40 minutes?', '10 km', '12 km', '14 km', '16 km', 'B', 'Medium', '40 minutes = 2/3 hour. Distance = 18×2/3 = 12 km.'),

-- Q356
('Aptitude', 'What is the median of 4, 7, 9, 12 and 15?', '7', '8', '9', '12', 'C', 'Easy', 'The middle value is 9.'),

-- Q357
('Aptitude', 'What is the mode of 2, 3, 3, 4, 5, 3, 6?', '2', '3', '4', '5', 'B', 'Easy', '3 occurs most frequently, so mode = 3.'),

-- Q358
('Aptitude', 'If the average of 4 numbers is 25 and three numbers are 20, 25 and 30, what is the fourth number?', '20', '25', '30', '35', 'B', 'Easy', 'Total = 100. Known sum = 75. Fourth number = 25.'),

-- Q359
('Aptitude', 'A number is divisible by 9 if:', 'Last digit is even', 'Digit sum is divisible by 9', 'Last digit is 9', 'Number is odd', 'B', 'Easy', 'A number is divisible by 9 when its digit sum is divisible by 9.'),

-- Q360
('Aptitude', 'What is the remainder when 125 is divided by 11?', '2', '3', '4', '5', 'C', 'Medium', '125 = 11×11 + 4. Therefore the remainder is 4.'),

-- Q361
('Aptitude', 'A sum is divided among A, B and C in ratio 2:3:5. If total is ₹5,000, how much does C receive?', '₹1,500', '₹2,000', '₹2,500', '₹3,000', 'C', 'Easy', 'Total parts = 10. C receives 5/10 × 5000 = ₹2,500.'),

-- Q362
('Aptitude', 'If 3 kg of rice costs ₹180, what is the cost of 7 kg?', '₹360', '₹400', '₹420', '₹450', 'C', 'Easy', 'One kg costs ₹60. Seven kg costs ₹420.'),

-- Q363
('Aptitude', 'A salary increases from ₹20,000 to ₹23,000. What is the percentage increase?', '10%', '12%', '15%', '18%', 'C', 'Easy', 'Increase = ₹3,000. Percentage = 3000/20000×100 = 15%.'),

-- Q364
('Aptitude', 'What is the value of 3/4 + 1/8?', '5/8', '7/8', '1', '9/8', 'B', 'Easy', '3/4 = 6/8. Therefore 6/8+1/8 = 7/8.'),

-- Q365
('Aptitude', 'What is 2.5 × 16?', '30', '35', '40', '45', 'C', 'Easy', '2.5 × 16 = 40.'),

-- Q366
('Aptitude', 'If 18% of a salary is ₹5,400, what is the salary?', '₹25,000', '₹30,000', '₹35,000', '₹40,000', 'B', 'Medium', 'Salary = 5400/0.18 = ₹30,000.'),

-- Q367
('Aptitude', 'A man buys an item for ₹2,000 and sells it at 15% loss. What is the selling price?', '₹1,600', '₹1,700', '₹1,800', '₹1,850', 'B', 'Easy', 'Loss = ₹300. Selling price = ₹1,700.'),

-- Q368
('Aptitude', 'What is the square root of 144?', '10', '11', '12', '14', 'C', 'Easy', '√144 = 12.'),

-- Q369
('Aptitude', 'What is the cube root of 125?', '3', '4', '5', '6', 'C', 'Easy', '5³ = 125.'),

-- Q370
('Aptitude', 'A number is increased by 25% and becomes 500. What was the original number?', '350', '400', '450', '475', 'B', 'Medium', 'Original = 500/1.25 = 400.'),

-- Q371
('Aptitude', 'A pipe fills a tank in 8 hours. What fraction of the tank does it fill in 2 hours?', '1/2', '1/4', '1/8', '3/8', 'B', 'Easy', 'In 2 hours it fills 2/8 = 1/4.'),

-- Q372
('Aptitude', 'If 7 workers complete a job in 20 days, how many days will 14 workers take?', '5', '10', '15', '20', 'B', 'Easy', 'Doubling workers halves the time. Time = 10 days.'),

-- Q373
('Aptitude', 'What is the probability of selecting a vowel from the letters A, B, C, D, E?', '1/5', '2/5', '1/2', '3/5', 'B', 'Easy', 'Vowels are A and E: 2 out of 5.'),

-- Q374
('Aptitude', 'How many combinations of 2 people can be selected from 6 people?', '10', '12', '15', '20', 'C', 'Medium', '6C2 = 6×5/2 = 15.'),

-- Q375
('Aptitude', 'If 5x - 10 = 40, what is x?', '8', '9', '10', '12', 'C', 'Easy', '5x = 50, so x = 10.'),

-- Q376
('Aptitude', 'The sum of two numbers is 50 and their difference is 10. What is the larger number?', '20', '25', '30', '35', 'C', 'Easy', 'Adding equations gives 2×larger = 60. Larger = 30.'),

-- Q377
('Aptitude', 'A father is 3 times as old as his son. Their total age is 48. What is the son’s age?', '10', '12', '14', '16', 'B', 'Medium', 'Let son = x. Father = 3x. 4x = 48, so x = 12.'),

-- Q378
('Aptitude', 'A sum of ₹5,000 is invested at 10% simple interest for 4 years. What is the amount?', '₹6,000', '₹6,500', '₹7,000', '₹7,500', 'C', 'Easy', 'SI = ₹2,000. Amount = ₹7,000.'),

-- Q379
('Aptitude', 'A train covers 600 km in 8 hours. What is its average speed?', '60 km/h', '70 km/h', '75 km/h', '80 km/h', 'C', 'Easy', 'Speed = 600/8 = 75 km/h.'),

-- Q380
('Aptitude', 'What is the next number: 1, 4, 9, 16, 25, ?', '30', '36', '40', '49', 'B', 'Easy', 'These are squares: 1², 2², 3², 4², 5². Next = 6² = 36.'),

-- Q381
('Aptitude', 'What is the next number: 2, 6, 12, 20, 30, ?', '36', '40', '42', '44', 'C', 'Medium', 'Differences are 4,6,8,10. Next difference = 12, so answer = 42.'),

-- Q382
('Aptitude', 'If 20% of x is 50, what is x?', '200', '250', '300', '350', 'B', 'Easy', 'x = 50/0.2 = 250.'),

-- Q383
('Aptitude', 'A shopkeeper buys 10 items for ₹800 and sells each for ₹100. What is the profit percentage?', '15%', '20%', '25%', '30%', 'C', 'Easy', 'CP = ₹800 and SP = ₹1,000. Profit = ₹200 = 25%.'),

-- Q384
('Aptitude', 'If a number is multiplied by 1.5, the percentage increase is:', '25%', '40%', '50%', '60%', 'C', 'Easy', 'Multiplication by 1.5 means a 50% increase.'),

-- Q385
('Aptitude', 'What is the average of the first five even numbers?', '5', '6', '7', '8', 'B', 'Easy', 'First five even numbers are 2,4,6,8,10. Average = 6.'),

-- Q386
('Aptitude', 'A car uses 8 litres of fuel for 100 km. How much fuel is needed for 250 km?', '16 L', '18 L', '20 L', '22 L', 'C', 'Easy', 'Fuel = 8×250/100 = 20 litres.'),

-- Q387
('Aptitude', 'A number is decreased by 30% from 500. What is the result?', '300', '350', '375', '400', 'B', 'Easy', '30% of 500 = 150. Result = 350.'),

-- Q388
('Aptitude', 'What is 0.75 expressed as a percentage?', '50%', '65%', '75%', '80%', 'C', 'Easy', '0.75 × 100 = 75%.'),

-- Q389
('Aptitude', 'If 4 notebooks cost ₹120, what is the cost of 15 notebooks?', '₹400', '₹450', '₹480', '₹500', 'B', 'Easy', 'One notebook costs ₹30. Fifteen cost ₹450.'),

-- Q390
('Aptitude', 'A person travels 90 km in 1.5 hours. What is the speed?', '50 km/h', '60 km/h', '70 km/h', '80 km/h', 'B', 'Easy', 'Speed = 90/1.5 = 60 km/h.'),

-- Q391
('Aptitude', 'The ratio of income to expenditure is 5:4. If income is ₹25,000, what is expenditure?', '₹18,000', '₹20,000', '₹22,000', '₹24,000', 'B', 'Medium', 'Expenditure = 4/5 × 25,000 = ₹20,000.'),

-- Q392
('Aptitude', 'A can complete a job in 16 days and B in 24 days. How long will they take together?', '8.6 days', '9.6 days', '10.6 days', '12 days', 'B', 'Medium', 'Combined rate = 1/16+1/24 = 5/48. Time = 48/5 = 9.6 days.'),

-- Q393
('Aptitude', 'A sum of ₹12,000 earns ₹2,880 simple interest in 4 years. What is the rate?', '5%', '6%', '7%', '8%', 'B', 'Medium', 'Rate = 2880×100/(12000×4) = 6%.'),

-- Q394
('Aptitude', 'A train 250 m long crosses a pole in 12.5 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Speed = 250/12.5 = 20 m/s = 72 km/h.'),

-- Q395
('Aptitude', 'The compound interest on ₹8,000 at 5% per annum for 2 years is:', '₹800', '₹820', '₹840', '₹860', 'B', 'Medium', 'Amount = 8000×1.05² = 8820. CI = ₹820.'),

-- Q396
('Aptitude', 'Two numbers are in ratio 7:9 and their sum is 128. What is the smaller number?', '42', '49', '56', '63', 'C', 'Medium', 'Total parts = 16. One part = 8. Smaller = 7×8 = 56.'),

-- Q397
('Aptitude', 'A can complete a job in 20 days and B in 30 days. If they work together for 6 days, what fraction of work remains?', '1/5', '1/4', '1/3', '1/2', 'D', 'Medium', 'Combined rate = 1/12. In 6 days they complete 1/2, so 1/2 remains.'),

-- Q398
('Aptitude', 'A mixture has milk and water in ratio 4:1. If total quantity is 50 litres, how much water is present?', '8 L', '10 L', '12 L', '15 L', 'B', 'Easy', 'Water = 1/5 × 50 = 10 litres.'),

-- Q399
('Aptitude', 'What is the probability of getting an odd number on a fair die?', '1/6', '1/3', '1/2', '2/3', 'C', 'Easy', 'Odd outcomes are 1,3,5. Probability = 3/6 = 1/2.'),

-- Q400
('Aptitude', 'How many different arrangements can be made using all letters of the word CAT?', '3', '6', '9', '12', 'B', 'Easy', 'Three distinct letters can be arranged in 3! = 6 ways.'),

-- Q401
('Aptitude', 'If x + 5 = 3x - 7, what is x?', '5', '6', '7', '8', 'B', 'Medium', '12 = 2x, so x = 6.'),

-- Q402
('Aptitude', 'The average of 9 numbers is 40. If one number 48 is removed, what is the new average?', '38', '39', '40', '41', 'B', 'Medium', 'Total = 360. New total = 312. New average = 312/8 = 39.'),

-- Q403
('Aptitude', 'A number is increased by 15% and then decreased by 15%. What is the net change?', 'No change', '2.25% decrease', '2.25% increase', '3% decrease', 'B', 'Medium', 'Net factor = 1.15×0.85 = 0.9775, giving 2.25% decrease.'),

-- Q404
('Aptitude', 'A shopkeeper marks an item 40% above cost and gives 20% discount. What is the profit percentage?', '8%', '10%', '12%', '15%', 'C', 'Medium', 'Let CP=100. MP=140. SP=112. Profit=12%.'),

-- Q405
('Aptitude', 'A and B invest ₹5,000 and ₹8,000 respectively for equal time. If total profit is ₹3,900, what is B’s share?', '₹1,500', '₹2,000', '₹2,400', '₹2,500', 'C', 'Medium', 'Profit ratio = 5:8. B gets 8/13 × 3900 = ₹2,400.'),

-- Q406
('Aptitude', 'A sum of ₹15,000 becomes ₹18,600 in 4 years at simple interest. What is the rate?', '5%', '6%', '7%', '8%', 'B', 'Medium', 'SI = ₹3,600. Rate = 3600×100/(15000×4) = 6%.'),

-- Q407
('Aptitude', 'A person travels half the distance at 30 km/h and half at 60 km/h. What is the average speed?', '35 km/h', '40 km/h', '45 km/h', '50 km/h', 'B', 'Medium', 'For equal distances, average speed = 2×30×60/(30+60) = 40 km/h.'),

-- Q408
('Aptitude', 'If 35% of a number is 140, what is the number?', '350', '400', '450', '500', 'B', 'Easy', 'Number = 140/0.35 = 400.'),

-- Q409
('Aptitude', 'A train moving at 90 km/h covers how many metres in 20 seconds?', '400 m', '450 m', '500 m', '550 m', 'C', 'Medium', '90 km/h = 25 m/s. Distance = 25×20 = 500 m.'),

-- Q410
('Aptitude', 'The average age of 8 employees is 32 years. If one employee aged 39 leaves, what is the new average?', '30', '31', '32', '33', 'B', 'Medium', 'Total = 256. New total = 217. New average = 217/7 = 31.'),

-- Q411
('Aptitude', 'A pipe fills a tank in 20 hours and another in 30 hours. How long together?', '10 hours', '12 hours', '15 hours', '18 hours', 'B', 'Medium', 'Combined rate = 1/20+1/30 = 1/12. Time = 12 hours.'),

-- Q412
('Aptitude', 'If 18 men complete work in 15 days, how many men are required for 9 days?', '24', '27', '30', '36', 'C', 'Medium', 'Men = 18×15/9 = 30.'),

-- Q413
('Aptitude', 'A product sold at ₹2,400 gives a profit of 20%. What is its cost price?', '₹1,800', '₹2,000', '₹2,100', '₹2,200', 'B', 'Easy', 'CP = 2400/1.2 = ₹2,000.'),

-- Q414
('Aptitude', 'What is the probability of drawing an ace from a standard deck of 52 cards?', '1/13', '1/26', '1/4', '4/13', 'A', 'Medium', 'There are 4 aces among 52 cards. Probability = 4/52 = 1/13.'),

-- Q415
('Aptitude', 'How many ways can 3 people be selected from 8 people?', '24', '48', '56', '64', 'C', 'Medium', '8C3 = 8×7×6/(3×2×1) = 56.'),

-- Q416
('Aptitude', 'If x + 1/x = 4, what is x² + 1/x²?', '12', '14', '16', '18', 'B', 'Medium', 'Squaring gives x² + 2 + 1/x² = 16. Result = 14.'),

-- Q417
('Aptitude', 'What is the smallest number divisible by 12, 15 and 20?', '30', '40', '50', '60', 'D', 'Medium', 'LCM of 12,15,20 is 60.'),

-- Q418
('Aptitude', 'A person saves 25% of income. If expenditure is ₹18,000, what is income?', '₹20,000', '₹22,000', '₹24,000', '₹25,000', 'C', 'Medium', 'Expenditure is 75%. Income = 18000/0.75 = ₹24,000.'),

-- Q419
('Aptitude', 'A number is 20% less than 500. What is the number?', '350', '400', '450', '480', 'B', 'Easy', '20% of 500 = 100. Number = 400.'),

-- Q420
('Aptitude', 'If 6 items cost ₹540, what is the cost of 11 items?', '₹900', '₹990', '₹1,000', '₹1,100', 'B', 'Easy', 'One item costs ₹90. Eleven cost ₹990.'),

-- Q421
('Aptitude', 'A and B can complete a job in 10 and 15 days. If they work together for 3 days, what fraction remains?', '1/5', '1/2', '3/5', '2/5', 'B', 'Medium', 'Combined rate = 1/6. In 3 days they complete 1/2, so 1/2 remains.'),

-- Q422
('Aptitude', 'A 180 m train crosses a 220 m platform in 20 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Total distance = 400 m. Speed = 20 m/s = 72 km/h.'),

-- Q423
('Aptitude', 'A sum of ₹10,000 earns compound interest at 10% for 2 years. What is the amount?', '₹11,000', '₹12,000', '₹12,100', '₹12,200', 'C', 'Medium', 'Amount = 10000×1.1² = ₹12,100.'),

-- Q424
('Aptitude', 'The ratio of two numbers is 5:8 and their sum is 91. What is the larger number?', '48', '52', '56', '64', 'C', 'Medium', 'Total parts = 13. One part = 7. Larger = 8×7 = 56.'),

-- Q425
('Aptitude', 'A mixture contains milk and water in ratio 7:3. If mixture is 50 litres, how much milk is present?', '30 L', '35 L', '40 L', '45 L', 'B', 'Easy', 'Milk = 7/10 × 50 = 35 litres.'),

-- Q426
('Aptitude', 'A fair die is rolled twice. What is the probability of getting two sixes?', '1/6', '1/12', '1/36', '1/18', 'C', 'Medium', 'Probability = 1/6 × 1/6 = 1/36.'),

-- Q427
('Aptitude', 'How many ways can 5 people be selected from 9 people?', '84', '126', '144', '180', 'B', 'Medium', '9C5 = 126.'),

-- Q428
('Aptitude', 'If 2x + 7 = 25, what is x?', '7', '8', '9', '10', 'C', 'Easy', '2x = 18, so x = 9.'),

-- Q429
('Aptitude', 'The average of 12 numbers is 25. If each number is doubled, what is the new average?', '25', '40', '50', '60', 'C', 'Easy', 'Doubling every value doubles the average. New average = 50.'),

-- Q430
('Aptitude', 'A number is increased by 50% and then decreased by 20%. What is the net percentage change?', '10% increase', '20% increase', '30% increase', '10% decrease', 'B', 'Medium', 'Overall factor = 1.5×0.8 = 1.2, so net increase = 20%.'),

-- Q431
('Aptitude', 'A shopkeeper buys an article for ₹1,500 and sells it for ₹1,800. What is the profit percentage?', '15%', '20%', '25%', '30%', 'B', 'Easy', 'Profit = ₹300. Percentage = 300/1500×100 = 20%.'),

-- Q432
('Aptitude', 'A sum of ₹6,000 is invested at 7% simple interest for 5 years. What is the interest?', '₹1,800', '₹2,000', '₹2,100', '₹2,400', 'C', 'Easy', 'SI = 6000×7×5/100 = ₹2,100.'),

-- Q433
('Aptitude', 'A car travels 150 km in 2 hours and 100 km in 2 hours. What is its average speed?', '50 km/h', '60 km/h', '62.5 km/h', '75 km/h', 'C', 'Easy', 'Total distance = 250 km. Total time = 4 hours. Average = 62.5 km/h.'),

-- Q434
('Aptitude', 'If 15% of a number is 75, what is the number?', '400', '450', '500', '550', 'C', 'Easy', 'Number = 75/0.15 = 500.'),

-- Q435
('Aptitude', 'A pipe fills a tank in 6 hours. What fraction is filled in 90 minutes?', '1/6', '1/4', '1/3', '1/2', 'B', 'Easy', '90 minutes = 1.5 hours. Fraction = 1.5/6 = 1/4.'),

-- Q436
('Aptitude', 'If 20 workers complete a job in 18 days, how many workers are needed for 12 days?', '25', '30', '35', '40', 'B', 'Medium', 'Workers = 20×18/12 = 30.'),

-- Q437
('Aptitude', 'A product costs ₹2,500 and is sold at a 12% profit. What is the selling price?', '₹2,700', '₹2,750', '₹2,800', '₹2,850', 'C', 'Easy', 'Profit = ₹300. Selling price = ₹2,800.'),

-- Q438
('Aptitude', 'What is the probability of selecting a black card from a standard deck?', '1/4', '1/2', '1/3', '13/52', 'B', 'Easy', 'There are 26 black cards out of 52. Probability = 1/2.'),

-- Q439
('Aptitude', 'How many arrangements can be made using 4 distinct objects?', '12', '16', '24', '36', 'C', 'Easy', '4! = 24.'),

-- Q440
('Aptitude', 'If x/5 = 9, what is x?', '35', '40', '45', '50', 'C', 'Easy', 'x = 9×5 = 45.'),

-- Q441
('Aptitude', 'The sum of two consecutive odd numbers is 48. What is the larger number?', '23', '25', '27', '29', 'B', 'Medium', 'Consecutive odd numbers are 23 and 25. Larger = 25.'),

-- Q442
('Aptitude', 'A father is 24 years older than his son. Their ages total 60. What is the son’s age?', '16', '18', '20', '22', 'B', 'Medium', 'Let son = x. Father = x+24. 2x+24=60, so x=18.'),

-- Q443
('Aptitude', 'A sum of ₹8,000 becomes ₹9,600 in 4 years at simple interest. Find the rate.', '4%', '5%', '6%', '8%', 'B', 'Medium', 'SI = ₹1,600. Rate = 1600×100/(8000×4) = 5%.'),

-- Q444
('Aptitude', 'A train moving at 54 km/h covers what distance in 20 seconds?', '250 m', '300 m', '350 m', '400 m', 'B', 'Medium', '54 km/h = 15 m/s. Distance = 15×20 = 300 m.'),

-- Q445
('Aptitude', 'What is the compound interest on ₹4,000 at 5% for 2 years?', '₹400', '₹410', '₹420', '₹450', 'B', 'Medium', 'Amount = 4000×1.05² = 4410. CI = ₹410.'),

-- Q446
('Aptitude', 'Two numbers are in ratio 3:7 and their difference is 36. What is the smaller number?', '12', '18', '27', '30', 'C', 'Medium', 'Difference = 4 parts = 36. One part = 9. Smaller number = 27.'),

-- Q447
('Aptitude', 'A can finish a job in 18 days and B in 9 days. How long will they take together?', '4 days', '6 days', '8 days', '9 days', 'B', 'Easy', 'Combined rate = 1/18+1/9 = 1/6. Time = 6 days.'),

-- Q448
('Aptitude', 'A mixture contains 60 litres of milk and water in ratio 2:1. How much water is present?', '15 L', '20 L', '25 L', '30 L', 'B', 'Easy', 'Water = 1/3 × 60 = 20 litres.'),

-- Q449
('Aptitude', 'What is the probability of getting at least one head when two fair coins are tossed?', '1/4', '1/2', '3/4', '1', 'C', 'Medium', 'Only TT gives no head. Probability of at least one head = 3/4.'),

-- Q450
('Aptitude', 'How many ways can 2 people be selected from 10 people?', '20', '30', '45', '50', 'C', 'Easy', '10C2 = 10×9/2 = 45.'),

-- Q451
('Aptitude', 'If 3x + 4 = 25, what is x?', '6', '7', '8', '9', 'B', 'Easy', '3x = 21, so x = 7.'),

-- Q452
('Aptitude', 'The average of 5 consecutive integers is 18. What is the largest integer?', '19', '20', '21', '22', 'B', 'Medium', 'For consecutive integers centered at 18, they are 16, 17, 18, 19, 20. Largest = 20.'),

-- Q453
('Aptitude', 'A number is increased from 400 to 460. What is the percentage increase?', '10%', '12%', '15%', '20%', 'C', 'Easy', 'Increase = 60. 60/400×100 = 15%.'),

-- Q454
('Aptitude', 'A shopkeeper offers 25% discount on ₹2,400. What is the selling price?', '₹1,600', '₹1,700', '₹1,800', '₹1,900', 'C', 'Easy', 'Discount = ₹600. Selling price = ₹1,800.'),

-- Q455
('Aptitude', 'If 16% of a number is 64, what is the number?', '300', '350', '400', '450', 'C', 'Easy', 'Number = 64/0.16 = 400.'),

-- Q456
('Aptitude', 'A person cycles at 12 km/h for 45 minutes. What distance does he cover?', '6 km', '8 km', '9 km', '10 km', 'C', 'Easy', '45 minutes = 0.75 hour. Distance = 12×0.75 = 9 km.'),

-- Q457
('Aptitude', 'If 9 workers complete a task in 16 days, how many days will 12 workers take?', '10 days', '12 days', '14 days', '16 days', 'B', 'Medium', 'Total work = 9×16 = 144 worker-days. 144/12 = 12 days.'),

-- Q458
('Aptitude', 'A product is sold for ₹1,500 at a loss of 25%. What is its cost price?', '₹1,800', '₹2,000', '₹2,200', '₹2,500', 'B', 'Medium', 'SP is 75% of CP. CP = 1500/0.75 = ₹2,000.'),

-- Q459
('Aptitude', 'What is the probability of drawing a queen from a standard deck?', '1/13', '1/26', '1/4', '4/13', 'A', 'Easy', 'There are 4 queens among 52 cards. Probability = 1/13.'),

-- Q460
('Aptitude', 'How many ways can 3 distinct books be arranged on a shelf?', '3', '6', '9', '12', 'B', 'Easy', '3! = 6 arrangements.'),

-- Q461
('Aptitude', 'If 4x - 6 = 30, what is x?', '7', '8', '9', '10', 'C', 'Easy', '4x = 36, so x = 9.'),

-- Q462
('Aptitude', 'The average of 8 numbers is 22. If each number is increased by 3, what is the new average?', '22', '24', '25', '26', 'C', 'Easy', 'Average also increases by 3. New average = 25.'),

-- Q463
('Aptitude', 'A number is decreased by 20% and becomes 320. What was the original number?', '380', '400', '420', '450', 'B', 'Medium', '320 is 80% of original. Original = 320/0.8 = 400.'),

-- Q464
('Aptitude', 'A shopkeeper buys an article for ₹800 and sells it at 25% profit. What is the selling price?', '₹900', '₹950', '₹1,000', '₹1,050', 'C', 'Easy', 'Profit = ₹200. SP = ₹1,000.'),

-- Q465
('Aptitude', 'A sum of ₹9,000 is invested at 8% simple interest for 2 years. What is the amount?', '₹10,000', '₹10,440', '₹10,500', '₹10,800', 'B', 'Easy', 'SI = ₹1,440. Amount = ₹10,440.'),

-- Q466
('Aptitude', 'A train covers 480 km at 80 km/h. How much time does it take?', '4 hours', '5 hours', '6 hours', '7 hours', 'C', 'Easy', 'Time = 480/80 = 6 hours.'),

-- Q467
('Aptitude', 'Two numbers are in ratio 2:5 and their sum is 84. What is the larger number?', '50', '55', '60', '70', 'C', 'Medium', 'Total parts = 7. One part = 12. Larger = 5×12 = 60.'),

-- Q468
('Aptitude', 'A can do a job in 15 days and B in 20 days. How long will they take together?', '7 1/7 days', '8 4/7 days', '9 days', '10 days', 'B', 'Medium', 'Combined rate = 1/15+1/20 = 7/60. Time = 60/7 = 8 4/7 days.'),

-- Q469
('Aptitude', 'A mixture contains 3 parts milk and 2 parts water. If total is 40 litres, how much water is present?', '12 L', '16 L', '20 L', '24 L', 'B', 'Easy', 'Water = 2/5 × 40 = 16 litres.'),

-- Q470
('Aptitude', 'A fair die is rolled. What is the probability of getting a prime number?', '1/3', '1/2', '2/3', '5/6', 'B', 'Easy', 'Prime outcomes are 2,3,5: 3 out of 6. Probability = 1/2.'),

-- Q471
('Aptitude', 'How many ways can 4 people be selected from 8 people?', '56', '70', '84', '112', 'B', 'Medium', '8C4 = 70.'),

-- Q472
('Aptitude', 'If x/4 + 3 = 8, what is x?', '16', '18', '20', '24', 'C', 'Easy', 'x/4 = 5, so x = 20.'),

-- Q473
('Aptitude', 'The sum of five consecutive integers is 105. What is the middle integer?', '19', '20', '21', '22', 'C', 'Easy', 'The average of consecutive integers equals the middle integer. 105/5 = 21.'),

-- Q474
('Aptitude', 'What is 22% of 500?', '100', '110', '120', '125', 'B', 'Easy', '22% of 500 = 110.'),

-- Q475
('Aptitude', 'A salary of ₹30,000 is increased by 10%. What is the new salary?', '₹32,000', '₹33,000', '₹34,000', '₹35,000', 'B', 'Easy', 'Increase = ₹3,000. New salary = ₹33,000.'),

-- Q476
('Aptitude', 'If 15 machines produce 1,500 units, how many units does one machine produce?', '50', '75', '100', '125', 'C', 'Easy', '1500/15 = 100 units.'),

-- Q477
('Aptitude', 'A person spends ₹7,500 from ₹10,000 income. What percentage is spent?', '65%', '70%', '75%', '80%', 'C', 'Easy', '7500/10000×100 = 75%.'),

-- Q478
('Aptitude', 'What is the remainder when 157 is divided by 12?', '1', '2', '3', '5', 'A', 'Easy', '157 = 12×13 + 1. Therefore the remainder is 1.'),

-- Q479
('Aptitude', 'What is the LCM of 18 and 24?', '48', '54', '72', '96', 'C', 'Medium', 'LCM of 18 and 24 is 72.'),

-- Q480
('Aptitude', 'What is the HCF of 54 and 90?', '9', '12', '18', '27', 'C', 'Easy', 'The greatest common factor is 18.'),

-- Q481
('Aptitude', 'A can complete a job in 25 days and B in 50 days. What fraction of the job do they complete together in 5 days?', '1/4', '3/10', '3/5', '1/2', 'B', 'Medium', 'Combined rate = 1/25 + 1/50 = 3/50. In 5 days they complete 3/10.'),

-- Q482
('Aptitude', 'A product marked ₹3,000 is sold at 15% discount. What is the selling price?', '₹2,450', '₹2,500', '₹2,550', '₹2,600', 'C', 'Easy', 'Discount = ₹450. Selling price = ₹2,550.'),

-- Q483
('Aptitude', 'A sum of ₹7,000 earns ₹1,680 simple interest in 4 years. Find the rate.', '5%', '6%', '7%', '8%', 'B', 'Medium', 'Rate = 1680×100/(7000×4) = 6%.'),

-- Q484
('Aptitude', 'A train 300 m long crosses a pole in 15 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Speed = 300/15 = 20 m/s = 72 km/h.'),

-- Q485
('Aptitude', 'What is the compound interest on ₹6,000 at 10% for 2 years?', '₹1,200', '₹1,260', '₹1,320', '₹1,400', 'B', 'Medium', 'Amount = 6000×1.1² = 7260. CI = ₹1,260.'),

-- Q486
('Aptitude', 'Two numbers are in ratio 4:9 and their difference is 35. What is the smaller number?', '20', '24', '28', '32', 'C', 'Medium', 'Difference = 5 parts = 35, so one part = 7. Smaller = 4×7 = 28.'),

-- Q487
('Aptitude', 'A and B can complete a job in 16 and 48 days respectively. How long together?', '10 days', '12 days', '14 days', '16 days', 'B', 'Medium', 'Combined rate = 1/16+1/48 = 1/12. Time = 12 days.'),

-- Q488
('Aptitude', 'A mixture contains milk and water in ratio 5:3. If total is 64 litres, how much milk is present?', '35 L', '40 L', '45 L', '50 L', 'B', 'Easy', 'Milk = 5/8 × 64 = 40 litres.'),

-- Q489
('Aptitude', 'What is the probability of getting exactly one head when two fair coins are tossed?', '1/4', '1/2', '3/4', '1', 'B', 'Medium', 'Exactly one head occurs in HT and TH: 2/4 = 1/2.'),

-- Q490
('Aptitude', 'How many arrangements can be made using 5 distinct letters?', '60', '100', '120', '150', 'C', 'Easy', '5! = 120.'),

-- Q491
('Aptitude', 'If 5x + 10 = 45, what is x?', '5', '6', '7', '8', 'C', 'Easy', '5x = 35, so x = 7.'),

-- Q492
('Aptitude', 'The average of 6 consecutive integers is 15.5. What is the sum?', '90', '93', '96', '99', 'B', 'Easy', 'Sum = average × number = 15.5×6 = 93.'),

-- Q493
('Aptitude', 'A number is increased by 40% and then decreased by 10%. What is the net percentage change?', '24% increase', '26% increase', '30% increase', '4% increase', 'B', 'Medium', 'Overall factor = 1.4×0.9 = 1.26, so net increase = 26%.'),

-- Q494
('Aptitude', 'A shopkeeper buys an article for ₹2,000 and sells it for ₹2,500. What is the profit percentage?', '20%', '25%', '30%', '35%', 'B', 'Easy', 'Profit = ₹500. Profit percentage = 500/2000×100 = 25%.'),

-- Q495
('Aptitude', 'A sum of ₹12,000 is invested at 5% simple interest for 3 years. What is the interest?', '₹1,500', '₹1,800', '₹2,000', '₹2,200', 'B', 'Easy', 'SI = 12000×5×3/100 = ₹1,800.'),

-- Q496
('Aptitude', 'A car travels 420 km in 7 hours. What is its speed?', '50 km/h', '60 km/h', '70 km/h', '80 km/h', 'B', 'Easy', 'Speed = 420/7 = 60 km/h.'),

-- Q497
('Aptitude', 'The ratio of two numbers is 5:6 and their sum is 99. What is the smaller number?', '40', '45', '50', '55', 'B', 'Medium', 'Total parts = 11. One part = 9. Smaller = 5×9 = 45.'),

-- Q498
('Aptitude', 'A can complete a task in 10 days and B in 20 days. How long will they take together?', '5 days', '6 2/3 days', '7 days', '8 days', 'B', 'Medium', 'Combined rate = 1/10+1/20 = 3/20. Time = 20/3 = 6 2/3 days.'),

-- Q499
('Aptitude', 'A bag contains 6 red, 4 blue and 5 green balls. What is the probability of selecting a green ball?', '1/3', '1/4', '2/5', '1/2', 'A', 'Medium', 'Total balls = 15 and green balls = 5. Probability = 5/15 = 1/3.'),

-- Q500
('Aptitude', 'A number is divided by 5 and leaves remainder 3. Which of the following can be the number?', '22', '23', '25', '27', 'B', 'Easy', '23 divided by 5 leaves remainder 3.'),

-- Q501
('Aptitude', 'What is 35% of 480?', '148', '168', '178', '188', 'B', 'Easy', '35% of 480 = 0.35 × 480 = 168.'),

-- Q502
('Aptitude', 'If a number is increased by 25% and becomes 250, what was the original number?', '180', '200', '220', '225', 'B', 'Easy', '125% of the original is 250. Original = 250/1.25 = 200.'),

-- Q503
('Aptitude', 'The ratio of two numbers is 7:9. If the smaller number is 56, what is the larger number?', '63', '72', '81', '90', 'B', 'Easy', '7 parts = 56, so 1 part = 8. Larger number = 9×8 = 72.'),

-- Q504
('Aptitude', 'What is the average of 14, 18, 22, 26 and 30?', '20', '22', '24', '26', 'B', 'Easy', 'Sum = 110. Average = 110/5 = 22.'),

-- Q505
('Aptitude', 'A product costing ₹1,200 is sold for ₹1,440. What is the profit percentage?', '15%', '18%', '20%', '25%', 'C', 'Easy', 'Profit = 240. Profit percentage = 240/1200 × 100 = 20%.'),

-- Q506
('Aptitude', 'A car covers 315 km in 4.5 hours. What is its average speed?', '60 km/h', '65 km/h', '70 km/h', '75 km/h', 'C', 'Easy', 'Speed = 315/4.5 = 70 km/h.'),

-- Q507
('Aptitude', 'What is the LCM of 15 and 20?', '30', '40', '50', '60', 'D', 'Easy', 'LCM of 15 and 20 is 60.'),

-- Q508
('Aptitude', 'What is the HCF of 48 and 72?', '12', '18', '24', '36', 'C', 'Easy', 'The greatest common factor of 48 and 72 is 24.'),

-- Q509
('Aptitude', 'If 4x + 8 = 32, what is x?', '4', '5', '6', '8', 'C', 'Easy', '4x = 24, therefore x = 6.'),

-- Q510
('Aptitude', 'A shop offers a 15% discount on an item marked ₹800. What is the selling price?', '₹660', '₹680', '₹700', '₹720', 'B', 'Easy', 'Discount = 15% of 800 = 120. Selling price = ₹680.'),

-- Q511
('Aptitude', 'What is the next number in the sequence 3, 9, 27, 81, ?', '162', '243', '324', '729', 'B', 'Easy', 'Each number is multiplied by 3. Next number = 81×3 = 243.'),

-- Q512
('Aptitude', 'If 45% of a number is 135, what is the number?', '250', '275', '300', '325', 'C', 'Easy', 'Number = 135/0.45 = 300.'),

-- Q513
('Aptitude', 'A person spends 75% of an income and saves ₹5,000. What is the income?', '₹15,000', '₹20,000', '₹25,000', '₹30,000', 'B', 'Easy', 'Savings are 25% of income. Income = 5000/0.25 = ₹20,000.'),

-- Q514
('Aptitude', 'If 7 books cost ₹490, what is the cost of 12 books at the same rate?', '₹720', '₹780', '₹840', '₹900', 'C', 'Easy', 'One book costs ₹70. Twelve books cost ₹840.'),

-- Q515
('Aptitude', 'What is 7/8 expressed as a percentage?', '75%', '80%', '87.5%', '90%', 'C', 'Easy', '7/8 × 100 = 87.5%.'),

-- Q516
('Aptitude', 'A train travels at 72 km/h. How far will it travel in 25 minutes?', '24 km', '30 km', '36 km', '40 km', 'B', 'Easy', '25 minutes = 5/12 hour. Distance = 72×5/12 = 30 km.'),

-- Q517
('Aptitude', 'What is the simple interest on ₹8,000 at 12% per annum for 2 years?', '₹1,720', '₹1,920', '₹2,000', '₹2,120', 'B', 'Easy', 'SI = 8000×12×2/100 = ₹1,920.'),

-- Q518
('Aptitude', 'If 30% of a number is 72, what is the number?', '180', '220', '240', '260', 'C', 'Easy', 'Number = 72/0.30 = 240.'),

-- Q519
('Aptitude', 'A can complete a task in 15 days. What fraction of the work does A complete in 3 days?', '1/3', '1/5', '1/6', '1/8', 'B', 'Easy', 'Three days out of fifteen = 3/15 = 1/5.'),

-- Q520
('Aptitude', 'The average of 7 numbers is 32. What is their total?', '214', '224', '234', '244', 'B', 'Easy', 'Total = 7×32 = 224.'),

-- Q521
('Aptitude', 'A number divided by 8 gives 17. What is the number?', '126', '136', '146', '156', 'B', 'Easy', 'Number = 17×8 = 136.'),

-- Q522
('Aptitude', 'An item marked ₹2,000 is sold at a discount of 12%. What is the selling price?', '₹1,720', '₹1,760', '₹1,800', '₹1,820', 'B', 'Easy', 'Discount = ₹240. Selling price = ₹1,760.'),

-- Q523
('Aptitude', 'The ratio 6:11 is multiplied by 4. What is the new ratio?', '10:15', '18:33', '24:44', '30:55', 'C', 'Easy', '6×4 : 11×4 = 24:44.'),

-- Q524
('Aptitude', 'What is the cube of 6?', '36', '108', '216', '256', 'C', 'Easy', '6³ = 6×6×6 = 216.'),

-- Q525
('Aptitude', 'A cyclist travels at 18 km/h for 2.5 hours. What distance does he cover?', '36 km', '40 km', '45 km', '48 km', 'C', 'Easy', 'Distance = 18×2.5 = 45 km.'),

-- Q526
('Aptitude', 'What is the remainder when 83 is divided by 9?', '1', '2', '3', '4', 'B', 'Easy', '83 = 9×9 + 2. Remainder = 2.'),

-- Q527
('Aptitude', 'If 15 machines produce 900 units, how many units does each machine produce?', '50', '60', '70', '75', 'B', 'Easy', '900/15 = 60 units.'),

-- Q528
('Aptitude', 'A number increases from 120 to 150. What is the percentage increase?', '20%', '25%', '30%', '35%', 'B', 'Easy', 'Increase = 30. Percentage = 30/120×100 = 25%.'),

-- Q529
('Aptitude', 'Which number is divisible by both 4 and 6?', '18', '20', '24', '30', 'C', 'Easy', '24 is divisible by both 4 and 6.'),

-- Q530
('Aptitude', 'If 5x = 75, what is x?', '10', '12', '15', '20', 'C', 'Easy', 'x = 75/5 = 15.'),

-- Q531
('Aptitude', 'Two numbers are in the ratio 3:5 and their sum is 64. What is the larger number?', '24', '32', '40', '48', 'C', 'Easy', 'Total parts = 8. One part = 8. Larger number = 5×8 = 40.'),

-- Q532
('Aptitude', 'What is 18% of 500?', '80', '90', '100', '110', 'B', 'Easy', '18% of 500 = 90.'),

-- Q533
('Aptitude', 'An article bought for ₹750 is sold for ₹675. What is the loss percentage?', '8%', '10%', '12%', '15%', 'B', 'Easy', 'Loss = ₹75. Loss percentage = 75/750×100 = 10%.'),

-- Q534
('Aptitude', 'What is the next number: 7, 14, 21, 28, ?', '32', '35', '36', '42', 'B', 'Easy', 'The sequence increases by 7. Next number = 35.'),

-- Q535
('Aptitude', 'If 8 pencils cost ₹96, what is the cost of 15 pencils?', '₹160', '₹170', '₹180', '₹190', 'C', 'Easy', 'One pencil costs ₹12. Fifteen pencils cost ₹180.'),

-- Q536
('Aptitude', 'A father is 3 times as old as his son. If the son is 12 years old, what is the father’s age?', '30', '36', '40', '42', 'B', 'Easy', 'Father’s age = 3×12 = 36 years.'),

-- Q537
('Aptitude', 'What is the average of 25 and 47?', '34', '35', '36', '37', 'C', 'Easy', 'Average = (25+47)/2 = 36.'),

-- Q538
('Aptitude', 'If p = 7 and q = 4, what is p² - q²?', '21', '27', '33', '35', 'C', 'Easy', '49 - 16 = 33.'),

-- Q539
('Aptitude', 'A task takes 24 days for one worker. What fraction of the work is completed in 6 days?', '1/3', '1/4', '1/5', '1/6', 'B', 'Easy', '6/24 = 1/4.'),

-- Q540
('Aptitude', 'What is the value of 5² + 4²?', '25', '35', '41', '45', 'C', 'Easy', '25 + 16 = 41.'),

-- Q541
('Aptitude', 'A bus covers 210 km in 3.5 hours. What is its average speed?', '50 km/h', '55 km/h', '60 km/h', '65 km/h', 'C', 'Easy', '210/3.5 = 60 km/h.'),

-- Q542
('Aptitude', 'An item has a cost price of ₹900 and a profit of ₹135. What is the selling price?', '₹1,000', '₹1,035', '₹1,050', '₹1,085', 'B', 'Easy', 'Selling price = 900 + 135 = ₹1,035.'),

-- Q543
('Aptitude', 'Which is the smallest composite number?', '1', '2', '3', '4', 'D', 'Easy', '4 is the smallest composite number.'),

-- Q544
('Aptitude', 'If 9x = 108, what is x?', '10', '12', '14', '16', 'B', 'Easy', 'x = 108/9 = 12.'),

-- Q545
('Aptitude', 'A student scores 84 out of 120. What percentage did the student score?', '65%', '70%', '75%', '80%', 'B', 'Easy', '84/120×100 = 70%.'),

-- Q546
('Aptitude', 'A person saves 15% of ₹40,000. How much is saved?', '₹5,000', '₹6,000', '₹7,000', '₹8,000', 'B', 'Easy', '15% of ₹40,000 = ₹6,000.'),

-- Q547
('Aptitude', 'What is 144 ÷ 12 × 3?', '12', '24', '36', '48', 'C', 'Easy', '144÷12 = 12 and 12×3 = 36.'),

-- Q548
('Aptitude', 'If 9 workers complete a task in 14 days, how many worker-days are required?', '116', '126', '136', '146', 'B', 'Easy', '9×14 = 126 worker-days.'),

-- Q549
('Aptitude', 'A number decreases from 240 to 180. What is the percentage decrease?', '20%', '25%', '30%', '35%', 'B', 'Easy', 'Decrease = 60. 60/240×100 = 25%.'),

-- Q550
('Aptitude', 'What is the sum of the first 10 natural numbers?', '45', '50', '55', '60', 'C', 'Easy', 'Sum = 10×11/2 = 55.'),

-- Q551
('Aptitude', 'A can complete a job in 16 days and B can complete it in 24 days. How long will they take together?', '8.6 days', '9.6 days', '10.6 days', '12 days', 'B', 'Medium', 'Combined rate = 1/16 + 1/24 = 5/48. Time = 48/5 = 9.6 days.'),

-- Q552
('Aptitude', 'A sum of ₹12,000 is invested at 7.5% simple interest for 4 years. What is the interest?', '₹3,200', '₹3,600', '₹4,000', '₹4,200', 'B', 'Medium', 'SI = 12000×7.5×4/100 = ₹3,600.'),

-- Q553
('Aptitude', 'The average of 9 numbers is 28. If one number 36 is removed, what is the new average?', '26', '27', '28', '29', 'B', 'Medium', 'Original sum = 252. New sum = 216. New average = 216/8 = 27.'),

-- Q554
('Aptitude', 'An item is marked 30% above cost price and sold at a 10% discount. What is the profit percentage?', '15%', '17%', '18%', '20%', 'B', 'Medium', 'Let CP=100. MP=130. SP=117. Profit=17%.'),

-- Q555
('Aptitude', 'If 30% of A equals 45% of B, what is A:B?', '2:3', '3:2', '2:5', '5:2', 'B', 'Medium', '0.30A = 0.45B, so A/B = 0.45/0.30 = 3/2.'),

-- Q556
('Aptitude', 'A train 240 m long crosses a pole in 12 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Speed = 240/12 = 20 m/s = 72 km/h.'),

-- Q557
('Aptitude', 'The compound interest on ₹8,000 at 10% per annum for 2 years is:', '₹1,600', '₹1,680', '₹1,760', '₹1,800', 'B', 'Medium', 'Amount = 8000×1.1² = 9680. CI = 1680.'),

-- Q558
('Aptitude', 'Two numbers are in the ratio 4:7. Their difference is 27. What is the smaller number?', '24', '32', '36', '42', 'C', 'Medium', 'Difference is 3 parts = 27. One part = 9. Smaller = 4×9 = 36.'),

-- Q559
('Aptitude', 'A can finish a job in 20 days and B in 30 days. If they work together for 4 days, what fraction of work remains?', '1/3', '2/5', '2/3', '3/5', 'C', 'Medium', 'Combined rate = 1/20+1/30 = 1/12. Four days completes 1/3, so 2/3 remains.'),

-- Q560
('Aptitude', 'Two successive discounts of 15% and 10% are equivalent to what single discount?', '23.5%', '25%', '26.5%', '28%', 'A', 'Medium', 'Equivalent discount = 1-(0.85×0.90) = 23.5%.'),

-- Q561
('Aptitude', 'A person travels 80 km at 40 km/h and another 80 km at 80 km/h. What is the average speed?', '48 km/h', '50 km/h', '53.33 km/h', '60 km/h', 'C', 'Medium', 'Total distance = 160 km. Total time = 2+1 = 3 hours. Average speed = 160/3 = 53.33 km/h.'),

-- Q562
('Aptitude', 'The ratio of present ages of A and B is 3:4. After 5 years, their ratio becomes 4:5. What is A’s present age?', '12', '15', '18', '20', 'B', 'Medium', 'Let ages be 3x and 4x. (3x+5)/(4x+5)=4/5 gives x=5. A=15.'),

-- Q563
('Aptitude', 'A mixture contains milk and water in the ratio 7:3. If 20 litres of water are added, the ratio becomes 7:5. What was the original quantity of milk?', '60 L', '70 L', '80 L', '90 L', 'B', 'Medium', 'Let milk=7x and water=3x. 7x/(3x+20)=7/5 gives x=10. Milk=70 L.'),

-- Q564
('Aptitude', 'What is the probability of getting a number greater than 4 on a fair die?', '1/6', '1/3', '1/2', '2/3', 'B', 'Medium', 'Favorable outcomes are 5 and 6, so probability = 2/6 = 1/3.'),

-- Q565
('Aptitude', 'How many different 2-letter arrangements can be made from A, B, C, D, E without repetition?', '10', '15', '20', '25', 'C', 'Medium', 'Number of arrangements = 5P2 = 5×4 = 20.'),

-- Q566
('Aptitude', 'If x + 1/x = 6, what is x² + 1/x²?', '32', '34', '36', '38', 'B', 'Medium', 'Squaring gives x²+2+1/x²=36. Therefore required value = 34.'),

-- Q567
('Aptitude', 'A number leaves remainder 4 when divided by 9. What remainder will twice the number leave?', '4', '6', '7', '8', 'D', 'Medium', 'If n=9k+4, then 2n=18k+8, so remainder = 8.'),

-- Q568
('Aptitude', 'The average salary of 5 employees is ₹32,000. If an employee earning ₹42,000 joins, what is the new average?', '₹33,000', '₹33,667', '₹34,000', '₹35,000', 'B', 'Medium', 'Original total = ₹160,000. New total = ₹202,000. Average = ₹202,000/6 = ₹33,666.67.'),

-- Q569
('Aptitude', 'One pipe fills a tank in 15 hours and another in 10 hours. How long will they take together?', '5 hours', '6 hours', '7 hours', '8 hours', 'B', 'Medium', 'Combined rate = 1/15+1/10 = 1/6. Time = 6 hours.'),

-- Q570
('Aptitude', 'A 25% increase in a number is 75. What is the original number?', '250', '275', '300', '325', 'C', 'Medium', '25% of number = 75, so number = 75/0.25 = 300.'),

-- Q571
('Aptitude', 'If the selling price is 140% of the cost price, what is the profit percentage?', '30%', '35%', '40%', '45%', 'C', 'Medium', 'If CP=100, SP=140. Profit = 40, so profit percentage = 40%.'),

-- Q572
('Aptitude', 'A student scores 45% and fails by 15 marks. Another scores 55% and gets 25 marks above passing marks. What are the maximum marks?', '300', '350', '400', '450', 'C', 'Medium', 'Difference in scores is 40 marks, representing 10% of total marks. Total = 40/0.10 = 400.'),

-- Q573
('Aptitude', 'A train 150 m long passes a 250 m platform in 20 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Total distance = 400 m. Speed = 400/20 = 20 m/s = 72 km/h.'),

-- Q574
('Aptitude', 'The sum of three consecutive even numbers is 78. What is the largest number?', '24', '26', '28', '30', 'C', 'Medium', 'Numbers are 24, 26 and 28. Largest = 28.'),

-- Q575
('Aptitude', 'A person invests ₹25,000 at 8% simple interest for 3 years. What is the interest earned?', '₹5,000', '₹6,000', '₹7,000', '₹8,000', 'B', 'Medium', 'SI = 25000×8×3/100 = ₹6,000.'),

-- Q576
('Aptitude', 'If 5x - 12 = 28, what is x?', '6', '7', '8', '9', 'C', 'Medium', '5x = 40, so x = 8.'),

-- Q577
('Aptitude', 'A can do a job in 24 days and B in 36 days. Together with C, they finish it in 8 days. How many days would C alone take?', '16', '18', '20', '24', 'B', 'Medium', 'Combined rate = 1/8. A+B rate = 1/24+1/36 = 5/72. C rate = 9/72-5/72 = 4/72 = 1/18.'),

-- Q578
('Aptitude', 'A box contains 4 red, 5 blue and 3 green balls. What is the probability of selecting a red ball?', '1/4', '1/3', '2/5', '1/2', 'B', 'Medium', 'Total balls = 12 and red balls = 4. Probability = 4/12 = 1/3.'),

-- Q579
('Aptitude', 'How many ways can 6 people be arranged in a row?', '120', '240', '360', '720', 'D', 'Medium', 'Number of arrangements = 6! = 720.'),

-- Q580
('Aptitude', 'A number is divided by 4, 6 and 8 and leaves remainder 3 each time. What is the smallest such number greater than 3?', '23', '27', '51', '59', 'B', 'Medium', 'LCM of 4,6,8 is 24. Required number = 24+3 = 27.'),

-- Q581
('Aptitude', 'What is 22.5% of 640?', '124', '136', '144', '152', 'C', 'Easy', '22.5% of 640 = 144.'),

-- Q582
('Aptitude', 'A number is decreased by 15% and becomes 340. What was the original number?', '380', '400', '420', '450', 'B', 'Medium', '85% of original = 340. Original = 340/0.85 = 400.'),

-- Q583
('Aptitude', 'The ratio of boys to girls is 5:4. If there are 45 students, how many are boys?', '20', '25', '30', '35', 'B', 'Easy', 'Total parts = 9. One part = 5. Boys = 5×5 = 25.'),

-- Q584
('Aptitude', 'The average of the first five odd numbers is:', '4', '5', '6', '7', 'B', 'Easy', 'First five odd numbers are 1,3,5,7,9. Average = 25/5 = 5.'),

-- Q585
('Aptitude', 'A product costs ₹1,500 and is sold at a loss of 8%. What is the selling price?', '₹1,320', '₹1,350', '₹1,380', '₹1,400', 'C', 'Easy', 'Loss = 8% of 1500 = 120. SP = ₹1,380.'),

-- Q586
('Aptitude', 'A vehicle travels 450 km in 6 hours. What is its speed?', '65 km/h', '70 km/h', '75 km/h', '80 km/h', 'C', 'Easy', 'Speed = 450/6 = 75 km/h.'),

-- Q587
('Aptitude', 'What is the LCM of 18 and 24?', '48', '54', '72', '96', 'C', 'Easy', 'LCM of 18 and 24 is 72.'),

-- Q588
('Aptitude', 'What is the HCF of 54 and 90?', '9', '12', '18', '27', 'C', 'Easy', 'The greatest common factor is 18.'),

-- Q589
('Aptitude', 'If 6x + 5 = 41, what is x?', '5', '6', '7', '8', 'B', 'Easy', '6x = 36, so x = 6.'),

-- Q590
('Aptitude', 'An item marked ₹1,200 is sold at a discount of 25%. What is the selling price?', '₹850', '₹900', '₹950', '₹1,000', 'B', 'Easy', 'Discount = ₹300. Selling price = ₹900.'),

-- Q591
('Aptitude', 'What is the next number: 4, 12, 36, 108, ?', '216', '324', '432', '540', 'B', 'Easy', 'Each number is multiplied by 3. Next = 324.'),

-- Q592
('Aptitude', 'If 55% of a number is 220, what is the number?', '350', '400', '450', '500', 'B', 'Easy', 'Number = 220/0.55 = 400.'),

-- Q593
('Aptitude', 'A person spends 80% of income and saves ₹4,000. What is the income?', '₹16,000', '₹20,000', '₹24,000', '₹25,000', 'B', 'Easy', 'Savings = 20%. Income = 4000/0.20 = ₹20,000.'),

-- Q594
('Aptitude', 'If 9 pens cost ₹135, what will 14 pens cost?', '₹190', '₹200', '₹210', '₹225', 'C', 'Easy', 'One pen costs ₹15. Fourteen pens cost ₹210.'),

-- Q595
('Aptitude', 'What is 5/8 expressed as a percentage?', '50%', '60%', '62.5%', '65%', 'C', 'Easy', '5/8×100 = 62.5%.'),

-- Q596
('Aptitude', 'A train moves at 90 km/h. How far will it travel in 40 minutes?', '45 km', '50 km', '60 km', '75 km', 'C', 'Easy', '40 minutes = 2/3 hour. Distance = 90×2/3 = 60 km.'),

-- Q597
('Aptitude', 'What is the simple interest on ₹6,000 at 9% per annum for 3 years?', '₹1,420', '₹1,620', '₹1,800', '₹1,920', 'B', 'Easy', 'SI = 6000×9×3/100 = ₹1,620.'),

-- Q598
('Aptitude', 'If 25% of a number is 125, what is the number?', '400', '450', '500', '550', 'C', 'Easy', 'Number = 125/0.25 = 500.'),

-- Q599
('Aptitude', 'A can complete a task in 25 days. What fraction does A complete in 5 days?', '1/3', '1/4', '1/5', '1/6', 'C', 'Easy', '5/25 = 1/5.'),

-- Q600
('Aptitude', 'The average of 9 numbers is 35. What is their total?', '305', '315', '325', '335', 'B', 'Easy', 'Total = 9×35 = 315.'),

-- Q601
('Aptitude', 'A number divided by 12 gives 15. What is the number?', '150', '160', '180', '200', 'C', 'Easy', 'Number = 12×15 = 180.'),

-- Q602
('Aptitude', 'An item marked ₹2,500 is sold at 18% discount. What is the selling price?', '₹2,000', '₹2,050', '₹2,100', '₹2,150', 'B', 'Easy', 'Discount = ₹450. Selling price = ₹2,050.'),

-- Q603
('Aptitude', 'The ratio 8:13 is multiplied by 2. What is the resulting ratio?', '10:15', '16:26', '18:28', '20:30', 'B', 'Easy', '8×2:13×2 = 16:26.'),

-- Q604
('Aptitude', 'What is the square of 18?', '284', '314', '324', '344', 'C', 'Easy', '18² = 324.'),

-- Q605
('Aptitude', 'A person walks at 6 km/h for 3.5 hours. What distance is covered?', '18 km', '21 km', '24 km', '27 km', 'B', 'Easy', 'Distance = 6×3.5 = 21 km.'),

-- Q606
('Aptitude', 'What is the remainder when 91 is divided by 8?', '1', '2', '3', '4', 'C', 'Easy', '91 = 8×11+3. Remainder = 3.'),

-- Q607
('Aptitude', 'If 20 machines produce 1,000 units, how many units does each produce?', '40', '50', '60', '70', 'B', 'Easy', '1000/20 = 50.'),

-- Q608
('Aptitude', 'A number increases from 160 to 200. What is the percentage increase?', '20%', '25%', '30%', '35%', 'B', 'Easy', 'Increase = 40. 40/160×100 = 25%.'),

-- Q609
('Aptitude', 'Which number is divisible by both 5 and 8?', '30', '35', '40', '45', 'C', 'Easy', '40 is divisible by both 5 and 8.'),

-- Q610
('Aptitude', 'If 8x = 96, what is x?', '10', '12', '14', '16', 'B', 'Easy', 'x = 96/8 = 12.'),

-- Q611
('Aptitude', 'Two numbers are in the ratio 4:7 and their sum is 88. What is the smaller number?', '24', '32', '36', '40', 'B', 'Easy', 'Total parts = 11. One part = 8. Smaller = 4×8 = 32.'),

-- Q612
('Aptitude', 'What is 22% of 450?', '88', '99', '108', '110', 'B', 'Easy', '22% of 450 = 99.'),

-- Q613
('Aptitude', 'An article bought for ₹800 is sold for ₹920. What is the profit percentage?', '10%', '12%', '15%', '18%', 'C', 'Easy', 'Profit = ₹120. Profit percentage = 120/800×100 = 15%.'),

-- Q614
('Aptitude', 'What is the next number: 11, 22, 33, 44, ?', '50', '55', '60', '66', 'B', 'Easy', 'The sequence increases by 11. Next = 55.'),

-- Q615
('Aptitude', 'If 12 notebooks cost ₹360, what is the cost of 17 notebooks?', '₹480', '₹510', '₹540', '₹570', 'B', 'Easy', 'One notebook costs ₹30. Seventeen cost ₹510.'),

-- Q616
('Aptitude', 'A mother is twice as old as her daughter. If the daughter is 17, what is the mother’s age?', '30', '32', '34', '36', 'C', 'Easy', 'Mother = 2×17 = 34 years.'),

-- Q617
('Aptitude', 'What is the average of 42 and 58?', '48', '50', '52', '54', 'B', 'Easy', 'Average = 100/2 = 50.'),

-- Q618
('Aptitude', 'If a = 8 and b = 5, what is a² - b²?', '29', '39', '49', '59', 'B', 'Easy', '64 - 25 = 39.'),

-- Q619
('Aptitude', 'A task is completed in 30 days. What fraction is completed in 10 days?', '1/2', '1/3', '1/4', '1/5', 'B', 'Easy', '10/30 = 1/3.'),

-- Q620
('Aptitude', 'What is 3³ + 4²?', '25', '35', '43', '49', 'C', 'Easy', '27 + 16 = 43.'),

-- Q621
('Aptitude', 'A bus travels 270 km in 4.5 hours. What is its speed?', '50 km/h', '55 km/h', '60 km/h', '65 km/h', 'C', 'Easy', '270/4.5 = 60 km/h.'),

-- Q622
('Aptitude', 'An item costs ₹1,200 and gives a profit of ₹180. What is its selling price?', '₹1,320', '₹1,380', '₹1,400', '₹1,450', 'B', 'Easy', 'SP = 1200+180 = ₹1,380.'),

-- Q623
('Aptitude', 'What is the smallest prime number greater than 20?', '21', '22', '23', '25', 'C', 'Easy', '23 is prime and is the smallest prime greater than 20.'),

-- Q624
('Aptitude', 'If 11x = 121, what is x?', '9', '10', '11', '12', 'C', 'Easy', 'x = 121/11 = 11.'),

-- Q625
('Aptitude', 'A candidate scores 135 out of 180. What is the percentage?', '70%', '75%', '80%', '85%', 'B', 'Easy', '135/180×100 = 75%.'),

-- Q626
('Aptitude', 'A person saves 25% of ₹32,000. How much does the person save?', '₹6,000', '₹7,000', '₹8,000', '₹9,000', 'C', 'Easy', '25% of ₹32,000 = ₹8,000.'),

-- Q627
('Aptitude', 'What is 180 ÷ 6 × 2?', '30', '45', '60', '90', 'C', 'Easy', '180÷6 = 30, then 30×2 = 60.'),

-- Q628
('Aptitude', 'If 10 workers complete a task in 18 days, total work is:', '160 worker-days', '180 worker-days', '200 worker-days', '220 worker-days', 'B', 'Easy', '10×18 = 180 worker-days.'),

-- Q629
('Aptitude', 'A number decreases from 300 to 240. What is the percentage decrease?', '15%', '20%', '25%', '30%', 'B', 'Easy', 'Decrease = 60. 60/300×100 = 20%.'),

-- Q630
('Aptitude', 'What is the sum of the first 15 natural numbers?', '105', '110', '120', '125', 'C', 'Easy', '15×16/2 = 120.'),

-- Q631
('Aptitude', 'A can complete a job in 18 days and B in 27 days. How many days will they take together?', '9.8', '10.8', '11.8', '12.8', 'B', 'Medium', 'Combined rate = 1/18+1/27 = 5/54. Time = 54/5 = 10.8 days.'),

-- Q632
('Aptitude', 'A sum of ₹15,000 is invested at 8% simple interest for 2.5 years. What is the interest?', '₹2,500', '₹3,000', '₹3,500', '₹4,000', 'B', 'Medium', 'SI = 15000×8×2.5/100 = ₹3,000.'),

-- Q633
('Aptitude', 'The average of 10 numbers is 24. If one number 34 is removed, what is the new average?', '22', '22 8/9', '23', '24', 'B', 'Medium', 'Original sum = 240. New sum = 206. New average = 206/9 = 22.89.'),

-- Q634
('Aptitude', 'An article is marked 20% above cost price and sold at a 5% discount. What is the profit percentage?', '12%', '14%', '15%', '16%', 'B', 'Medium', 'Let CP=100. MP=120. SP=114. Profit = 14%.'),

-- Q635
('Aptitude', 'If 25% of A equals 50% of B, what is A:B?', '1:2', '2:1', '3:2', '2:3', 'B', 'Medium', '0.25A = 0.50B, so A/B = 2.'),

-- Q636
('Aptitude', 'A train 300 m long crosses a pole in 15 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Speed = 300/15 = 20 m/s = 72 km/h.'),

-- Q637
('Aptitude', 'The compound interest on ₹12,000 at 5% per annum for 2 years is:', '₹1,200', '₹1,230', '₹1,250', '₹1,260', 'B', 'Medium', 'Amount = 12000×1.05² = 13230. CI = ₹1,230.'),

-- Q638
('Aptitude', 'Two numbers are in the ratio 7:11. Their difference is 28. What is the smaller number?', '42', '49', '56', '63', 'B', 'Medium', 'Difference = 4 parts = 28. One part = 7. Smaller = 7×7 = 49.'),

-- Q639
('Aptitude', 'A can finish a job in 12 days and B in 18 days. If they work together for 2 days, what fraction of work remains?', '1/2', '2/3', '13/18', '5/6', 'C', 'Medium', 'Combined rate = 5/36. In 2 days they complete 5/18, so 13/18 remains.'),

-- Q640
('Aptitude', 'Successive discounts of 20% and 15% are equivalent to what single discount?', '30%', '32%', '35%', '38%', 'B', 'Medium', 'Equivalent discount = 1-(0.8×0.85) = 32%.'),

-- Q641
('Aptitude', 'A person travels 90 km at 45 km/h and another 90 km at 90 km/h. What is the average speed?', '55 km/h', '60 km/h', '65 km/h', '70 km/h', 'B', 'Medium', 'Total distance = 180 km. Total time = 2+1 = 3 hours. Average speed = 60 km/h.'),

-- Q642
('Aptitude', 'The ratio of present ages of A and B is 5:6. After 4 years, the ratio becomes 6:7. What is A’s present age?', '16', '20', '24', '25', 'B', 'Medium', 'Let ages be 5x and 6x. (5x+4)/(6x+4)=6/7 gives x=4. A=20.'),

-- Q643
('Aptitude', 'A mixture contains milk and water in ratio 3:2. If 10 litres of water are added, ratio becomes 3:4. What was the original quantity of milk?', '12 L', '15 L', '18 L', '20 L', 'B', 'Medium', 'Let milk=3x and water=2x. 3x/(2x+10)=3/4 gives x=5. Milk=15 L.'),

-- Q644
('Aptitude', 'What is the probability of getting an odd number on a fair die?', '1/6', '1/3', '1/2', '2/3', 'C', 'Medium', 'Odd outcomes are 1,3,5. Probability = 3/6 = 1/2.'),

-- Q645
('Aptitude', 'How many 3-letter arrangements can be made from 5 distinct letters without repetition?', '30', '40', '50', '60', 'D', 'Medium', '5P3 = 5×4×3 = 60.'),

-- Q646
('Aptitude', 'If x + 1/x = 7, what is x² + 1/x²?', '45', '47', '49', '51', 'B', 'Medium', 'Squaring gives x²+2+1/x²=49. Required value = 47.'),

-- Q647
('Aptitude', 'A number leaves remainder 5 when divided by 8. What remainder will three times the number leave?', '5', '6', '7', '3', 'C', 'Medium', '3×5 = 15. Remainder when divided by 8 is 7.'),

-- Q648
('Aptitude', 'The average salary of 8 employees is ₹45,000. If an employee earning ₹54,000 joins, what is the new average?', '₹45,000', '₹46,000', '₹47,000', '₹48,000', 'B', 'Medium', 'Original total = ₹360,000. New total = ₹414,000. Average = ₹46,000.'),

-- Q649
('Aptitude', 'One pipe fills a tank in 20 hours and another in 30 hours. How long together?', '10 hours', '12 hours', '15 hours', '18 hours', 'B', 'Medium', 'Combined rate = 1/20+1/30 = 1/12. Time = 12 hours.'),

-- Q650
('Aptitude', 'A 30% increase in a number is 90. What is the original number?', '250', '300', '350', '400', 'B', 'Medium', '30% of number = 90. Number = 90/0.30 = 300.'),

-- Q651
('Aptitude', 'If the selling price is 115% of cost price, what is the profit percentage?', '10%', '12%', '15%', '20%', 'C', 'Medium', 'If CP=100, SP=115. Profit = 15%.'),

-- Q652
('Aptitude', 'A student scores 35% and fails by 30 marks. Another scores 50% and gets 15 marks above passing marks. What are the maximum marks?', '250', '300', '350', '400', 'B', 'Medium', 'Difference in scores = 45 marks, representing 15% of total. Total = 45/0.15 = 300.'),

-- Q653
('Aptitude', 'A train 200 m long passes a 300 m platform in 25 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Total distance = 500 m. Speed = 500/25 = 20 m/s = 72 km/h.'),

-- Q654
('Aptitude', 'The sum of three consecutive odd numbers is 75. What is the largest number?', '23', '25', '27', '29', 'C', 'Medium', 'Numbers are 23,25,27. Largest = 27.'),

-- Q655
('Aptitude', 'A man invests ₹18,000 at 10% simple interest for 2.5 years. What is the interest?', '₹4,000', '₹4,500', '₹5,000', '₹5,500', 'B', 'Medium', 'SI = 18000×10×2.5/100 = ₹4,500.'),

-- Q656
('Aptitude', 'If 4x - 9 = 31, what is x?', '8', '9', '10', '11', 'C', 'Medium', '4x = 40, so x = 10.'),

-- Q657
('Aptitude', 'A can complete a job in 30 days and B in 20 days. Together with C they complete it in 6 days. How many days would C alone take?', '10', '12', '15', '18', 'B', 'Medium', 'Combined rate = 1/6. A+B rate = 1/30+1/20 = 1/12. C rate = 1/6-1/12 = 1/12. C takes 12 days.'),

-- Q658
('Aptitude', 'A box contains 6 red, 4 blue and 5 green balls. What is the probability of selecting a blue ball?', '2/15', '4/15', '1/3', '2/5', 'B', 'Medium', 'Total balls = 15. Blue balls = 4. Probability = 4/15.'),

-- Q659
('Aptitude', 'How many ways can 7 people be arranged in a row?', '720', '1,440', '2,520', '5,040', 'D', 'Medium', '7! = 5040.'),

-- Q660
('Aptitude', 'A number is divided by 5, 6 and 10 and leaves remainder 2 each time. What is the smallest number greater than 2?', '32', '52', '62', '92', 'A', 'Medium', 'LCM of 5, 6 and 10 = 30. The smallest number greater than 2 leaving remainder 2 is 32.'),

-- Q661
('Aptitude', 'What is 37.5% of 800?', '250', '275', '300', '325', 'C', 'Easy', '37.5% of 800 = 300.'),

-- Q662
('Aptitude', 'A number is increased by 40% and becomes 420. What was the original number?', '280', '300', '320', '350', 'B', 'Medium', '140% of original = 420. Original = 420/1.4 = 300.'),

-- Q663
('Aptitude', 'The ratio of boys to girls is 7:5. If there are 60 girls, how many boys are there?', '72', '84', '90', '96', 'B', 'Easy', '5 parts = 60, one part = 12. Boys = 7×12 = 84.'),

-- Q664
('Aptitude', 'The average of 12, 24, 36, 48 and 60 is:', '32', '36', '40', '42', 'B', 'Easy', 'Sum = 180. Average = 36.'),

-- Q665
('Aptitude', 'A product costing ₹2,000 is sold for ₹2,300. What is the profit percentage?', '10%', '12%', '15%', '20%', 'C', 'Easy', 'Profit = ₹300. Profit percentage = 15%.'),

-- Q666
('Aptitude', 'A car travels 420 km in 7 hours. What is its average speed?', '50 km/h', '55 km/h', '60 km/h', '65 km/h', 'C', 'Easy', 'Speed = 420/7 = 60 km/h.'),

-- Q667
('Aptitude', 'What is the LCM of 16 and 24?', '32', '48', '64', '72', 'B', 'Easy', 'LCM of 16 and 24 is 48.'),

-- Q668
('Aptitude', 'What is the HCF of 64 and 96?', '16', '24', '32', '48', 'C', 'Easy', 'HCF = 32.'),

-- Q669
('Aptitude', 'If 7x + 3 = 45, what is x?', '5', '6', '7', '8', 'B', 'Easy', '7x = 42, so x = 6.'),

-- Q670
('Aptitude', 'An item marked ₹1,600 is sold at 20% discount. What is the selling price?', '₹1,200', '₹1,280', '₹1,320', '₹1,400', 'B', 'Easy', 'Discount = ₹320. Selling price = ₹1,280.'),

-- Q671
('Aptitude', 'What is the next number: 6, 18, 54, 162, ?', '324', '486', '648', '810', 'B', 'Easy', 'Each number is multiplied by 3. Next = 486.'),

-- Q672
('Aptitude', 'If 65% of a number is 260, what is the number?', '350', '400', '450', '500', 'B', 'Easy', 'Number = 260/0.65 = 400.'),

-- Q673
('Aptitude', 'A person spends 60% of income and saves ₹12,000. What is the income?', '₹20,000', '₹25,000', '₹30,000', '₹35,000', 'C', 'Easy', 'Savings are 40%. Income = 12000/0.40 = ₹30,000.'),

-- Q674
('Aptitude', 'If 5 books cost ₹275, what will 12 books cost?', '₹600', '₹660', '₹700', '₹720', 'B', 'Easy', 'One book costs ₹55. Twelve books cost ₹660.'),

-- Q675
('Aptitude', 'What is 11/20 expressed as a percentage?', '50%', '55%', '60%', '65%', 'B', 'Easy', '11/20×100 = 55%.'),

-- Q676
('Aptitude', 'A train travels at 80 km/h for 45 minutes. What distance does it cover?', '50 km', '60 km', '70 km', '80 km', 'B', 'Easy', '45 minutes = 3/4 hour. Distance = 80×3/4 = 60 km.'),

-- Q677
('Aptitude', 'What is the simple interest on ₹7,500 at 8% per annum for 2 years?', '₹1,000', '₹1,200', '₹1,400', '₹1,600', 'B', 'Easy', 'SI = 7500×8×2/100 = ₹1,200.'),

-- Q678
('Aptitude', 'If 20% of a number is 96, what is the number?', '420', '480', '520', '560', 'B', 'Easy', 'Number = 96/0.20 = 480.'),

-- Q679
('Aptitude', 'A can complete a task in 16 days. What fraction of work is completed in 4 days?', '1/2', '1/3', '1/4', '1/5', 'C', 'Easy', '4/16 = 1/4.'),

-- Q680
('Aptitude', 'The average of 8 numbers is 27. What is their total?', '196', '206', '216', '226', 'C', 'Easy', 'Total = 8×27 = 216.'),

-- Q681
('Aptitude', 'A number divided by 15 gives 12. What is the number?', '150', '165', '180', '195', 'C', 'Easy', 'Number = 15×12 = 180.'),

-- Q682
('Aptitude', 'An item marked ₹3,000 is sold at 10% discount. What is the selling price?', '₹2,600', '₹2,700', '₹2,800', '₹2,900', 'B', 'Easy', 'Discount = ₹300. Selling price = ₹2,700.'),

-- Q683
('Aptitude', 'The ratio 9:14 is multiplied by 3. What is the resulting ratio?', '18:28', '27:42', '27:36', '30:45', 'B', 'Easy', '9×3:14×3 = 27:42.'),

-- Q684
('Aptitude', 'What is the cube of 7?', '294', '343', '392', '441', 'B', 'Easy', '7³ = 343.'),

-- Q685
('Aptitude', 'A person walks at 4 km/h for 3.5 hours. What distance is covered?', '12 km', '14 km', '16 km', '18 km', 'B', 'Easy', 'Distance = 4×3.5 = 14 km.'),

-- Q686
('Aptitude', 'What is the remainder when 125 is divided by 11?', '2', '3', '4', '5', 'C', 'Easy', '125 = 11×11 + 4. Therefore the remainder is 4.'),

-- Q687
('Aptitude', 'If 25 machines produce 1,500 units, how many units does each machine produce?', '50', '60', '70', '80', 'B', 'Easy', '1500/25 = 60.'),

-- Q688
('Aptitude', 'A number increases from 250 to 300. What is the percentage increase?', '15%', '20%', '25%', '30%', 'B', 'Easy', 'Increase = 50. 50/250×100 = 20%.'),

-- Q689
('Aptitude', 'Which number is divisible by both 6 and 9?', '27', '36', '42', '48', 'B', 'Easy', '36 is divisible by both 6 and 9.'),

-- Q690
('Aptitude', 'If 12x = 144, what is x?', '10', '12', '14', '16', 'B', 'Easy', 'x = 144/12 = 12.'),

-- Q691
('Aptitude', 'Two numbers are in the ratio 5:8 and their sum is 91. What is the larger number?', '48', '52', '56', '64', 'C', 'Easy', 'Total parts = 13. One part = 7. Larger = 8×7 = 56.'),

-- Q692
('Aptitude', 'What is 24% of 250?', '50', '60', '70', '80', 'B', 'Easy', '24% of 250 = 60.'),

-- Q693
('Aptitude', 'An article bought for ₹900 is sold for ₹810. What is the loss percentage?', '8%', '10%', '12%', '15%', 'B', 'Easy', 'Loss = ₹90. Loss percentage = 10%.'),

-- Q694
('Aptitude', 'What is the next number: 9, 18, 27, 36, ?', '40', '42', '45', '48', 'C', 'Easy', 'The sequence increases by 9. Next = 45.'),

-- Q695
('Aptitude', 'If 15 notebooks cost ₹450, what is the cost of 22 notebooks?', '₹600', '₹660', '₹700', '₹720', 'B', 'Easy', 'One notebook costs ₹30. Twenty-two cost ₹660.'),

-- Q696
('Aptitude', 'A father is 5 times as old as his son. If the son is 9 years old, what is the father’s age?', '36', '40', '45', '50', 'C', 'Easy', 'Father = 5×9 = 45 years.'),

-- Q697
('Aptitude', 'What is the average of 36 and 64?', '45', '50', '55', '60', 'B', 'Easy', 'Average = 100/2 = 50.'),

-- Q698
('Aptitude', 'If a = 9 and b = 4, what is a² + b²?', '81', '85', '97', '100', 'C', 'Easy', '81 + 16 = 97.'),

-- Q699
('Aptitude', 'A task takes 36 days for one worker. What fraction is completed in 9 days?', '1/2', '1/3', '1/4', '1/5', 'C', 'Easy', '9/36 = 1/4.'),

-- Q700
('Aptitude', 'What is the value of 4³ + 5²?', '79', '89', '99', '109', 'B', 'Easy', '64 + 25 = 89.'),

-- Q701
('Aptitude', 'A bus covers 320 km in 5 hours. What is its average speed?', '54 km/h', '64 km/h', '70 km/h', '72 km/h', 'B', 'Easy', '320/5 = 64 km/h.'),

-- Q702
('Aptitude', 'An item costs ₹1,500 and gives a profit of ₹225. What is its selling price?', '₹1,625', '₹1,700', '₹1,725', '₹1,750', 'C', 'Easy', 'SP = 1500+225 = ₹1,725.'),

-- Q703
('Aptitude', 'What is the smallest prime number greater than 30?', '31', '33', '35', '37', 'A', 'Easy', '31 is the smallest prime number greater than 30.'),

-- Q704
('Aptitude', 'If 13x = 169, what is x?', '11', '12', '13', '14', 'C', 'Easy', 'x = 169/13 = 13.'),

-- Q705
('Aptitude', 'A candidate scores 96 out of 120. What is the percentage?', '75%', '80%', '85%', '90%', 'B', 'Easy', '96/120×100 = 80%.'),

-- Q706
('Aptitude', 'A person saves 30% of ₹30,000. How much is saved?', '₹7,000', '₹8,000', '₹9,000', '₹10,000', 'C', 'Easy', '30% of ₹30,000 = ₹9,000.'),

-- Q707
('Aptitude', 'What is 240 ÷ 8 × 3?', '30', '60', '90', '120', 'C', 'Easy', '240÷8 = 30, then 30×3 = 90.'),

-- Q708
('Aptitude', 'If 12 workers complete a task in 20 days, total work is:', '220 worker-days', '240 worker-days', '260 worker-days', '280 worker-days', 'B', 'Easy', '12×20 = 240 worker-days.'),

-- Q709
('Aptitude', 'A number decreases from 400 to 320. What is the percentage decrease?', '15%', '20%', '25%', '30%', 'B', 'Easy', 'Decrease = 80. 80/400×100 = 20%.'),

-- Q710
('Aptitude', 'What is the sum of the first 20 natural numbers?', '190', '200', '210', '220', 'C', 'Easy', '20×21/2 = 210.'),

-- Q711
('Aptitude', 'A can complete a job in 20 days and B in 25 days. How long will they take together?', '10.11 days', '11.11 days', '12.11 days', '13.11 days', 'B', 'Medium', 'Combined rate = 1/20+1/25 = 9/100. Time = 100/9 = 11.11 days.'),

-- Q712
('Aptitude', 'A sum of ₹20,000 is invested at 6% simple interest for 3 years. What is the total amount?', '₹22,600', '₹23,000', '₹23,600', '₹24,000', 'C', 'Medium', 'SI = 20000×6×3/100 = ₹3,600. Amount = ₹23,600.'),

-- Q713
('Aptitude', 'The average of 6 numbers is 42. If one number 52 is removed, what is the new average?', '38', '40', '42', '44', 'B', 'Medium', 'Original sum = 252. New sum = 200. New average = 200/5 = 40.'),

-- Q714
('Aptitude', 'An article is marked 40% above cost price and sold at a 10% discount. What is the profit percentage?', '24%', '25%', '26%', '28%', 'C', 'Medium', 'Let CP=100. MP=140. SP=126. Profit = 26%.'),

-- Q715
('Aptitude', 'If 35% of A equals 70% of B, what is A:B?', '1:2', '2:1', '3:2', '2:3', 'B', 'Medium', '0.35A = 0.70B, so A/B = 2.'),

-- Q716
('Aptitude', 'A train 360 m long crosses a pole in 18 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Speed = 360/18 = 20 m/s = 72 km/h.'),

-- Q717
('Aptitude', 'The compound interest on ₹15,000 at 8% per annum for 2 years is:', '₹2,400', '₹2,496', '₹2,500', '₹2,600', 'B', 'Medium', 'Amount = 15000×1.08² = 17496. CI = ₹2,496.'),

-- Q718
('Aptitude', 'Two numbers are in the ratio 3:8. Their difference is 45. What is the smaller number?', '24', '27', '30', '36', 'B', 'Medium', 'Difference = 5 parts = 45. One part = 9. Smaller = 27.'),

-- Q719
('Aptitude', 'A can finish a job in 10 days and B in 15 days. If they work together for 3 days, what fraction of work remains?', '1/5', '1/3', '1/2', '2/3', 'C', 'Medium', 'Combined rate = 1/10+1/15 = 1/6. In 3 days they complete 1/2, so 1/2 remains.'),

-- Q720
('Aptitude', 'Successive discounts of 25% and 20% are equivalent to what single discount?', '35%', '40%', '45%', '50%', 'B', 'Medium', 'Equivalent discount = 1-(0.75×0.80) = 40%.'),

-- Q721
('Aptitude', 'A person travels 100 km at 50 km/h and another 100 km at 100 km/h. What is the average speed?', '60 km/h', '66.67 km/h', '70 km/h', '75 km/h', 'B', 'Medium', 'Total distance = 200 km. Total time = 2+1 = 3 hours. Average speed = 66.67 km/h.'),

-- Q722
('Aptitude', 'The ratio of present ages of A and B is 2:3. After 8 years, the ratio becomes 3:4. What is A’s present age?', '12', '16', '20', '24', 'B', 'Medium', 'Let ages be 2x and 3x. (2x+8)/(3x+8)=3/4 gives x=8. A=16.'),

-- Q723
('Aptitude', 'A mixture contains milk and water in ratio 4:1. If 15 litres of water are added, ratio becomes 4:3. What was the original quantity of milk?', '20 L', '30 L', '40 L', '50 L', 'B', 'Medium', 'Let milk=4x and water=x. 4x/(x+15)=4/3 gives x=7.5. Milk=30 L.'),

-- Q724
('Aptitude', 'What is the probability of getting a number less than 3 on a fair die?', '1/6', '1/3', '1/2', '2/3', 'B', 'Medium', 'Numbers less than 3 are 1 and 2. Probability = 2/6 = 1/3.'),

-- Q725
('Aptitude', 'How many 4-letter arrangements can be made from 6 distinct letters without repetition?', '120', '240', '360', '720', 'C', 'Medium', '6P4 = 6×5×4×3 = 360.'),

-- Q726
('Aptitude', 'If x + 1/x = 8, what is x² + 1/x²?', '60', '62', '64', '66', 'B', 'Medium', 'Squaring gives x²+2+1/x²=64. Required value = 62.'),

-- Q727
('Aptitude', 'A number leaves remainder 6 when divided by 7. What remainder will twice the number leave?', '3', '4', '5', '6', 'C', 'Medium', '2×6 = 12. Remainder when divided by 7 = 5.'),

-- Q728
('Aptitude', 'The average salary of 7 employees is ₹36,000. If an employee earning ₹48,000 joins, what is the new average?', '₹37,000', '₹37,500', '₹37,714', '₹38,000', 'B', 'Medium', 'Original total = ₹252,000. New total = ₹300,000. Average = ₹37,500.'),

-- Q729
('Aptitude', 'One pipe fills a tank in 12 hours and another in 8 hours. How long will they take together?', '4.8 hours', '5 hours', '6 hours', '7 hours', 'A', 'Medium', 'Combined rate = 1/12+1/8 = 5/24. Time = 24/5 = 4.8 hours.'),

-- Q730
('Aptitude', 'A 15% increase in a number is 45. What is the original number?', '250', '300', '350', '400', 'B', 'Medium', '15% of number = 45. Number = 45/0.15 = 300.'),

-- Q731
('Aptitude', 'If the selling price is 135% of the cost price, what is the profit percentage?', '25%', '30%', '35%', '40%', 'C', 'Medium', 'If CP=100, SP=135. Profit = 35%.'),

-- Q732
('Aptitude', 'A student scores 40% and fails by 24 marks. Another scores 55% and gets 36 marks above passing marks. What are the maximum marks?', '300', '360', '400', '450', 'C', 'Medium', 'Difference in scores = 60 marks, representing 15% of total. Total = 60/0.15 = 400.'),

-- Q733
('Aptitude', 'A train 180 m long passes a 270 m platform in 18 seconds. What is its speed?', '72 km/h', '80 km/h', '90 km/h', '100 km/h', 'C', 'Medium', 'Total distance = 450 m. Speed = 450/18 = 25 m/s = 90 km/h.'),

-- Q734
('Aptitude', 'The sum of three consecutive integers is 99. What is the largest integer?', '32', '33', '34', '35', 'C', 'Medium', 'Numbers are 32,33,34. Largest = 34.'),

-- Q735
('Aptitude', 'A man invests ₹24,000 at 7.5% simple interest for 4 years. What is the interest?', '₹6,800', '₹7,200', '₹7,500', '₹8,000', 'B', 'Medium', 'SI = 24000×7.5×4/100 = ₹7,200.'),

-- Q736
('Aptitude', 'If 7x - 15 = 34, what is x?', '5', '6', '7', '8', 'C', 'Medium', '7x = 49, so x = 7.'),

-- Q737
('Aptitude', 'A can do a job in 15 days and B in 20 days. Together with C they finish it in 5 days. How many days would C alone take?', '10', '12', '15', '20', 'B', 'Medium', 'Combined rate = 1/5. A+B rate = 1/15+1/20 = 7/60. C rate = 12/60-7/60 = 5/60 = 1/12.'),

-- Q738
('Aptitude', 'A box contains 7 red, 5 blue and 3 green balls. What is the probability of selecting a green ball?', '1/5', '1/4', '1/3', '3/10', 'A', 'Medium', 'Total balls = 15. Green balls = 3. Probability = 3/15 = 1/5.'),

-- Q739
('Aptitude', 'How many ways can 8 people be arranged in a row?', '1,440', '2,880', '4,032', '40,320', 'D', 'Medium', '8! = 40,320.'),

-- Q740
('Aptitude', 'A number is divided by 6, 8 and 12 and leaves remainder 5 each time. What is the smallest such number greater than 5?', '29', '53', '77', '101', 'A', 'Medium', 'LCM of 6, 8 and 12 = 24. Required number = 24+5 = 29.'),

-- Q741
('Aptitude', 'What is 42.5% of 400?', '150', '160', '170', '180', 'C', 'Easy', '42.5% of 400 = 170.'),

-- Q742
('Aptitude', 'A number is decreased by 20% and becomes 480. What was the original number?', '550', '600', '650', '700', 'B', 'Medium', '80% of original = 480. Original = 480/0.8 = 600.'),

-- Q743
('Aptitude', 'The ratio of boys to girls is 4:3. If there are 56 boys, how many girls are there?', '36', '42', '48', '52', 'B', 'Easy', '4 parts = 56, one part = 14. Girls = 3×14 = 42.'),

-- Q744
('Aptitude', 'The average of 20, 30, 40, 50 and 60 is:', '35', '40', '45', '50', 'B', 'Easy', 'Sum = 200. Average = 40.'),

-- Q745
('Aptitude', 'An article costing ₹2,500 is sold for ₹3,000. What is the profit percentage?', '15%', '18%', '20%', '25%', 'C', 'Easy', 'Profit = ₹500. Profit percentage = 500/2500×100 = 20%.'),

-- Q746
('Aptitude', 'A car travels 360 km in 4.5 hours. What is its average speed?', '70 km/h', '75 km/h', '80 km/h', '85 km/h', 'C', 'Easy', 'Speed = 360/4.5 = 80 km/h.'),

-- Q747
('Aptitude', 'What is the LCM of 21 and 28?', '42', '56', '63', '84', 'D', 'Easy', 'LCM of 21 and 28 is 84.'),

-- Q748
('Aptitude', 'What is the HCF of 72 and 108?', '18', '24', '36', '54', 'C', 'Easy', 'HCF of 72 and 108 is 36.'),

-- Q749
('Aptitude', 'If 9x + 6 = 60, what is x?', '5', '6', '7', '8', 'B', 'Easy', '9x = 54, therefore x = 6.'),

-- Q750
('Aptitude', 'An item marked ₹2,400 is sold at a discount of 15%. What is the selling price?', '₹1,960', '₹2,040', '₹2,080', '₹2,120', 'B', 'Easy', 'Discount = 15% of ₹2,400 = ₹360. Selling price = ₹2,040.'),

-- Q751
('Aptitude', 'If 35% of a number is 84, what is the number?', '220', '240', '260', '280', 'B', 'Easy', 'Number = 84 / 0.35 = 240.'),

-- Q752
('Aptitude', 'A product marked at Rs. 800 is sold at a discount of 15%. What is the selling price?', 'Rs. 660', 'Rs. 680', 'Rs. 700', 'Rs. 720', 'B', 'Easy', 'Discount = 15% of 800 = 120, so selling price = 680.'),

-- Q753
('Aptitude', 'The ratio of boys to girls in a class is 5:3. If there are 40 boys, how many girls are there?', '20', '24', '28', '32', 'B', 'Easy', 'Girls = 40 x 3 / 5 = 24.'),

-- Q754
('Aptitude', 'The average of 8 numbers is 24. If one number 31 is removed, what is the new average?', '22', '23', '24', '25', 'B', 'Medium', 'Total = 8 x 24 = 192. New total = 161. New average = 161/7 = 23.'),

-- Q755
('Aptitude', 'A number is increased by 20% and then decreased by 20%. What is the net percentage change?', '0%', '2% decrease', '4% decrease', '4% increase', 'C', 'Easy', 'Net change = 20 - 20 - (20 x 20)/100 = -4%.'),

-- Q756
('Aptitude', 'If x + 1/x = 5, what is x^2 + 1/x^2?', '21', '23', '25', '27', 'B', 'Medium', 'Squaring gives x^2 + 1/x^2 + 2 = 25, so answer is 23.'),

-- Q757
('Aptitude', 'A sum of Rs. 5000 is invested at 8% simple interest for 3 years. Find the interest.', 'Rs. 1000', 'Rs. 1100', 'Rs. 1200', 'Rs. 1400', 'C', 'Easy', 'SI = 5000 x 8 x 3 / 100 = 1200.'),

-- Q758
('Aptitude', 'The HCF of 36 and 48 is:', '6', '8', '12', '16', 'C', 'Easy', 'The greatest common factor of 36 and 48 is 12.'),

-- Q759
('Aptitude', 'What is the smallest number divisible by 12, 18 and 24?', '48', '60', '72', '96', 'C', 'Medium', 'LCM of 12, 18 and 24 is 72.'),

-- Q760
('Aptitude', 'A train travels 360 km in 4.5 hours. What is its average speed?', '70 km/h', '75 km/h', '80 km/h', '90 km/h', 'C', 'Easy', 'Speed = 360/4.5 = 80 km/h.'),

-- Q761
('Aptitude', 'If 6 workers complete a task in 15 days, how many days will 10 workers take at the same rate?', '8 days', '9 days', '10 days', '12 days', 'B', 'Medium', 'Work = 6 x 15 = 90 worker-days. Days = 90/10 = 9.'),

-- Q762
('Aptitude', 'A shopkeeper gains 25% by selling an article for Rs. 500. What is the cost price?', 'Rs. 375', 'Rs. 400', 'Rs. 425', 'Rs. 450', 'B', 'Easy', 'CP = 500/1.25 = Rs. 400.'),

-- Q763
('Aptitude', 'The sum of two numbers is 84 and their difference is 18. What is the larger number?', '48', '51', '54', '57', 'B', 'Easy', 'Larger number = (84 + 18)/2 = 51.'),

-- Q764
('Aptitude', 'If 3x - 7 = 20, find x.', '7', '8', '9', '10', 'C', 'Easy', '3x = 27, therefore x = 9.'),

-- Q765
('Aptitude', 'A can complete a job in 12 days and B in 18 days. How long will they take together?', '6 days', '7.2 days', '8 days', '9 days', 'B', 'Medium', 'Combined rate = 1/12 + 1/18 = 5/36, so time = 36/5 = 7.2 days.'),

-- Q766
('Aptitude', 'A car covers half of a distance at 40 km/h and the other half at 60 km/h. What is its average speed?', '45 km/h', '48 km/h', '50 km/h', '52 km/h', 'B', 'Medium', 'For equal distances, average speed = 2ab/(a+b) = 48 km/h.'),

-- Q767
('Aptitude', 'What is 15% of 240 plus 20% of 150?', '56', '60', '66', '72', 'C', 'Easy', '15% of 240 = 36 and 20% of 150 = 30. Total = 66.'),

-- Q768
('Aptitude', 'If the perimeter of a square is 64 cm, what is its area?', '128 cm2', '192 cm2', '256 cm2', '320 cm2', 'C', 'Easy', 'Side = 64/4 = 16. Area = 16 x 16 = 256 cm2.'),

-- Q769
('Aptitude', 'The probability of getting an even number when a fair die is rolled is:', '1/6', '1/3', '1/2', '2/3', 'C', 'Easy', 'Even outcomes are 2, 4 and 6, so probability = 3/6 = 1/2.'),

-- Q770
('Aptitude', 'How many ways can 4 different books be arranged on a shelf?', '12', '16', '20', '24', 'D', 'Easy', 'Number of arrangements = 4! = 24.'),

-- Q771
('Aptitude', 'The compound interest on Rs. 10000 at 10% per annum for 2 years is:', 'Rs. 2000', 'Rs. 2100', 'Rs. 2200', 'Rs. 2400', 'B', 'Medium', 'Amount = 10000 x 1.1 x 1.1 = 12100. CI = 2100.'),

-- Q772
('Aptitude', 'A mixture contains milk and water in the ratio 7:3. If the total mixture is 50 litres, how much water is present?', '10 L', '12 L', '15 L', '18 L', 'C', 'Easy', 'Water = 3/10 x 50 = 15 litres.'),

-- Q773
('Aptitude', 'If 5 pencils cost Rs. 35, what is the cost of 12 pencils?', 'Rs. 72', 'Rs. 80', 'Rs. 84', 'Rs. 90', 'C', 'Easy', 'One pencil costs Rs. 7, so 12 cost Rs. 84.'),

-- Q774
('Aptitude', 'The average age of 5 students is 18 years. If a teacher aged 38 joins them, what is the new average?', '20 years', '21 years', '21 1/3 years', '22 years', 'C', 'Medium', 'Original total = 90. New total = 128. Average = 128/6 = 21 1/3.'),

-- Q775
('Aptitude', 'A number leaves remainder 5 when divided by 8. What remainder will its square leave when divided by 8?', '1', '3', '5', '7', 'A', 'Medium', 'The number is congruent to 5 mod 8. Its square is 25, which leaves remainder 1.'),

-- Q776
('Aptitude', 'If 2^x = 32, what is x?', '4', '5', '6', '8', 'B', 'Easy', '32 = 2^5, so x = 5.'),

-- Q777
('Aptitude', 'A and B invest Rs. 4000 and Rs. 6000 respectively for the same period. What is their profit ratio?', '2:3', '3:2', '4:5', '5:4', 'A', 'Easy', 'For equal time, profit ratio equals investment ratio = 4000:6000 = 2:3.'),

-- Q778
('Aptitude', 'A man spends 75% of his income. If he saves Rs. 5000, what is his income?', 'Rs. 15000', 'Rs. 18000', 'Rs. 20000', 'Rs. 25000', 'C', 'Easy', 'Savings are 25% of income. Income = 5000/0.25 = 20000.'),

-- Q779
('Aptitude', 'What is the next number in the series 2, 6, 12, 20, 30, ?', '40', '42', '44', '46', 'B', 'Medium', 'The differences are 4, 6, 8, 10, so next difference is 12. Answer = 42.'),

-- Q780
('Aptitude', 'If 7x + 5 = 54, find x.', '5', '6', '7', '8', 'C', 'Easy', '7x = 49, so x = 7.'),

-- Q781
('Aptitude', 'A pipe fills a tank in 8 hours. What fraction of the tank does it fill in 3 hours?', '1/2', '3/8', '5/8', '3/4', 'B', 'Easy', 'Rate = 1/8 tank per hour. In 3 hours = 3/8.'),

-- Q782
('Aptitude', 'Two numbers are in the ratio 4:7 and their sum is 99. What is the smaller number?', '32', '36', '40', '44', 'B', 'Easy', 'Total parts = 11. Smaller = 99 x 4/11 = 36.'),

-- Q783
('Aptitude', 'A discount of 20% on an article marked Rs. 1500 gives a selling price of:', 'Rs. 1100', 'Rs. 1150', 'Rs. 1200', 'Rs. 1250', 'C', 'Easy', 'Discount = 300, so selling price = 1200.'),

-- Q784
('Aptitude', 'What is the value of 25^2 - 15^2?', '300', '350', '400', '450', 'C', 'Easy', 'Using a2-b2 = (a-b)(a+b), answer = 10 x 40 = 400.'),

-- Q785
('Aptitude', 'If 40% of a number is 72, what is 75% of that number?', '120', '125', '135', '145', 'C', 'Medium', 'Number = 72/0.4 = 180. 75% of 180 = 135.'),

-- Q786
('Aptitude', 'A person travels 150 km at 50 km/h and returns at 75 km/h. What is the total travel time?', '4 hours', '4.5 hours', '5 hours', '5.5 hours', 'C', 'Easy', 'Time = 150/50 + 150/75 = 3 + 2 = 5 hours.'),

-- Q787
('Aptitude', 'The LCM of 16, 24 and 40 is:', '120', '160', '240', '320', 'C', 'Medium', 'Prime factors give LCM = 2^4 x 3 x 5 = 240.'),

-- Q788
('Aptitude', 'If a:b = 3:4 and b:c = 8:9, then a:c is:', '2:3', '3:4', '4:5', '8:9', 'A', 'Medium', 'Make b common: 3:4 = 6:8. Thus a:c = 6:9 = 2:3.'),

-- Q789
('Aptitude', 'A number is divisible by both 6 and 8. What is the smallest possible positive number?', '12', '18', '24', '48', 'C', 'Easy', 'LCM of 6 and 8 is 24.'),

-- Q790
('Aptitude', 'The sum of the first 20 natural numbers is:', '200', '210', '220', '240', 'B', 'Easy', 'Sum = 20 x 21 / 2 = 210.'),

-- Q791
('Aptitude', 'A father is 3 times as old as his son. Their total age is 56 years. What is the son age?', '12', '14', '16', '18', 'B', 'Easy', 'Let son age be x. Then 4x = 56, so x = 14.'),

-- Q792
('Aptitude', 'If the selling price is Rs. 720 after a 10% discount, what was the marked price?', 'Rs. 760', 'Rs. 780', 'Rs. 800', 'Rs. 820', 'C', 'Easy', '90% of marked price = 720, so marked price = 800.'),

-- Q793
('Aptitude', 'A can do a job in 20 days and B can do it in 30 days. What fraction of the job do they complete in one day together?', '1/10', '1/12', '1/15', '1/18', 'B', 'Medium', 'Combined rate = 1/20 + 1/30 = 1/12.'),

-- Q794
('Aptitude', 'What is the remainder when 1234 is divided by 9?', '1', '2', '3', '4', 'A', 'Easy', 'Digit sum is 10, and 10 divided by 9 leaves remainder 1.'),

-- Q795
('Aptitude', 'A shopkeeper marks an item 40% above cost price and gives a 10% discount. What is the profit percentage?', '24%', '25%', '26%', '28%', 'C', 'Medium', 'Assume CP 100. MP = 140 and SP = 126. Profit = 26%.'),

-- Q796
('Aptitude', 'The average of 6 consecutive integers is 35. What is the largest integer?', '37', '38', '39', '40', 'B', 'Medium', 'For 6 consecutive integers centered between 35 and 36, the numbers are 33 to 38. Largest = 38.'),

-- Q797
('Aptitude', 'If 3 workers produce 90 units in 5 hours, how many units will 5 workers produce in 4 hours at the same rate?', '100', '110', '120', '130', 'C', 'Medium', 'Output per worker-hour = 90/15 = 6. Thus 5 x 4 x 6 = 120.'),

-- Q798
('Aptitude', 'What is the value of 0.25 x 0.4?', '0.01', '0.1', '0.15', '0.2', 'B', 'Easy', '0.25 x 0.4 = 0.10.'),

-- Q799
('Aptitude', 'A bag contains 5 red and 3 blue balls. What is the probability of drawing a red ball?', '3/8', '5/8', '1/2', '2/3', 'B', 'Easy', 'There are 5 favorable outcomes out of 8 total balls.'),

-- Q800
('Aptitude', 'How many diagonals does a hexagon have?', '6', '9', '12', '15', 'B', 'Medium', 'Number of diagonals = n(n-3)/2 = 6 x 3 / 2 = 9.'),

-- Q801
('Aptitude', 'If the ratio of two numbers is 7:11 and their difference is 32, what is the smaller number?', '48', '56', '64', '72', 'B', 'Easy', 'Difference is 4 parts = 32, so one part = 8. Smaller = 7 x 8 = 56.'),

-- Q802
('Aptitude', 'A sum becomes Rs. 6600 from Rs. 6000 in 2 years at simple interest. What is the annual rate?', '4%', '5%', '6%', '8%', 'B', 'Medium', 'Interest = 600. Rate = 600 x 100/(6000 x 2) = 5%.'),

-- Q803
('Aptitude', 'If 12 men complete a task in 18 days, how many men are required to complete it in 12 days?', '16', '18', '20', '24', 'B', 'Easy', 'Men x days is constant. Required men = 12 x 18 / 12 = 18.'),

-- Q804
('Aptitude', 'What is the square root of 2025?', '35', '40', '45', '50', 'C', 'Easy', '45 x 45 = 2025.'),

-- Q805
('Aptitude', 'A train 180 m long crosses a pole in 9 seconds. What is its speed?', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Medium', 'Speed = 180/9 = 20 m/s = 72 km/h.'),

-- Q806
('Aptitude', 'If 2/5 of a number is 48, what is 3/4 of the number?', '72', '80', '90', '96', 'C', 'Medium', 'Number = 48 x 5/2 = 120. Three-fourths = 90.'),

-- Q807
('Aptitude', 'The compound interest on Rs. 5000 at 20% per annum for 2 years is:', 'Rs. 2000', 'Rs. 2100', 'Rs. 2200', 'Rs. 2400', 'B', 'Medium', 'Amount = 5000 x 1.2^2 = 7200. CI = 2200.'),

-- Q808
('Aptitude', 'If 5x - 3 = 2x + 15, find x.', '5', '6', '7', '8', 'B', 'Easy', '3x = 18, so x = 6.'),

-- Q809
('Aptitude', 'A man buys an article for Rs. 800 and sells it for Rs. 920. What is the profit percentage?', '10%', '12%', '15%', '20%', 'C', 'Easy', 'Profit = 120. Profit percentage = 120/800 x 100 = 15%.'),

-- Q810
('Aptitude', 'The area of a rectangle is 240 cm2 and its length is 15 cm. What is its breadth?', '12 cm', '14 cm', '16 cm', '18 cm', 'C', 'Easy', 'Breadth = 240/15 = 16 cm.'),

-- Q811
('Aptitude', 'A clock gains 5 minutes every hour. How much time will it gain in 12 hours?', '30 minutes', '45 minutes', '60 minutes', '75 minutes', 'C', 'Easy', 'Gain = 5 x 12 = 60 minutes.'),

-- Q812
('Aptitude', 'What is the next term in the series 3, 9, 27, 81, ?', '162', '216', '243', '324', 'C', 'Easy', 'Each term is multiplied by 3. Next = 81 x 3 = 243.'),

-- Q813
('Aptitude', 'A probability of 0.25 is equivalent to:', '1/2', '1/3', '1/4', '3/4', 'C', 'Easy', '0.25 = 25/100 = 1/4.'),

-- Q814
('Aptitude', 'How many 3-digit numbers can be formed using 1, 2, 3 and 4 without repetition?', '12', '18', '24', '36', 'C', 'Easy', 'Number = 4P3 = 4 x 3 x 2 = 24.'),

-- Q815
('Aptitude', 'A sum of Rs. 8000 earns Rs. 1920 simple interest in 3 years. What is the rate?', '6%', '8%', '10%', '12%', 'B', 'Medium', 'Rate = 1920 x 100/(8000 x 3) = 8%.'),

-- Q816
('Aptitude', 'The average of 10 numbers is 50. If each number is increased by 5, what is the new average?', '50', '52', '55', '60', 'C', 'Easy', 'Increasing every value by 5 increases the average by 5.'),

-- Q817
('Aptitude', 'If 8 machines produce 640 units in 4 hours, how many units will 5 machines produce in 6 hours?', '500', '550', '600', '650', 'C', 'Medium', 'Rate = 640/(8 x 4) = 20 units per machine-hour. Output = 5 x 6 x 20 = 600.'),

-- Q818
('Aptitude', 'The ratio of income to expenditure is 5:4. If savings are Rs. 3000, what is the income?', 'Rs. 12000', 'Rs. 15000', 'Rs. 18000', 'Rs. 20000', 'B', 'Medium', 'Savings are 1 part = Rs. 3000. Income = 5 parts = Rs. 15000.'),

-- Q819
('Aptitude', 'What is the smallest prime number greater than 50?', '51', '53', '55', '57', 'B', 'Easy', '53 is prime and is the first prime greater than 50.'),

-- Q820
('Aptitude', 'If x:y = 5:8 and y:z = 4:7, then x:z is:', '5:14', '5:12', '10:21', '20:28', 'A', 'Medium', 'Make y common: 5:8 becomes 5:8 and 4:7 becomes 8:14. Thus x:z = 5:14.'),

-- Q821
('Aptitude', 'A can finish a task in 15 days. B is 50% more efficient than A. How many days will B take?', '8 days', '10 days', '12 days', '15 days', 'B', 'Medium', 'B efficiency = 1.5 times A, so time = 15/1.5 = 10 days.'),

-- Q822
('Aptitude', 'A train moving at 54 km/h crosses a 150 m platform in 20 seconds. What is the length of the train?', '120 m', '150 m', '180 m', '200 m', 'B', 'Medium', '54 km/h = 15 m/s. Total distance = 300 m. Train length = 300 - 150 = 150 m.'),

-- Q823
('Aptitude', 'If a number is increased by 30 and becomes 150% of its original value, what is the number?', '50', '60', '75', '90', 'B', 'Medium', 'Increase is 50% of original. Thus 30 = 0.5x, so x = 60.'),

-- Q824
('Aptitude', 'What is the value of 7^0 + 5^0?', '0', '1', '2', '12', 'C', 'Easy', 'Every non-zero number raised to power 0 equals 1. Total = 2.'),

-- Q825
('Aptitude', 'A shopkeeper gives successive discounts of 10% and 20%. What is the equivalent discount?', '28%', '30%', '32%', '35%', 'A', 'Medium', 'Equivalent discount = 10 + 20 - 10x20/100 = 28%.'),

-- Q826
('Aptitude', 'The sum of three consecutive odd numbers is 75. What is the largest number?', '23', '25', '27', '29', 'C', 'Easy', 'Numbers are 23, 25 and 27. Largest = 27.'),

-- Q827
('Aptitude', 'A person invests Rs. 12000 at 10% simple interest. What is the amount after 4 years?', 'Rs. 15600', 'Rs. 16800', 'Rs. 17200', 'Rs. 18000', 'B', 'Medium', 'SI = 12000 x 10 x 4/100 = 4800. Amount = 16800.'),

-- Q828
('Aptitude', 'If 4 pens and 3 notebooks cost Rs. 170, while 2 pens and 3 notebooks cost Rs. 110, what is the cost of one pen?', 'Rs. 20', 'Rs. 25', 'Rs. 30', 'Rs. 35', 'C', 'Medium', 'Subtracting equations gives 2 pens = 60, so one pen = Rs. 30.'),

-- Q829
('Aptitude', 'What is the remainder when 2^10 is divided by 7?', '1', '2', '4', '6', 'B', 'Medium', '2^10 = 1024, and 1024 divided by 7 leaves remainder 2.'),

-- Q830
('Aptitude', 'If the radius of a circle is doubled, its area becomes:', '2 times', '3 times', '4 times', '8 times', 'C', 'Easy', 'Area is proportional to square of radius. Doubling radius makes area 4 times.'),

-- Q831
('Aptitude', 'The average of 4 numbers is 25. If three numbers are 18, 27 and 31, what is the fourth number?', '20', '22', '24', '26', 'C', 'Easy', 'Total = 100. Fourth number = 100 - 76 = 24.'),

-- Q832
('Aptitude', 'A man covers 2/3 of a distance at 30 km/h and the remaining distance at 20 km/h. What is his average speed?', '24 km/h', '25 km/h', '26 km/h', '36 km/h', 'D', 'Hard', 'For distance D, time = 2D/90 + D/60 = D/36, so average speed = 36 km/h.'),

-- Q833
('Aptitude', 'If 20% of x equals 30% of 80, what is x?', '100', '120', '140', '160', 'B', 'Easy', '0.2x = 24, so x = 120.'),

-- Q834
('Aptitude', 'A can do a job in 10 days and B in 15 days. If they work together for 3 days, what fraction of the job remains?', '1/5', '1/2', '3/5', '4/5', 'B', 'Medium', 'Combined rate = 1/6. In 3 days they complete 1/2, so 1/2 remains.'),

-- Q835
('Aptitude', 'What is the median of 5, 8, 12, 15 and 20?', '8', '10', '12', '15', 'C', 'Easy', 'The middle value in the ordered list is 12.'),

-- Q836
('Aptitude', 'If the cost price is Rs. 750 and loss is 12%, what is the selling price?', 'Rs. 650', 'Rs. 660', 'Rs. 675', 'Rs. 690', 'B', 'Easy', 'SP = 750 x 88/100 = 660.'),

-- Q837
('Aptitude', 'A boat travels 30 km downstream in 2 hours. If the speed of the stream is 3 km/h, what is the speed of the boat in still water?', '10 km/h', '12 km/h', '15 km/h', '18 km/h', 'B', 'Medium', 'Downstream speed = 15 km/h. Boat speed = 15 - 3 = 12 km/h.'),

-- Q838
('Aptitude', 'What is 18% of 250?', '35', '40', '45', '50', 'C', 'Easy', '18% of 250 = 45.'),

-- Q839
('Aptitude', 'The product of two consecutive positive integers is 132. What are the integers?', '10 and 11', '11 and 12', '12 and 13', '13 and 14', 'B', 'Medium', '11 x 12 = 132.'),

-- Q840
('Aptitude', 'A number divided by 13 gives quotient 17 and remainder 5. What is the number?', '216', '221', '226', '231', 'C', 'Easy', 'Number = 13 x 17 + 5 = 226.'),

-- Q841
('Aptitude', 'If 6% of a number is 42, what is 14% of the number?', '84', '91', '98', '105', 'C', 'Medium', 'Number = 42/0.06 = 700. 14% = 98.'),

-- Q842
('Aptitude', 'A sum is divided among A, B and C in the ratio 2:3:5. If C gets Rs. 4500, what is the total sum?', 'Rs. 7500', 'Rs. 9000', 'Rs. 10000', 'Rs. 12000', 'B', 'Easy', '5 parts = 4500, so 1 part = 900 and total 10 parts = 9000.'),

-- Q843
('Aptitude', 'If 10% of a number is added to the number, the result is 330. What is the number?', '280', '300', '320', '330', 'B', 'Easy', '1.1x = 330, so x = 300.'),

-- Q844
('Aptitude', 'A pipe fills a tank in 12 hours and another pipe fills it in 18 hours. How long will they take together?', '6 hours', '7.2 hours', '8 hours', '9 hours', 'B', 'Medium', 'Combined rate = 1/12 + 1/18 = 5/36, so time = 7.2 hours.'),

-- Q845
('Aptitude', 'How many ways can 5 people sit in a row?', '60', '100', '120', '150', 'C', 'Easy', 'Arrangements = 5! = 120.'),

-- Q846
('Aptitude', 'The probability of getting at least one head in two tosses of a fair coin is:', '1/4', '1/2', '3/4', '1', 'C', 'Medium', 'Only TT has no head. Probability = 1 - 1/4 = 3/4.'),

-- Q847
('Aptitude', 'If a:b = 2:5 and b:c = 10:3, then a:c is:', '2:3', '4:3', '5:3', '10:3', 'B', 'Medium', 'Make b common: 2:5 becomes 4:10. Therefore a:c = 4:3.'),

-- Q848
('Aptitude', 'The perimeter of a rectangle is 50 cm and its length is 15 cm. What is its breadth?', '8 cm', '10 cm', '12 cm', '15 cm', 'B', 'Easy', '2(L+B)=50, so L+B=25 and B=10.'),

-- Q849
('Aptitude', 'What is the greatest 3-digit number divisible by 17?', '986', '989', '994', '999', 'A', 'Medium', '17 × 58 = 986 and 17 × 59 = 1003, so the greatest 3-digit multiple is 986.'),

-- Q850
('Aptitude', 'A number is 25% less than 200. What is the number?', '125', '140', '150', '175', 'C', 'Easy', '25% of 200 is 50. Therefore number = 150.'),

-- Q851
('Aptitude', 'The average of 7 consecutive integers is 42. What is the smallest integer?', '38', '39', '40', '41', 'B', 'Easy', 'Seven consecutive integers centered at 42 range from 39 to 45.'),

-- Q852
('Aptitude', 'If 3/8 of a number is 45, what is the number?', '100', '110', '120', '135', 'C', 'Easy', 'Number = 45 x 8/3 = 120.'),

-- Q853
('Aptitude', 'A person buys a laptop for Rs. 50000 and pays 8% GST. What is the total amount paid?', 'Rs. 52000', 'Rs. 53000', 'Rs. 54000', 'Rs. 55000', 'C', 'Easy', 'GST = 4000, total = Rs. 54000.'),

-- Q854
('Aptitude', 'If x^2 - 9 = 0 and x is positive, find x.', '2', '3', '4', '9', 'B', 'Easy', 'x^2 = 9, so positive x = 3.'),

-- Q855
('Aptitude', 'Two numbers have HCF 6 and LCM 180. If one number is 30, what is the other?', '24', '30', '36', '42', 'C', 'Medium', 'Product of numbers = HCF x LCM = 1080. Other = 1080/30 = 36.'),

-- Q856
('Aptitude', 'A train covers 600 km in 8 hours including a 30-minute stop. What is its running speed?', '75 km/h', '80 km/h', '85 km/h', '90 km/h', 'B', 'Medium', 'Running time = 7.5 hours. Speed = 600/7.5 = 80 km/h.'),

-- Q857
('Aptitude', 'A man spends 30% of his income on rent and 20% on food. If he saves Rs. 10000, what is his income?', 'Rs. 15000', 'Rs. 18000', 'Rs. 20000', 'Rs. 25000', 'C', 'Easy', 'Savings are 50% of income. Income = 10000/0.5 = 20000.'),

-- Q858
('Aptitude', 'What is the value of 15C2?', '90', '105', '120', '135', 'B', 'Medium', '15C2 = 15 x 14 / 2 = 105.'),

-- Q859
('Aptitude', 'If a number is divided by 5, the remainder is 3. What is the remainder when twice the number is divided by 5?', '1', '2', '3', '4', 'A', 'Easy', 'Twice the remainder is 6, which leaves remainder 1.'),

-- Q860
('Aptitude', 'A sum of Rs. 4000 is invested at 5% compound interest annually for 2 years. What is the amount?', 'Rs. 4200', 'Rs. 4410', 'Rs. 4500', 'Rs. 4600', 'B', 'Medium', 'Amount = 4000 x 1.05^2 = Rs. 4410.'),

-- Q861
('Aptitude', 'If 8x + 4 = 60, find x.', '6', '7', '8', '9', 'B', 'Easy', '8x = 56, so x = 7.'),

-- Q862
('Aptitude', 'A can complete a task in 24 days and B in 36 days. Working together, they complete it in:', '12 days', '14.4 days', '16 days', '18 days', 'B', 'Medium', 'Combined rate = 1/24 + 1/36 = 5/72. Time = 72/5 = 14.4 days.'),

-- Q863
('Aptitude', 'The price of an item rises from Rs. 400 to Rs. 460. What is the percentage increase?', '10%', '12%', '15%', '20%', 'C', 'Easy', 'Increase = 60. Percentage = 60/400 x 100 = 15%.'),

-- Q864
('Aptitude', 'What is the sum of the first 15 odd natural numbers?', '200', '225', '240', '250', 'B', 'Easy', 'Sum of first n odd numbers = n^2 = 225.'),

-- Q865
('Aptitude', 'A car travels 240 km in 4 hours. If its speed is increased by 20%, how much time will it take to cover 240 km?', '3 hours', '3 hours 20 minutes', '3 hours 30 minutes', '4 hours', 'B', 'Medium', 'New speed = 72 km/h. Time = 240/72 = 3 1/3 hours = 3 hours 20 minutes.'),

-- Q866
('Aptitude', 'The ratio of red to blue balls is 3:5. If there are 40 blue balls, how many red balls are there?', '20', '24', '28', '30', 'B', 'Easy', 'Red = 40 x 3/5 = 24.'),

-- Q867
('Aptitude', 'If 4x - 5 = 3x + 7, find x.', '10', '11', '12', '13', 'C', 'Easy', 'x = 12.'),

-- Q868
('Aptitude', 'A shopkeeper gains 20% on an item. If the cost price is Rs. 750, what is the selling price?', 'Rs. 850', 'Rs. 875', 'Rs. 900', 'Rs. 925', 'C', 'Easy', 'SP = 750 x 1.20 = 900.'),

-- Q869
('Aptitude', 'The probability of drawing an ace from a standard deck of 52 cards is:', '1/13', '1/12', '4/13', '1/4', 'A', 'Easy', 'There are 4 aces among 52 cards. Probability = 4/52 = 1/13.'),

-- Q870
('Aptitude', 'How many combinations of 3 people can be selected from 8 people?', '24', '36', '48', '56', 'D', 'Medium', '8C3 = 8 x 7 x 6 / 6 = 56.'),

-- Q871
('Aptitude', 'If the average of x and 20 is 35, what is x?', '40', '45', '50', '55', 'C', 'Easy', 'x + 20 = 70, so x = 50.'),

-- Q872
('Aptitude', 'A pipe fills a tank in 10 hours while a leak empties it in 15 hours. How long will the tank take to fill when both are open?', '20 hours', '25 hours', '30 hours', '35 hours', 'C', 'Medium', 'Net rate = 1/10 - 1/15 = 1/30. Time = 30 hours.'),

-- Q873
('Aptitude', 'If 12% of a number is 48, what is 25% of the number?', '80', '90', '100', '120', 'C', 'Medium', 'Number = 400. 25% = 100.'),

-- Q874
('Aptitude', 'What is the value of 2 + 4 + 6 + ... + 20?', '100', '110', '120', '130', 'B', 'Easy', 'There are 10 even numbers from 2 to 20. Sum = 10/2 × (2+20) = 110.'),

-- Q875
('Aptitude', 'A sum of Rs. 6000 is divided between A and B in ratio 2:3. How much does B receive?', 'Rs. 2400', 'Rs. 3000', 'Rs. 3600', 'Rs. 4000', 'C', 'Easy', 'B gets 3/5 of 6000 = Rs. 3600.'),

-- Q876
('Aptitude', 'If 9 men can complete a job in 20 days, how many days will 12 men take?', '12 days', '15 days', '16 days', '18 days', 'B', 'Easy', 'Days = 9 x 20 / 12 = 15.'),

-- Q877
('Aptitude', 'What is the next number in the series 5, 10, 20, 40, 80, ?', '120', '140', '160', '180', 'C', 'Easy', 'Each term is doubled. Next = 160.'),

-- Q878
('Aptitude', 'A product is sold for Rs. 960 at a profit of 20%. What is the cost price?', 'Rs. 760', 'Rs. 800', 'Rs. 820', 'Rs. 840', 'B', 'Easy', 'CP = 960/1.2 = Rs. 800.'),

-- Q879
('Aptitude', 'The area of a triangle with base 12 cm and height 10 cm is:', '50 cm2', '60 cm2', '72 cm2', '120 cm2', 'B', 'Easy', 'Area = 1/2 x 12 x 10 = 60 cm2.'),

-- Q880
('Aptitude', 'What is the remainder when 999 is divided by 8?', '5', '6', '7', '8', 'C', 'Easy', '8 x 124 = 992, so remainder = 7.'),

-- Q881
('Aptitude', 'A and B together have Rs. 9000. A has twice as much as B. How much does A have?', 'Rs. 3000', 'Rs. 4500', 'Rs. 6000', 'Rs. 6500', 'C', 'Easy', 'A:B = 2:1. A gets 2/3 of 9000 = 6000.'),

-- Q882
('Aptitude', 'A train 120 m long crosses a pole in 6 seconds. Its speed is:', '60 km/h', '72 km/h', '80 km/h', '90 km/h', 'B', 'Easy', 'Speed = 120/6 = 20 m/s = 72 km/h.'),

-- Q883
('Aptitude', 'The simple interest on Rs. 2500 at 12% for 2 years is:', 'Rs. 500', 'Rs. 600', 'Rs. 700', 'Rs. 800', 'B', 'Easy', 'SI = 2500 x 12 x 2/100 = 600.'),

-- Q884
('Aptitude', 'If 5x = 2x + 21, then x equals:', '5', '6', '7', '8', 'C', 'Easy', '3x = 21, so x = 7.'),

-- Q885
('Aptitude', 'A bag contains 4 green, 5 red and 1 blue ball. Probability of drawing a red ball is:', '1/10', '2/5', '1/2', '3/5', 'C', 'Easy', 'There are 5 red balls out of 10 total, so probability = 1/2.'),

-- Q886
('Aptitude', 'The average of 3 numbers is 28. If two numbers are 20 and 35, the third number is:', '25', '29', '30', '32', 'B', 'Easy', 'Total = 84. Third number = 84 - 55 = 29.'),

-- Q887
('Aptitude', 'A boat speed in still water is 12 km/h and stream speed is 3 km/h. Its downstream speed is:', '9 km/h', '12 km/h', '15 km/h', '18 km/h', 'C', 'Easy', 'Downstream speed = 12 + 3 = 15 km/h.'),

-- Q888
('Aptitude', 'What is 30% of 30% of 500?', '30', '40', '45', '50', 'C', 'Medium', '30% of 500 = 150. 30% of 150 = 45.'),

-- Q889
('Aptitude', 'If 2/3 of a number is 80, what is 5/6 of the number?', '90', '100', '110', '120', 'B', 'Medium', 'Number = 120. Five-sixths = 100.'),

-- Q890
('Aptitude', 'What is the least number which when divided by 6, 8 and 12 leaves remainder 2 in each case?', '24', '26', '48', '50', 'B', 'Medium', 'LCM is 24. Required number = 24 + 2 = 26.'),

-- Q891
('Aptitude', 'A person earns Rs. 24000 per month and spends 80%. How much does he save?', 'Rs. 4000', 'Rs. 4800', 'Rs. 5000', 'Rs. 6000', 'B', 'Easy', 'Savings = 20% of 24000 = 4800.'),

-- Q892
('Aptitude', 'The ratio of two numbers is 3:7. If the smaller number is 27, the larger number is:', '54', '63', '72', '81', 'B', 'Easy', 'One part = 27/3 = 9. Larger = 7 x 9 = 63.'),

-- Q893
('Aptitude', 'What is the value of 12^2 + 5^2?', '144', '156', '169', '194', 'C', 'Easy', '144 + 25 = 169.'),

-- Q894
('Aptitude', 'A can complete a job in 8 days and B in 24 days. Together they can complete it in:', '4 days', '6 days', '8 days', '12 days', 'B', 'Medium', 'Combined rate = 1/8 + 1/24 = 1/6. Time = 6 days.'),

-- Q895
('Aptitude', 'A number is increased from 250 to 300. What is the percentage increase?', '15%', '20%', '25%', '30%', 'B', 'Easy', 'Increase = 50. Percentage = 50/250 x 100 = 20%.'),

-- Q896
('Aptitude', 'What is the area of a circle with radius 7 cm using pi = 22/7?', '144 cm2', '154 cm2', '164 cm2', '176 cm2', 'B', 'Easy', 'Area = 22/7 x 7 x 7 = 154 cm2.'),

-- Q897
('Aptitude', 'If 7 workers complete 140 units in 4 days, how many units will 10 workers complete in 6 days?', '240', '280', '300', '320', 'C', 'Medium', 'Rate = 140/(7 x 4) = 5 units per worker-day. Output = 10 x 6 x 5 = 300.'),

-- Q898
('Aptitude', 'The compound interest on Rs. 1000 at 10% for 3 years is:', 'Rs. 300', 'Rs. 331', 'Rs. 340', 'Rs. 350', 'B', 'Medium', 'Amount = 1000 x 1.1^3 = 1331. CI = 331.'),

-- Q899
('Aptitude', 'If 4x + 9 = 29, find x.', '4', '5', '6', '7', 'B', 'Easy', '4x = 20, so x = 5.'),

-- Q900
('Aptitude', 'How many factors does the number 36 have?', '6', '8', '9', '10', 'C', 'Medium', '36 = 2^2 × 3^2, so number of factors = (2+1)(2+1) = 9.'),

-- Q901
('Aptitude', 'If 25% of x is 60, what is x?', '180', '200', '240', '260', 'C', 'Easy', 'x = 60/0.25 = 240.'),

-- Q902
('Aptitude', 'A man travels 90 km in 1.5 hours. What is his speed?', '45 km/h', '50 km/h', '60 km/h', '75 km/h', 'C', 'Easy', 'Speed = 90/1.5 = 60 km/h.'),

-- Q903
('Aptitude', 'If the cost price of an article is Rs. 600 and the profit is 15%, find the selling price.', 'Rs. 660', 'Rs. 680', 'Rs. 690', 'Rs. 700', 'C', 'Easy', 'SP = 600 x 1.15 = 690.'),

-- Q904
('Aptitude', 'The sum of angles of a triangle is:', '90 degrees', '180 degrees', '270 degrees', '360 degrees', 'B', 'Easy', 'The interior angles of a triangle sum to 180 degrees.'),

-- Q905
('Aptitude', 'If 10 machines complete a job in 12 hours, how long will 15 machines take?', '6 hours', '8 hours', '10 hours', '12 hours', 'B', 'Easy', 'Machines x hours = constant. Time = 10 x 12 / 15 = 8 hours.'),

-- Q906
('Aptitude', 'A sum of Rs. 7000 earns Rs. 1400 simple interest in 4 years. What is the rate?', '4%', '5%', '6%', '7%', 'B', 'Easy', 'Rate = 1400 x 100/(7000 x 4) = 5%.'),

-- Q907
('Aptitude', 'What is the next term in the series 1, 4, 9, 16, 25, ?', '30', '32', '36', '49', 'C', 'Easy', 'These are squares of 1, 2, 3, 4 and 5. Next is 6^2 = 36.'),

-- Q908
('Aptitude', 'If 3 pens cost Rs. 45, how much will 8 pens cost?', 'Rs. 100', 'Rs. 110', 'Rs. 120', 'Rs. 130', 'C', 'Easy', 'One pen costs Rs. 15. Eight cost Rs. 120.'),

-- Q909
('Aptitude', 'A father and son together are 60 years old. Father is four times the son age. What is the son age?', '10', '12', '15', '20', 'B', 'Easy', '5x = 60, so son age = 12.'),

-- Q910
('Aptitude', 'What is the probability of getting a number greater than 4 on a fair die?', '1/6', '1/3', '1/2', '2/3', 'B', 'Easy', 'Favorable outcomes are 5 and 6, so probability = 2/6 = 1/3.'),

-- Q911
('Aptitude', 'How many ways can 6 people be arranged in a row?', '360', '540', '720', '840', 'C', 'Easy', '6! = 720.'),

-- Q912
('Aptitude', 'If x/5 = 7, what is x?', '25', '30', '35', '40', 'C', 'Easy', 'x = 7 x 5 = 35.'),

-- Q913
('Aptitude', 'A product marked Rs. 2000 is sold after a 25% discount. What is the selling price?', 'Rs. 1400', 'Rs. 1500', 'Rs. 1600', 'Rs. 1750', 'B', 'Easy', 'Selling price = 75% of 2000 = 1500.'),

-- Q914
('Aptitude', 'The HCF of 72 and 120 is:', '12', '18', '24', '36', 'C', 'Easy', 'The greatest common factor is 24.'),

-- Q915
('Aptitude', 'If a:b = 4:9 and a = 20, find b.', '36', '40', '45', '50', 'C', 'Easy', 'One ratio part = 20/4 = 5. b = 9 x 5 = 45.'),

-- Q916
('Aptitude', 'A train moving at 72 km/h covers how many metres in 10 seconds?', '180 m', '200 m', '220 m', '240 m', 'B', 'Easy', '72 km/h = 20 m/s. In 10 seconds = 200 m.'),

-- Q917
('Aptitude', 'What is 2.5% of 800?', '15', '20', '25', '30', 'B', 'Easy', '2.5% of 800 = 20.'),

-- Q918
('Aptitude', 'The average of 5 numbers is 30. If one number is 50, what is the average of the remaining four?', '20', '25', '30', '35', 'B', 'Medium', 'Total = 150. Remaining total = 100. Average = 25.'),

-- Q919
('Aptitude', 'A pipe fills a tank in 6 hours. How much of the tank is filled in 45 minutes?', '1/6', '1/8', '1/10', '1/12', 'B', 'Medium', '45 minutes = 3/4 hour. Filled = 3/4 x 1/6 = 1/8.'),

-- Q920
('Aptitude', 'If 9x - 4 = 41, find x.', '4', '5', '6', '7', 'B', 'Easy', '9x = 45, so x = 5.'),

-- Q921
('Aptitude', 'What is the simple interest on Rs. 9000 at 6% for 2 years?', 'Rs. 900', 'Rs. 1080', 'Rs. 1200', 'Rs. 1260', 'B', 'Easy', 'SI = 9000 x 6 x 2 /100 = 1080.'),

-- Q922
('Aptitude', 'A shopkeeper sells an item at 10% loss for Rs. 540. What is its cost price?', 'Rs. 580', 'Rs. 600', 'Rs. 620', 'Rs. 650', 'B', 'Easy', '90% of CP = 540, so CP = 600.'),

-- Q923
('Aptitude', 'The sum of two consecutive even numbers is 54. What is the smaller number?', '24', '26', '28', '30', 'B', 'Easy', 'Numbers are 26 and 28.'),

-- Q924
('Aptitude', 'If 15 workers take 16 days to finish a task, how many worker-days are required?', '180', '200', '240', '260', 'C', 'Easy', 'Worker-days = 15 x 16 = 240.'),

-- Q925
('Aptitude', 'What is the value of 3^4?', '27', '64', '81', '108', 'C', 'Easy', '3 x 3 x 3 x 3 = 81.'),

-- Q926
('Aptitude', 'If the selling price is Rs. 880 after a profit of 10%, what is the cost price?', 'Rs. 750', 'Rs. 800', 'Rs. 820', 'Rs. 850', 'B', 'Easy', 'CP = 880/1.1 = 800.'),

-- Q927
('Aptitude', 'A man can row 12 km downstream in 1 hour and upstream in 2 hours. What is the speed of the stream?', '2 km/h', '3 km/h', '4 km/h', '6 km/h', 'B', 'Medium', 'Downstream speed = 12 and upstream = 6. Stream speed = (12-6)/2 = 3 km/h.'),

-- Q928
('Aptitude', 'What is the next number in the series 2, 5, 10, 17, 26, ?', '35', '36', '37', '38', 'C', 'Medium', 'Differences are 3, 5, 7, 9. Next difference = 11, giving 37.'),

-- Q929
('Aptitude', 'If 40% of the students are girls and there are 24 girls, what is the total number of students?', '50', '60', '70', '80', 'B', 'Easy', 'Total = 24/0.4 = 60.'),

-- Q930
('Aptitude', 'The perimeter of a square is 100 cm. What is its area?', '400 cm2', '625 cm2', '1000 cm2', '2500 cm2', 'B', 'Easy', 'Side = 25 cm. Area = 625 cm2.'),

-- Q931
('Aptitude', 'A can complete a job in 18 days and B in 9 days. Together they take:', '4 days', '6 days', '8 days', '9 days', 'B', 'Easy', 'Combined rate = 1/18 + 1/9 = 1/6. Time = 6 days.'),

-- Q932
('Aptitude', 'What is the probability of getting two heads when two fair coins are tossed?', '1/4', '1/3', '1/2', '3/4', 'A', 'Easy', 'Only HH is favorable among four equally likely outcomes.'),

-- Q933
('Aptitude', 'What is 20% of 450?', '80', '90', '100', '110', 'B', 'Easy', '20% of 450 = 90.'),

-- Q934
('Aptitude', 'The LCM of 15 and 20 is:', '30', '45', '60', '75', 'C', 'Easy', 'LCM = 60.'),

-- Q935
('Aptitude', 'If 6 notebooks cost Rs. 180, what is the cost of 15 notebooks?', 'Rs. 400', 'Rs. 450', 'Rs. 480', 'Rs. 500', 'B', 'Easy', 'One notebook costs Rs. 30. Fifteen cost Rs. 450.'),

-- Q936
('Aptitude', 'A person increases his savings from Rs. 4000 to Rs. 5000. What is the percentage increase?', '20%', '25%', '30%', '35%', 'B', 'Easy', 'Increase = 1000/4000 x 100 = 25%.'),

-- Q937
('Aptitude', 'What is the value of 1001 x 999?', '998001', '999000', '999999', '1000000', 'C', 'Medium', 'Using (1000+1)(1000-1) = 1000000 - 1 = 999999.'),

-- Q938
('Aptitude', 'If 5x + 10 = 45, find x.', '5', '6', '7', '8', 'C', 'Easy', '5x = 35, so x = 7.'),

-- Q939
('Aptitude', 'A product costs Rs. 1200 and is sold at a discount of 15% on its marked price of Rs. 1500. What is the profit percentage?', '5%', '6.25%', '7.5%', '10%', 'B', 'Medium', 'SP = 1500 x 85% = 1275. Profit = 75, so profit percentage = 6.25%.'),

-- Q940
('Aptitude', 'The average of 8 numbers is 40. If each number is doubled, what is the new average?', '40', '60', '80', '100', 'C', 'Easy', 'Doubling every value doubles the average to 80.'),

-- Q941
('Aptitude', 'What is the smallest number greater than 100 that is divisible by both 12 and 15?', '105', '110', '120', '125', 'C', 'Easy', 'LCM of 12 and 15 is 60. The first multiple greater than 100 is 120.'),

-- Q942
('Aptitude', 'If a train travels 90 km in 75 minutes, what is its speed in km/h?', '60', '72', '75', '80', 'B', 'Medium', '75 minutes = 1.25 hours. Speed = 90/1.25 = 72 km/h.'),

-- Q943
('Aptitude', 'A sum of Rs. 10000 earns 15% simple interest for 2 years. Find the amount.', 'Rs. 12500', 'Rs. 13000', 'Rs. 13500', 'Rs. 14000', 'B', 'Easy', 'SI = 3000. Amount = 13000.'),

-- Q944
('Aptitude', 'If 3/5 of a number is 72, what is the number?', '100', '110', '120', '125', 'C', 'Easy', 'Number = 72 x 5/3 = 120.'),

-- Q945
('Aptitude', 'A shopkeeper buys 20 articles for Rs. 4000 and sells each for Rs. 250. What is his total profit?', 'Rs. 500', 'Rs. 800', 'Rs. 1000', 'Rs. 1200', 'C', 'Easy', 'Total SP = 20 x 250 = 5000. Profit = 1000.'),

-- Q946
('Aptitude', 'The probability of selecting a vowel from the letters of the word COMPUTER is:', '1/4', '3/8', '1/2', '5/8', 'B', 'Medium', 'COMPUTER has 8 letters and 3 vowels: O, U and E. Probability = 3/8.'),

-- Q947
('Aptitude', 'How many diagonals does an octagon have?', '16', '20', '24', '28', 'B', 'Medium', 'Diagonals = 8 x 5 / 2 = 20.'),

-- Q948
('Aptitude', 'If 7x - 14 = 0, find x.', '1', '2', '3', '4', 'B', 'Easy', '7x = 14, so x = 2.'),

-- Q949
('Aptitude', 'A and B invest in the ratio 3:5. If total profit is Rs. 6400, what is B share?', 'Rs. 2400', 'Rs. 3200', 'Rs. 4000', 'Rs. 4500', 'C', 'Medium', 'B gets 5/8 of 6400 = 4000.'),

-- Q950
('Aptitude', 'A number is divisible by 9 if:', 'Its last digit is 9', 'Its last two digits are divisible by 9', 'Its digit sum is divisible by 9', 'It is an even number', 'C', 'Easy', 'Divisibility by 9 depends on the sum of digits.'),

-- Q951
('Aptitude', 'If 30% of x is 45, then x is:', '120', '135', '150', '180', 'C', 'Easy', 'x = 45/0.30 = 150.'),

-- Q952
('Aptitude', 'A can do a job in 16 days and B in 48 days. What part of the job do they complete together in one day?', '1/10', '1/12', '1/16', '1/20', 'B', 'Medium', 'Combined rate = 1/16 + 1/48 = 4/48 = 1/12.'),

-- Q953
('Aptitude', 'What is the difference between compound interest and simple interest on Rs. 10000 at 10% for 2 years?', 'Rs. 50', 'Rs. 100', 'Rs. 150', 'Rs. 200', 'B', 'Medium', 'For 2 years, difference = P x (R/100)^2 = 10000 x 0.01 = 100.'),

-- Q954
('Aptitude', 'A rectangle has length 20 cm and breadth 12 cm. What is its perimeter?', '54 cm', '60 cm', '64 cm', '72 cm', 'C', 'Easy', 'Perimeter = 2(20+12) = 64 cm.'),

-- Q955
('Aptitude', 'What is 35% of 400?', '120', '130', '140', '150', 'C', 'Easy', '35% of 400 = 140.'),

-- Q956
('Aptitude', 'If 4 consecutive integers have sum 50, what is the smallest integer?', '10', '11', '12', '13', 'B', 'Medium', 'The integers are 11, 12, 13 and 14.'),

-- Q957
('Aptitude', 'A man walks at 5 km/h. How much time will he take to cover 15 km?', '2 hours', '3 hours', '4 hours', '5 hours', 'B', 'Easy', 'Time = 15/5 = 3 hours.'),

-- Q958
('Aptitude', 'The ratio of boys to girls is 4:5. If there are 36 boys, how many girls are there?', '40', '45', '48', '50', 'B', 'Easy', 'Girls = 36 x 5/4 = 45.'),

-- Q959
('Aptitude', 'What is the value of 18 x 18?', '304', '314', '324', '334', 'C', 'Easy', '18 x 18 = 324.'),

-- Q960
('Aptitude', 'A train 200 m long travels at 20 m/s. How long will it take to cross a pole?', '5 seconds', '8 seconds', '10 seconds', '12 seconds', 'C', 'Easy', 'Time = 200/20 = 10 seconds.'),

-- Q961
('Aptitude', 'If the marked price is Rs. 2500 and discount is 12%, what is the selling price?', 'Rs. 2100', 'Rs. 2200', 'Rs. 2250', 'Rs. 2300', 'B', 'Easy', 'Discount = 300. SP = 2200.'),

-- Q962
('Aptitude', 'What is the HCF of 84 and 126?', '21', '28', '42', '63', 'C', 'Easy', 'HCF of 84 and 126 is 42.'),

-- Q963
('Aptitude', 'A sum of Rs. 5000 is invested at 8% simple interest for 5 years. What is the amount?', 'Rs. 6500', 'Rs. 7000', 'Rs. 7500', 'Rs. 8000', 'B', 'Easy', 'SI = 2000, so amount = 7000.'),

-- Q964
('Aptitude', 'If x + y = 20 and x - y = 6, find x.', '7', '10', '13', '15', 'C', 'Easy', 'Adding equations gives 2x = 26, so x = 13.'),

-- Q965
('Aptitude', 'What is the probability of selecting a king from a standard deck of cards?', '1/52', '1/26', '1/13', '4/13', 'C', 'Easy', 'There are 4 kings among 52 cards, so probability = 1/13.'),

-- Q966
('Aptitude', 'How many ways can 3 people be selected from 10 people?', '90', '100', '120', '150', 'C', 'Easy', '10C3 = 120.'),

-- Q967
('Aptitude', 'The average of 4 numbers is 18. If one number is 12, what is the average of the remaining three?', '18', '19', '20', '21', 'C', 'Medium', 'Total = 72. Remaining total = 60. Average = 20.'),

-- Q968
('Aptitude', 'If 5% of a number is 25, what is 40% of the number?', '150', '180', '200', '250', 'C', 'Easy', 'Number = 500. 40% = 200.'),

-- Q969
('Aptitude', 'A can complete a task in 30 days. B is twice as efficient as A. How long will B take?', '10 days', '12 days', '15 days', '20 days', 'C', 'Easy', 'Twice the efficiency means half the time. B takes 15 days.'),

-- Q970
('Aptitude', 'What is the next term in the series 4, 8, 16, 32, ?', '48', '56', '64', '72', 'C', 'Easy', 'Each term is doubled. Next = 64.'),

-- Q971
('Aptitude', 'A product is sold for Rs. 1440 at a profit of 20%. What is the cost price?', 'Rs. 1100', 'Rs. 1200', 'Rs. 1250', 'Rs. 1300', 'B', 'Easy', 'CP = 1440/1.2 = 1200.'),

-- Q972
('Aptitude', 'What is the sum of the first 10 multiples of 5?', '250', '275', '300', '325', 'B', 'Easy', 'Sum = 5 x (1+2+...+10) = 5 x 55 = 275.'),

-- Q973
('Aptitude', 'A boat speed in still water is 15 km/h and stream speed is 5 km/h. What is the upstream speed?', '5 km/h', '10 km/h', '15 km/h', '20 km/h', 'B', 'Easy', 'Upstream speed = 15 - 5 = 10 km/h.'),

-- Q974
('Aptitude', 'The perimeter of a square is 48 cm. What is its diagonal approximately?', '12 cm', '12 root 2 cm', '16 cm', '24 cm', 'B', 'Medium', 'Side = 12 cm. Diagonal = 12 root 2 cm.'),

-- Q975
('Aptitude', 'If 2x + 5 = 17, find x.', '5', '6', '7', '8', 'B', 'Easy', '2x = 12, so x = 6.'),

-- Q976
('Aptitude', 'A person spends Rs. 18000 out of an income of Rs. 24000. What percentage does he spend?', '60%', '70%', '75%', '80%', 'C', 'Easy', 'Percentage = 18000/24000 x 100 = 75%.'),

-- Q977
('Aptitude', 'If the LCM of two numbers is 120 and their HCF is 10, and one number is 30, what is the other?', '30', '40', '50', '60', 'B', 'Medium', 'Product = 120 x 10 = 1200. Other number = 1200/30 = 40.'),

-- Q978
('Aptitude', 'A car travels at 60 km/h for 2.5 hours. What distance does it cover?', '120 km', '150 km', '160 km', '180 km', 'B', 'Easy', 'Distance = 60 x 2.5 = 150 km.'),

-- Q979
('Aptitude', 'A number is decreased by 25% and becomes 150. What was the original number?', '180', '200', '220', '250', 'B', 'Easy', '75% of original = 150, so original = 200.'),

-- Q980
('Aptitude', 'What is the value of 17^2?', '279', '289', '299', '309', 'B', 'Easy', '17 x 17 = 289.'),

-- Q981
('Aptitude', 'A can complete a task in 12 days and B in 24 days. If A works alone for 4 days, what fraction of the task remains?', '1/3', '1/2', '2/3', '3/4', 'C', 'Easy', 'A completes 4/12 = 1/3, so 2/3 remains.'),

-- Q982
('Aptitude', 'What is 45% of 200?', '80', '90', '100', '110', 'B', 'Easy', '45% of 200 = 90.'),

-- Q983
('Aptitude', 'If the average of 6 numbers is 25, what is their total?', '125', '140', '150', '160', 'C', 'Easy', 'Total = 6 x 25 = 150.'),

-- Q984
('Aptitude', 'A shopkeeper buys an item for Rs. 1000 and sells it for Rs. 850. What is the loss percentage?', '10%', '12%', '15%', '20%', 'C', 'Easy', 'Loss = 150. Loss percentage = 15%.'),

-- Q985
('Aptitude', 'What is the probability of getting an odd number on a fair die?', '1/6', '1/3', '1/2', '2/3', 'C', 'Easy', 'Odd outcomes are 1, 3 and 5, so probability = 3/6 = 1/2.'),

-- Q986
('Aptitude', 'If 7 pens cost Rs. 84, what is the cost of 11 pens?', 'Rs. 120', 'Rs. 126', 'Rs. 132', 'Rs. 140', 'C', 'Easy', 'One pen costs Rs. 12. Eleven cost Rs. 132.'),

-- Q987
('Aptitude', 'The sum of three consecutive integers is 72. What is the middle integer?', '22', '23', '24', '25', 'C', 'Easy', 'Middle integer = 72/3 = 24.'),

-- Q988
('Aptitude', 'A pipe fills a tank in 20 hours. Another fills it in 30 hours. What fraction is filled in one hour together?', '1/10', '1/12', '1/15', '1/20', 'B', 'Medium', 'Combined rate = 1/20 + 1/30 = 1/12.'),

-- Q989
('Aptitude', 'What is the value of 2^5 x 2^3?', '64', '128', '256', '512', 'C', 'Easy', 'Same bases are multiplied by adding powers: 2^8 = 256.'),

-- Q990
('Aptitude', 'If a:b = 7:9 and b = 45, find a.', '30', '35', '40', '42', 'B', 'Easy', 'One part = 45/9 = 5. a = 7 x 5 = 35.'),

-- Q991
('Aptitude', 'A train crosses a 200 m platform in 20 seconds at 54 km/h. What is the length of the train?', '80 m', '100 m', '120 m', '150 m', 'B', 'Medium', '54 km/h = 15 m/s. Total distance = 300 m, so train length = 100 m.'),

-- Q992
('Aptitude', 'The compound interest on Rs. 2000 at 5% for 2 years is:', 'Rs. 200', 'Rs. 205', 'Rs. 210', 'Rs. 215', 'B', 'Medium', 'Amount = 2000 x 1.05^2 = 2205. CI = 205.'),

-- Q993
('Aptitude', 'What is the smallest prime number greater than 100?', '101', '103', '107', '109', 'A', 'Easy', '101 is prime and is greater than 100.'),

-- Q994
('Aptitude', 'If 18 workers complete a job in 10 days, how many workers are needed to finish it in 6 days?', '24', '27', '30', '36', 'C', 'Easy', 'Workers = 18 × 10 / 6 = 30.'),

-- Q995
('Aptitude', 'A person walks 4 km north and then 3 km east. What is the shortest distance from the starting point?', '3 km', '4 km', '5 km', '7 km', 'C', 'Easy', 'By Pythagoras, distance = sqrt(4^2 + 3^2) = 5 km.'),

-- Q996
('Aptitude', 'If 40% of a number is 64, what is 125% of that number?', '160', '180', '200', '220', 'C', 'Medium', 'Number = 160. 125% of 160 = 200.'),

-- Q997
('Aptitude', 'The average of 5 consecutive even numbers is 28. What is the largest number?', '30', '32', '34', '36', 'C', 'Medium', 'The numbers are 24, 26, 28, 30 and 32. Largest = 32.'),

-- Q998
('Aptitude', 'A shopkeeper gives 20% discount on an item marked Rs. 2500. What is the discount amount?', 'Rs. 400', 'Rs. 450', 'Rs. 500', 'Rs. 550', 'C', 'Easy', 'Discount = 20% of 2500 = Rs. 500.'),

-- Q999
('Aptitude', 'If x/4 + 5 = 12, what is x?', '20', '24', '28', '32', 'C', 'Easy', 'x/4 = 7, so x = 28.'),

-- Q1000
('Aptitude', 'A number is increased by 25% and then increased by another 20%. What is the total percentage increase?', '40%', '45%', '50%', '55%', 'C', 'Medium', 'Take 100. After 25% it becomes 125. After another 20% it becomes 150. Total increase = 50%.')
;


USE ai_interviewer;

SELECT COUNT(*) AS total_aptitude_questions
FROM questions
WHERE skill = 'Aptitude';

SELECT MIN(id) AS first_id,
       MAX(id) AS last_id
FROM questions
WHERE skill = 'Aptitude';

SELECT id, question
FROM questions
WHERE skill = 'Aptitude'
AND (
    question IS NULL OR question = ''
    OR option_a IS NULL OR option_a = ''
    OR option_b IS NULL OR option_b = ''
    OR option_c IS NULL OR option_c = ''
    OR option_d IS NULL OR option_d = ''
    OR correct_answer IS NULL OR correct_answer = ''
    OR difficulty IS NULL OR difficulty = ''
    OR explanation IS NULL OR explanation = ''
);