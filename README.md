
Description
The DVD Rental Database Queries repository offers a set of SQL queries that demonstrate the power and flexibility of 
analyzing the DVD rental database.
Each query is carefully crafted to extract specific information from the database and provide meaningful results.

The queries in this repository cover a wide range of topics and offer insights into different aspects of the rental business. 
Some of the queries included are:

Customer Counts by Store ID: This function provides the number of customers associated with each store ID.

![New Bitmap image](https://github.com/arabparia/DVD-Rental-DB/assets/137802161/1fa69d7c-f081-429b-8ed4-e18cf910f3e0)
create function customer_count(id int)
returns int
language plpgsql
as
$$
declare
   customer_count int;
begin
   select count(customer_id) 
   into customer_count
   from customer
   where store_id=id;
   
   return customer_count;
end;
$$;

SELECT * FROM customer_count(2);


Film Categories by Release Year: This query groups films by their category and release year, where releasing year is 2006 considering films with a length of 100 minutes and more;
 ![New Bitmap image](https://github.com/arabparia/DVD-Rental-DB/assets/137802161/d7a35b16-00d4-4e25-b0e2-6460181b0ccc)
SELECT title,release_year,length,rating,name FROM film f
LEFT JOIN language l
ON f.language_id=l.language_id
WHERE release_year=2006
AND length>100;

