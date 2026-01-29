select @@hostname;

-- 이창은 메모장 처럼 사용됨
-- 스크립트를 1줄씩 실행하는 것이 기본인 (ctrl + enter)
-- 만약 더미데이터를 20개 입력한다면 (블럭 설정 ctrl + shift + enter)
-- 스키마는 DB와 table 모여있는 곳
-- 중요한 자료는 sys에 있음 
-- sakila - tables - actor,address 안에 Columns = 더미데이터 표시

use sakila; -- skila라는 DB가서 사용할게
select * from actor; -- actor table에 모든 값 가져와

use world; -- world DB가서 사용할게
select * from city; -- city table에 모든 값 가져와


-- 정의어 (DDL , data definition language)  :  데이터베이스 , 테이블, 사용자,뷰,인덱스,스키마 생성/수정/삭제
-- 	 	 생성    :  CREATE DATABASE, CREATE TABLE , CREAT USER
-- 	     수정    :  ALTER DATABASE, ALTER TABLE, ALTER USER
-- 	     삭제    :  DROP DATABASE, DROP TABLE, DROP USER
-- 	     이름변경 :  RENAME TABLE, RENAME USER
-- 	     보기    :  SELECT

create database initialSQL;
drop database initialsql;
create database initialSQl;

