INSERT INTO cities (name)
VALUES ('London'),
    ('Manaus'),
    ('California');
INSERT INTO addresses (street, house_number, city_id)
VALUES ('Testing Street', '3', 3),
    ('Consolation Street', '9G', 1),
    ('Torquato Tapajós', '432', 2),
    ('Funny Street', '12', 3);
INSERT INTO users (first_name, last_name, email, address_id)
VALUES ('David', 'Fernandes', 'david@test.com', 3),
('Raul', 'Menendez', 'r.menendez@bo2.com', 1),
('Mason', 'Mount', 'mount@chelsea.com', 2);