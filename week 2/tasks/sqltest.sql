-- task link to hackerrank "https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem"

-- the question
-- Julia conducted a 15 days of learning SQL contest. The start date of the contest was March 01, 2016 and the end date was March 15, 2016.

-- Write a query to print total number of unique hackers who made at least 1 submission each day (starting on the first day of the contest), and find the hacker_id and name of the hacker who made maximum number of submissions each day. If more than one such hacker has a maximum number of submissions, print the lowest hacker_id. The query should print this information for each day of the contest, sorted by the date.

-- pseudocode

-- presequisites:
-- Tables => Hackers -hacker_id, name
--           Submissions - submission_date, submission_id, hacker_id, score
-- period =>  '2016-03-01' and  '2016-03-31'

-- print the number of people who has made submissions in the past each day
-- print among the people who submit the most amount of data

-- code

-- returning the number of peole who made large number of submission
-- We join the tables using innerjoin , T1- TABLE 1, T2- TABLE 2
-- (SELECT hacker_id FROM Submissions T2
--    WHERE T2.SUBMISSION_DATE = T1.SUBMISSION_DATE 
-- GROUP BY hacker_id ORDER BY COUNT(submission_id) DESC, hacker_id LIMIT 1) AS TMP,
-- (SELECT name FROM Hackers WHERE Hacker_id = TMP)FROM
-- (SELECT DISTINCT submission_date FROM Submissions) T1
-- GROUP BY submission_date;

-- returning the number of people who made at least submission each day

-- (SELECT COUNT(DISTINCT hacker_id)  
--  FROM Submissions T2  
--  WHERE S2.submission_date = S1.submission_date AND    
-- (SELECT COUNT(DISTINCT S3.submission_date) 
--  FROM Submissions S3 WHERE S3.hacker_id = S2.hacker_id AND S3.submission_date < T1.submission_date) = DATEDIFF(T1.submission_date , '2016-03-01'))

--  complete code

SELECT Submissions,
(SELECT COUNT(DISTINCT hacker_id)  
 FROM Submissions S2  
 WHERE S2.Submissions = S1.Submissions AND    
(SELECT COUNT(DISTINCT S3.Submissions) 
 FROM Submissions S3 WHERE S3.hacker_id = S2.hacker_id AND S3.Submissions < S1.Submissions) = DATEDIFF(S1.Submissions , '2016-03-01')),
(SELECT hacker_id FROM Submissions S2 WHERE S2.Submissions = S1.Submissions 
GROUP BY hacker_id ORDER BY COUNT(submission_id) DESC, hacker_id LIMIT 1) AS TMP,
(SELECT NAME FROM Hackers WHERE hacker_id = TMP)
FROM
(SELECT DISTINCT Submissions FROM Submissions) S1
GROUP BY Submissions;