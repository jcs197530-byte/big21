CREATE TABLE products (
	  id 		integer generated always as identity primary key	-- 회원번호
	, name 		varchar(100) not null								-- 회원번호	
	, category  varchar(30)	
	, price 	numeric(10, 2) not null								-- 회원번호
	, stock		integer default 0									-- 회원번호
);
