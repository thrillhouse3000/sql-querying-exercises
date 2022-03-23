-- Comments in SQL Start with dash-dash --

--Question 1--
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44, false);

--Question 2--
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);

--Question 3--
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124, false);

--Question 4--
SELECT * FROM products;

--Question 5--
SELECT name FROM products;

--Question 6--
SELECT name, price FROM products;

--Question 7--
INSERT INTO products (name, price, can_be_returned) VALUES ('dresser', 200, false);

--Question 8--
SELECT * FROM products WHERE can_be_returned = 't';

--Question 9--
SELECT * FROM products WHERE price < 44;

--Question 10--
SELECT * FROM products WHERE price BETWEEN 22.5 AND 99.99;

--Question 11--
UPDATE products SET price = price - 20;

--Question 12--
DELETE FROM products WHERE price < 25;

--Question 13--
UPDATE products SET price = price + 20;

--Question 14--
UPDATE products SET can_be_returned = true;
