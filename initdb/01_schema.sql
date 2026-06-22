CREATE TABLE products (
id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
price INTEGER NOT NULL
);

INSERT INTO products (name, price) VALUES
('keyboard', 30000),
('mouse', 15000);