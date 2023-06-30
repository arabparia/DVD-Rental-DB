SELECT title FROM film f 
WHERE title NOT IN (SELECT title FROM film f
JOIN inventory i ON f.film_id=i.film_id
JOIN rental r ON i.inventory_id=r.inventory_id);

SELECT COUNT(DISTINCT(title)) FROM film f 
WHERE title NOT IN (SELECT title FROM film f
JOIN inventory i ON f.film_id=i.film_id
JOIN rental r ON i.inventory_id=r.inventory_id);