-- Write your query below
SELECT u.name, CASE WHEN r.travelled_distance is null THEN 0
ELSE r.travelled_distance END AS travelled_distance
FROM
users as u LEFT JOIN (
SELECT user_id, SUM(distance) as travelled_distance
FROM rides
GROUP BY user_id
) as r on u.id = r.user_id
ORDER BY travelled_distance DESC, u.name ASC;
