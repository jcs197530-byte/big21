select count(*) as members
	from customers c
;

select count(*) as products
	from products p  
;

select count(*) as 활성회원
	from customers c 
	where is_active = true
;

select count(*) as 비활성회원
	from customers c 
	where is_active = false 
;

select count(*) as 남성
	from customers c 
	where c.gender = 'M'
;

select count(*) as VIP
	from customers c 
	where c.grade = 'VIP'
;

select count(*) as 서울거주
	from customers c 
	where c.city = '서울'
;

select count(*) as 품절
	from products p 
	where p.status = '품절'
;

select count(*) as 단종
	from products p 
	where p.status = '단종'
	
select p.product_id 
	, p. "name"
	, p. price 
	from products p 
	order by p.price desc
	limit 1
;

select p.product_id 
	, p. "name"
	, p. price 
	from products p 
	order by p.price asc 
	limit 1
;

select distinct grade
	from customers c 
	order by c.grade 	
;

select count(distinct c.city)
	from customers c
;


select count(*)
	from customers c
	where c.birth_date >= date '1990-01-01'
;

select count(*)
 from products p 
 where price >= 100000
;

select count(*) 
	from products p 
	where p.price >= 50000
	and p.price <=100000
;

select count(*)
	from customers c 
	where c.email   
	like '%@gmail.com'
;

select count(*)
	from customers c 
	where c."name"    
	like '김%'
;

select count(*)
	from products p    
	where p.stock_quantity = '0'
;

select p."name" , p.price 
	from products p 
	order by price desc, p.product_id 
	limit 5
;

select c."name" , c.signup_date 
	from customers c 
	order by c.signup_date asc , c.customer_id  
	limit 5
;

select grade, count(*) as 인원
from customers
group by grade
ORDER by 인원 desc
;




