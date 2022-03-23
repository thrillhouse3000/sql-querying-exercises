--Question 1--
SELECT * FROM analytics WHERE id = 1880;

--Question 2--
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

 --Question 3--
SELECT category, COUNT(*) FROM analytics GROUP BY category;

--Question 4--
SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;

--Question 5--
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;

--Question 6--
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) desc;

--Question 7--
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

--Question 8--
SELECT app_name FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating desc;

--Question 9--
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

--Question 10--
SELECT app_name FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews desc LIMIT 10;

--Question 11--
SELECT app_name FROM analytics ORDER BY last_updated asc LIMIT 1;

--Question 12--
SELECT app_name FROM analytics ORDER BY price desc LIMIT 1;

--Question 13--
SELECT SUM(reviews) FROM analytics;

--Question 14--
SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) >= 300;

--Question 15--
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs
 >= 100000 ORDER BY min_installs/reviews desc LIMIT 1;

