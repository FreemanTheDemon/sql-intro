CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT NOT NULL,
    height INT NOT NULL,
    city TEXT NOT NULL,
    favorite_color TEXT NOT NULL
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES 
('John', 53, 213, 'Nantes', 'Blue'),
('James', 42, 170, 'Lothian', 'Gold'),
('Jaques', 28, 174, 'Boise', 'Orange'),
('Jean', 32, 168, 'Frankfurt', 'Green'),
('Joshua', 24, 164, 'Juno', 'Silver');

SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY age DESC;

SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age < 20 OR age > 30;
SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'Red';
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');
SELECT * FROM person WHERE favorite_color IN ('Purple', 'Yellow');