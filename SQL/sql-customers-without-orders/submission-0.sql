-- Write your query below
select DISTINCT c.name from
customers as c left join orders as o on c.id = o.customer_id
where o.id IS NULL;