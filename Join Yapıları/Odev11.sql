-- 1-actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

-- 2-actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım. 
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer;

-- 3-3-actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak 
--ikinci tabloda bulunmayan verileri sıralayalım. 
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer;

-- 4-İlk 3 sorguyu tekrar eden veriler için de yapalım.
--1-
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;
--2-
SELECT first_name FROM actor
INNER JOIN customer ON actor.first_name = customer.first_name;
--3-
SELECT first_name FROM actor
LEFT JOIN customer ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL;
