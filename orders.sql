CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    product_name TEXT NOT NULL,
    product_price FLOAT NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(1, 'Poached Crocodile Egg', 79.99, 3),
(1, 'Prized Ostrige Egg', 594.98, 1),
(1, 'Chicken Egg', 5.49, 12),
(2, 'Amethyst Geode', 30.99, 70),
(2, 'Mystic Quartz Ancient Healing Hippie Rock', 1000.23, 1);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(quantity * product_price) FROM orders;

SELECT SUM(quantity * product_price) FROM orders WHERE person_id = 1;