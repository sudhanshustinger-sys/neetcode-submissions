-- Write your query below
SELECT c.customer_id, c.customer_name
FROM customers as c left join (SELECT * FROM orders WHERE product_name = 'A') as o1 on c.customer_id = o1.customer_id left join (SELECT * FROM orders WHERE product_name = 'B') as o2 on 
c.customer_id = o2.customer_id left join (SELECT * FROM orders WHERE product_name = 'C') as o3 on 
c.customer_id = o3.customer_id
WHERE o1.customer_id is not null AND o2.customer_id is not null and o3.customer_id is null
GROUP BY c.customer_id, c.customer_name
ORDER BY c.customer_name
