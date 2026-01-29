-- 파이썬과 mySQL 병합 작업을 위한 SQL페이지
-- 절차 , 일반적으로 system(root) 계정은 개발용으로 사용하지 않는다.
-- mySQL에 사용할 id와 pw의 권한을 부여하고 db를 생성한다.

     CREATE USER 'mbc'@'localhost' identified by '1234';
--  사용자 계정 생성 'ID' @'접속서버pc '                '암호'
--               'lhj'@'192.168.0.154'           '4567'  ->반장 154주소로 들어옴
--  			 'lhj'@'192.168.0.%'             '4567'	 -> IP범위를 늘리기위해 %로 표시 / 192.168.0.1~192.168.0.255 중 어느거나
-- 				 'lhj'@'%                                -> 전체 IP , 외부에서도 접근가능 , 보안떨어짐			 
-- Navigator에 user and privileges 에서 유저 확인 , 정보 변경도 가능함
-- 사용자 계정생성은 ID가 중복되어도 됨 -> 대신 접속 PC를 다중처리 할 수 있음
-- create user 'mbc'@'192.168.0.%' ->  192.168.0.1~192.168.0.255 중 어느거나
-- create user 'mbc'@'%'

	drop user 'mbc'@'localhost';
-- 사용자 계정 삭제 'ID'@'localhost'

-- mbc 사용자에게 LMS 권한부여
-- 1. DB생성 2. 계정에 권한 주기

   CREATE database lms default character set utf8mb4 collate utf8mb4_general_ci;
-- lms DB생성          / 한국어 지원 utf-8              / 문자들은 한국어지원, 일반비교로 대소문자 구분하지않고
-- collate 문자 집합에 포함된 문자들을 어떻게 비교 하고 정렬할지 정의 하는 키워드 
-- 데이터 비교시 대소문자구분 , 문자가느이 정렬 순서 , 언어별 특수문자 처리 방식 지원 
-- utf8mb4 : 문자집합
-- gerneral : 비교규칙(간단한 일반비교)
-- ci : case insensitive (대소문자 구분하지 않음)
-- collate utf8mb4_bin : 대소문자 

-- MBC라는 계정에 lms를 사용 할 수 있게 권한 부여
grant all privileges on LMS.* to 'mbc'@'localhost';
--                     DB명.*테이블 'ID'   '접속PC'
-- all priileges : 모든 권한 부여
-- grant select, insert ON LMS.* to '알바'@'%';
--        read , create 

-- 권한 즉시 반영
flush privileges;

use mysql; -- mysql 최고 DB에 접속
select * from user; -- mysql 사용자의 목록 볼수 이음







