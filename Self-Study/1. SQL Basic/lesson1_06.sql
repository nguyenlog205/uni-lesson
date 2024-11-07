-- Lesson 1.6: Aggrerate functions
SELECT authorName, count(*) as Total
FROM Books
GROUP BY authorName
-- All feature that doesn't contain aggrerate function must be listed in GROUP BY!
+--------------+------+
| authorName   |Total |
+--------------+------+
| Alan Weaker  | 20   |
| Nam Cao      | 13   |
| Ho Xuan Huong| 21   |
+--------------+------+

-- Some common aggrerate functions
COUNT(*):
-- Count number of values
MAX(<feature_name>) 
-- Return the largest value
MIN(<feature_name>)
-- Return the smallest value
AVG(<feature_name>)
-- Return the average value of the feature
SUM(<feature_name>)
-- Return the sum of the feature


-- GROUP BY with multiple columns
SELECT author_fname, author_lname, COUNT(*) 
FROM books 
GROUP BY author_lname, author_fname;
-- It returns a query, group by each combinations of the GROUP BY features.


-- Subquery in SQL
SELECT customerName, paidMoney AS Total
FROM Customers
WHERE paidMoney = (
  SELECT MAX(paidMoney) 
  FROM Customers
);
