SELECT title,release_year,length,rating,name FROM film f
LEFT JOIN language l
ON f.language_id=l.language_id
WHERE release_year=2006
AND length>100;