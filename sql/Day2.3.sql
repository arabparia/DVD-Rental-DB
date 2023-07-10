SELECT title, COUNT(s.store_id) AS count_store, SUM(amount) AS total_revenue 
from film f
JOIN inventory i ON f.film_id=i.film_id
JOIN rental r ON i.inventory_id=r.inventory_id
JOIN payment p ON r.rental_id=p.rental_id
JOIN store s ON s.store_id=i.store_id
GROUP BY s.store_id ,title
HAVING SUM(amount)>30
ORDER BY SUM(amount) DESC;
