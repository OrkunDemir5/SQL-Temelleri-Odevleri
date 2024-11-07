SELECT * FROM film
WHERE title LIKE 'C%' AND (LENGTH(title) > 90 AND rental_rate = 2.99);