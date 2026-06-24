--Q1
--전체 회원 수를 구하라.
select 
	COUNT(*)CNT
from 
	customers c 
;



--
--Q2
--
--전체 상품 수를 구하라.
select 
	COUNT(*)CNT
from 
	products p  
;

--
--Q3
--활성 회원(is_active = true) 수를 구하라.
select 
	COUNT(*)CNT
from 
	customers c 
where c.is_active = true	
;

--
--Q4
--비활성 회원 수를 구하라.
select 
	COUNT(*)CNT
from 
	customers c 
where c.is_active = false	
;
--
--Q5
--성별이 남성('M')인 회원 수를 구하라.
select 
	COUNT(*)CNT
from 
	customers c 
where c.gender = 'M'	
;
--
--Q6
--VIP 등급 회원 수를 구하라.
select 
	COUNT(*)CNT
from 
	customers c 
where c.grade = 'VIP'
;
--
--Q7
--서울에 거주하는 회원 수를 구하라.
select 
	COUNT(*)CNT
from 
	customers c 
where c.city = '서울'
;
--
--Q8
--상태가 '품절'인 상품 수를 구하라.
select 
	count(*)cnt
from 
	products p 
where status ='품절' 	
;
--
--Q9
--상태가 '단종'인 상품 수를 구하라.
select 
	count(*)cnt
from 
	products p 
where status ='단종' 	
;
--
--Q10
--가장 비싼 상품 1개의 이름과 가격을 구하라.
select 
	p."name"  , p.price 
from 
	products p 
group by p."name"  , p.price
order by p.price desc
limit 1
;
--
--Q11
--가장 싼 상품 1개의 이름과 가격을 구하라.
select 
	p."name"  , p.price 
from 
	products p 
group by p."name"  , p.price
order by p.price asc
limit 1
;
--
--Q12
--DISTINCT
--회원 이메일의 도메인 종류를 모두 구하라.
select 
	distinct split_part(c.email, '@', 2)
from 
	customers c 
;
--
--Q13
--DISTINCT
--회원 등급의 종류를 알파벳순으로 구하라.
select 
	distinct c.grade 
from 
	customers c 
order by c.grade asc	
;
--
--Q14
--               
--DISTINCT
--회원이 거주하는 도시는 몇 종류인가?
select 
	distinct c.city  
from 
	customers c 
;
--
--Q15
--범위
--1990-01-01 이후 출생한 회원 수를 구하라.
select 
	count(*) cnt
from 
	customers c 
where c.birth_date between date '1990-01-01' and date '9999-12-31'	
;

--
--Q16
--범위
--가격이 10만원 이상인 상품 수를 구하라.
select 
  count(*)cnt  
from 
  products p
where p.price > 100000	
;
--
--Q17
--범위
--가격이 5만원 이상 10만원 이하인 상품 수를 구하라.
select 
  count(*)cnt  
from 
  products p
where p.price between 50000 and 100000	
;
--
--Q18
--LIKE
--이메일이 gmail.com인 회원 수를 구하라.
select 
	count(*)cnt
from 
	customers c 
where split_part(c.email, '@', 2) = 'gmail.com'	
;	
--
--Q19
--
--LIKE
--이름이 '김'으로 시작하는 회원 수를 구하라.
select 
  count(*)cnt
from 
	customers c 
where c."name" like '김%'	
;
--
--Q20
--WHERE
--재고(stock_quantity)가 0인 상품 수를 구하라.
select 
  count(*)cnt  
from 
  products p
where p.stock_quantity = 0
;
--
--Q21
--정렬
--가장 비싼 상품 5개를 이름·가격과 함께 구하라.
select 
    p."name" 
  , p.price 
from 
  products p
order by p.price desc
limit 5
;
--
--Q22
--정렬
--가장 먼저 가입한 회원 5명을 이름·가입일과 함께 구하라.
select 
    p."name" 
  , p.created_at
from 
  products p
order by p.created_at asc
limit 5
;