--products--

INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44, false);

INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);

INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124, false);

SELECT * FROM products;

SELECT name FROM products;

SELECT name, price FROM products;

INSERT INTO products (name, price, can_be_returned) VALUES ('dresser', 200, false);

SELECT * FROM products WHERE can_be_returned = 't';

SELECT * FROM products WHERE price < 44;

SELECT * FROM products WHERE price BETWEEN 22.5 AND 99.99;

UPDATE products SET price = price - 20;

DELETE FROM products WHERE price < 25;

UPDATE products SET price = price + 20;

UPDATE products SET can_be_returned = true;

--playstore--

SELECT * FROM analytics WHERE id = 1880;

SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

SELECT category, COUNT(*) FROM analytics GROUP BY category;

SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;

SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;

SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) desc;

SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

SELECT app_name FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating desc;

SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

SELECT app_name FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews desc LIMIT 10;

SELECT app_name FROM analytics ORDER BY last_updated asc LIMIT 1;

SELECT app_name FROM analytics ORDER BY price desc LIMIT 1;

SELECT SUM(reviews) FROM analytics;

SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) >= 300;

SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs
>= 100000 ORDER BY min_installs/reviews desc LIMIT 1;