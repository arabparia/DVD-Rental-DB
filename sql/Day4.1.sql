SELECT name as genre, AVG(f.rental_rate) as average_rating
FROM category c
JOIN film_category fc ON fc.category_id=c.category_id
JOIN film f ON f.film_id=fc.film_id
GROUP BY c.name
ORDER BY average_rating DESC;
