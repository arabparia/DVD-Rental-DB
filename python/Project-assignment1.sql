select  date(p.payment_date) as date ,country, sum(p.amount) as total_revenue from payment p 
		join customer c on c.customer_id=p.customer_id
		join address a on a.address_id=	c.address_id
		join city on city.city_id=a.city_id
		join country on country.country_id=	city.country_id
		
		group by country,date;

						  