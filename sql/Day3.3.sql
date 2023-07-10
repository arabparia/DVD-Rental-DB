WITH rental_caption AS(
SELECT name,
   CASE WHEN name='English' THEN 'Without subtitle'
        WHEN name='French' THEN 'with subtitle'
        ELSE 'dubbed'
	END
	FROM language
	)
	SELECT l.name,rc.CASE , COUNT(*) AS count FROM film f
	JOIN language l ON l.language_id=f.language_id
	JOIN rental_caption rc ON rc.name=l.name
	GROUP BY l.name,rc.CASE
	;
	
	
