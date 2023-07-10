SELECT name,
   CASE WHEN name='English' THEN 'Without subtitle'
        WHEN name='French' THEN 'with subtitle'
        ELSE 'dubbed'
	END
	FROM language;