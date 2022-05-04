INSERT INTO sales_table (
        date_fulfilled,
        customer_name,
        product_name,
        volume,
        is_recurring,
        is_disputed
    )
VALUES (
        NULL,
        'David Fernandes',
        'A Fly Killer',
        0.99,
        FALSE,
        FALSE
),
(
    NULL,
    'João Souza',
    'Milk Chocolate',
    3.59,
    TRUE,
    FALSE
),
(
    '2022-03-14',
    'Big Oil Inc',
    'Trucks',
    400000.0,
    FALSE,
    TRUE
);