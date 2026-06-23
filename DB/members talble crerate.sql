--
/**********************************************
* 여러줄 주석
***********************************************/
--회원 정보를 저장하는 members 테이블 생성
--CREATE TABLE members (
--	컬럼명1 데이터터입[제약조건],
--	컬럼명2 데이터터입[제약조건],
--	컬럼명3 데이터터입[제약조건]
--);

--serial 일련번호 자동부여

-- members를 다시 만들면서 NOT NULL과 DEFAULT를 적용합니다
DROP TABLE IF EXISTS members;

-- 스크립트 자리 정리해서 만들기 
CREATE TABLE members (
	id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name varchar(50) NOT NULL,
	email varchar(100) NOT NULL,
	points integer DEFAULT 0,
	created_at timestamp DEFAULT now()
);


-- members를 다시 만들면서 NOT NULL과 DEFAULT를 적용합니다
DROP TABLE IF EXISTS members;

CREATE TABLE members (
	  id 			integer 	generated always as identity primary key 	-- 아이디
	, name 			varchar(50) not null									-- 이름
	, joined_at 	date 		default current_date						-- 등록일자
	, is_active 	boolean 	default true								-- 활동여부
	, created_at 	timestamp 	default now()
);






