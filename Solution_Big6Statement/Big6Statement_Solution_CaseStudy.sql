-- Statement_1

select
first_name,
last_name,
email,
store_id
from staff;

-- Statement2

-- count of inventory items at each stores
select
store_id,
Count(inventory_id)
from inventory
group by store_id;


-- statement3
-- count of active cust. at each stores seprately
select
active,
store_id,
count(customer_id)
from customer
group by active, store_id
having active=1;

-- statement4 
-- count of all the email in the database

select
count(email)
from customer;


-- statement5
-- count of unique title in each store from inventory 
-- and count of unique catagory 
Select
store_id,
count(film_id)
from inventory
group by store_id;

SELECT
    store_id,
    COUNT(DISTINCT(film_id)) AS film_count
FROM inventory
GROUP BY store_id;


select
count(distinct(category_id)) as Count_Unique_Category
from category;






-- Statement6
select
min(replacement_cost) as Least_Expensive,
max(replacement_cost) as Most_Expensive,
avg(replacement_cost) as Average
from film;

-- statement7
select
avg(amount) as 'Average_Payment_($)',
max(amount) as 'Maximun_Payment($)'
from payment;


-- statement_8
select
customer_id,
count(rental_id)
from payment
group by customer_id
order by count(rental_id) desc;