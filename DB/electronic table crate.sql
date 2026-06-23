-- 전자기기 저장하는 테이블 생성
CREATE TABLE electronics (
    id  	integer 		NOT null -- 기존 값 대체
  , name 	varchar(100)  	NOT null 
  , price 	integer		 	NOT NULL
);

INSERT INTO electronics (id , name, price)
SELECT id, name, price
FROM products
WHERE category = '전자기기';


select *
	from products p
  where p.category = '전자기기'	
;  