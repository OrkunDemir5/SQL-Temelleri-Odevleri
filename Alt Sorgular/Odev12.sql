-- 1. Film tablosunda, uzunluğu ortalama film uzunluğundan fazla olan kaç tane film vardır?
SELECT COUNT(*) AS Uzun_Film_Sayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2. Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) AS En_Yuksek_Rental_Rate_Film_Sayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--3. Film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--4. Payment tablosunda en fazla sayıda alışveriş yapan müşterileri (customer) sıralayınız.
SELECT customer_id, COUNT(*) AS Toplam_Alisveris
FROM payment
GROUP BY customer_id
ORDER BY Toplam_Alisveris DESC;