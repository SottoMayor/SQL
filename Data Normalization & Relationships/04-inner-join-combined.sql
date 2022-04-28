SELECT first_name,
    last_name,
    street,
    house_number,
    c.name AS city_name
FROM users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id
    INNER JOIN cities as c ON c.id = a.city_id;