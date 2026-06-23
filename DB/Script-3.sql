-- select 기초
select p."name" , p.price 
 from products p 
 ;

--메모리상에 테이블이 만들어짐.
select * from products p ;

-- 컬럼 몇칭, 테이블 별칭
select  p."name" as 상품명 
	  , p.price  as 가격
  from products p --테이블 별칭
;  


--전체 데이터 조회
select * from products p
;

-- 문제 : 가격 20000만 이상인 상품조회(where)
select name , p.price , p.stock  -- 필요한 컬럼을 가지고 있는 행 추출
  from products p -- 상품정보 들어있는 테이블을 먼저 확인
 where p.price >= 20000 -- 2. 가격 20000만 이상인 상품조회(where) >=  비교연산자  
;

-- 주방용품 : 10000원 이상인 상품
-- 1. 테이블 찾기 : PRODUCTS
-- 2. 조건 부합하는 컬럼 찾기 : 
-- DB를 잘해야 한다.
-- 화면에 나오는것이 모두 DB에서 나온다.
SELECT *
FROM products p  
WHERE p.category = '주방용품' 
AND p.price >= 10000
;

-- 문제 : 주방용품 또는 문구인 상품 조회
SELECT *
FROM products p 
WHERE category not IN ('주방용품', '문고')
;

-- 문제 : 가격이 5000이상 2000미만 상품조회
SELECT *
FROM products p 
WHERE category not IN ('주방용품', '문고')
;

-- 문제 : 가격이 5000이상 2000미만 상품조회
SELECT *
FROM products p 
where p.price >= 5000
and   p.price <  20000
;


-- 문제 : 상품 이름중에 마우스가 포함된 상품 추출
select * 
	from products p 
where P.NAME like '%마우스' -- 마우스가 포함된 문자열
;