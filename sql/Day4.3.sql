
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