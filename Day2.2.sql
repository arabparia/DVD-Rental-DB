SELECT country, SUM(amount) AS total_revenue 
from film f
JOIN inventory i ON f.film_id=i.film_id
JOIN rental r ON i.inventory_id=r.inventory_id
JOIN payment p ON r.rental_id=p.rental_id
JOIN store s ON s.store_id=i.store_id
JOIN address a ON a.address_id=s.address_id
JOIN city c ON a.city_id=c.city_id
JOIN country ON c.country_id=country.country_id
GROUP BY country.country 
HAVING SUM(amount)>30000;
