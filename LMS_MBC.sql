-- LMS에 대한 table 생성하고 더미데이터 입력 (CRUD)

show databases; #LMS만 보인다
use lms;

create table members( -- 멤버스 table 생성
-- 필드명          타입            옵션
	id	        int auto_increment primary key,
-- 				정수 자동번호 생성기    기본키(다른테이블과 연결용)    
    uid         varchar(50) not null unique,
-- 				가변문자 50자 , 공백 비허용 , 유일한값    
    password    varchar(255) not null ,
-- 				가변문자 255,  공백 비허용    
    name        varchar(50) not null,
--          	가변문자 50 , 공백 비허용
    role        enum ('admin','manage','user') default 'user',
-- 				열거타입(''괄호안에글자만취급)		  기본값은 user로 
	active		boolean default true,
-- 				불린타입  기본값은 true 로, True = 1 , False = 0
    created_at  datetime default current_timestamp
-- 	생성일 		날짜시간타입         기본값은 시스템시간
    );


-- 더미데이터 입력
insert into members (uid, password,name,role,active)
values ('kkw','1234','김기원','admin',true);
insert into members (uid, password,name,role,active)
values ('lhj','1234','임효정','manage',true);
insert into members (uid, password,name,role,active)
values ('kdg','1234','김도균','user',true);
insert into members (uid, password,name,role,active)
values ('ksb','1234','김수빈','user',true);
insert into members (uid, password,name,role,active)
values ('kjy','1234','김지영','user',true);

-- 더미데이터 출력
select * from members;

-- 로그인 할때
select * from members where uid='kkw' and password ='1234' and active = true ;
--                          python -> == , mysql -> = 동등비교

-- 더미데이터 수정
update members set password = '1111' where uid = 'kkw';

-- 회원 삭제
delete from members where uid = 'kkw';

-- 회원 비활성화
update members set active = false where uid = 'kkw';

