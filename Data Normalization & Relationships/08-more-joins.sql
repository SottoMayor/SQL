SELECT c.name AS city_name, u.first_name, u.last_name, u.email
FROM cities AS c
    LEFT JOIN addresses AS a ON c.id = a.city_id
    LEFT JOIN users AS u ON u.address_id = a.id
ORDER BY c.id;