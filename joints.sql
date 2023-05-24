SELECT c.name, COUNT(loc.id) AS num_locations FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
WHERE loc.city_name = 'Munich'
GROUP BY c.name
HAVING COUNT(loc.id) > 1;

SELECT * 
FROM addresses AS a
LEFT JOIN users AS u ON a.id = u.address_id
LEFT JOIN cities AS c ON c.id = a.city_id;

SELECT c.name AS city_name, u.first_name, u.last_name
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id
LEFT JOIN users AS u ON u.address_id = a.id;


SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id
WHERE c.id = 1 OR c.id = 2
ORDER BY u.id DESC;

SELECT id, first_name FROM users
UNION
SELECT id, street FROM addresses;

SELECT *
FROM users
CROSS JOIN addresses;