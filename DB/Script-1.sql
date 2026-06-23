DROP TABLE IF EXISTS postgress.orders;
DROP TABLE IF EXISTS postgresproducts;
DROP TABLE IF EXISTS postgresmembers;

CREATE TABLE members (
    id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name  varchar(50)  NOT NULL,
    email varchar(100) NOT NULL,
    age   integer
);

CREATE TABLE products (
    id    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name  varchar(100)   NOT NULL,
    price numeric(10, 2) NOT NULL
);

CREATE TABLE orders (
    id         integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    member_id  integer NOT NULL,
    product_id integer NOT NULL,
    quantity   integer NOT NULL
);



INSERT INTO members (name, email, age)
SELECT '회원' || g,
       'member' || g || '@example.com',
       20 + (g % 50)                     
FROM generate_series(1, 50000) AS g;



INSERT INTO products (name, price)
SELECT '상품' || g,
       (1000 + (g % 200) * 500)::numeric(10, 2)
FROM generate_series(1, 1000) AS g;



INSERT INTO orders (member_id, product_id, quantity)
SELECT 1 + (g % 50000),               
       1 + (g % 1000),                
       1 + (g % 5)                    
FROM generate_series(1, 1000000) AS g;




ANALYZE members;
ANALYZE products;
ANALYZE orders;



SELECT 'members'  AS table_name, count(*) AS rows FROM members
UNION ALL
SELECT 'products', count(*) FROM products
UNION ALL
SELECT 'orders',   count(*) FROM orders;