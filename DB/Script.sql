-- Insert : 데이터 추가
-- 기본 문법 : insert into 테이블명 [(컬럼1,컬럼2,,,,)] values (값1,값2,,,,,);
-- members

INSERT INTO public.members
(name, email)
VALUES('홍길동', 'aaa@aaa.com');

select * from   public.members;

delete  from   public.members
where name in ( '고길동' , '마이꼴')
;



INSERT INTO public.members
(name, email)
values
('고길동', 'go@gmail.com'),
('마이꼴', 'my@gmail.com')
;

commit;

select * from   public.members;

insert into products (name,category, price, stock)
values
('무선 마우스','전자기기','19900','50'),
('기계식 키보드','전자기기','89000','20'),
('머그컵','주방용품','8900','100'),
('노트','문고','3000','200')
;

--최종적으로 resultset에 생성하는 것이다.
select 
	  p.name 
--	, p.category 
	, p.price 
--	, p.stock 
  from products p 
;  

--카티시안 조인
select m.name , p.name
--count(*)
  from members m , products p
--order by members.id  
;  
  
-- stock 제외 insert
insert into products(name, category, price)
values('텀블러','주방용품','15000')
;

select * from products p;


-- 삽입과 동시에 생성된 id와 created_at 돌려받기
-- 트랜젝션 포인트를 가지고 있는거 같다
INSERT INTO members (name, email)
VALUES ('둘리', 'dol@gmail.com')
RETURNING id, created_at
;

INSERT INTO products (name, category, price)
VALUES 
('손목 받침대', '전자기기','12000'),
('USB 허브' , '전자기기','23000')
RETURNING id,NAME
;

select * from members
;

select * from products
;





