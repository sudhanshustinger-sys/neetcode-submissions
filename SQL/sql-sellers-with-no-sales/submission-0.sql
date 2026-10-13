-- Write your query below
SELECT s.seller_name
FROM seller AS s LEFT JOIN
(SELECT DISTINCT seller_id
FROM orders
WHERE EXTRACT(YEAR from sale_date) = 2020) AS ct ON s.seller_id = ct.seller_id
WHERE ct.seller_id is null
ORDER BY s.seller_name ASC;