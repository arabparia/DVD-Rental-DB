SELECT
  title,description,
  split_column[2] AS comment,
  split_column[3] AS category
FROM (
  SELECT title,description,STRING_TO_ARRAY(description, ' ') AS split_column
  FROM film
) subquery;



