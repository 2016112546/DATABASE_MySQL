-- 데이터 베이스 생성하기 <create>
-- utf 8을 사용하는 이유는 한국말을 사용 가능하게 하기 위해서이다. 
create database practice_01 default character set utf8;

-- 생성된 데이터 베이스들 확인하기 <show> 
-- information_schema 기본적으로 생성되는 데이터 베이스 
-- mysql 기본적 데이터 베이스
-- 생성한 practice_01이 생성된것을 확인 가능 
show databases ;

-- 원하는 데이터 베이스로 이동하기 <use> 

use practice_01 ;

-- 현재 db정보를 조해하기 
SHOW TABLE STATUS ; 

-- 내부 테이블 조회 
show tables;


-- 특정 테이블의 컬럼 정보를 조회 
-- DESC 테이블명 ; 
DESC student ; 



-- 테이믈 반들기 <CREATE TABLE [테이블명] (필드명 자료형(자릿수), ...... ) ;
/*
CREATE TABLE 테이블명(
  필드명1 타입 [NULL | NOT NULL][DEFAULT ][AUTO_INCREMENT],
  필드명2 타입 [NULL | NOT NULL][DEFAULT ][AUTO_INCREMENT],
  ...
  PRIMARY KEY(필드명)
);
*/

CREATE TABLE Student(
	st_number 	INT 		NOT NULL 	PRIMARY KEY, 
	name	  	VARCHAR(10) NOT NULL,
    age 	  	INT 		NOT NULL,
    email 		VARCHAR(20)
    );
-- 테이블 확인  
    
show tables ;

-- 테이블 구조 확인 

DESC Student;

-- 테이블 수정 (ALTER)

-- 1) 컬럼 추가 
/*
ALTER TABLE 테이블명
  ADD 필드명 타입 [NULL | NOT NULL][DEFAULT ][AUTO_INCREMENT];
*/

ALTER TABLE STUDENT 
	ADD major varchar(10);
    
-- 수정 확인하기

DESC STUDENT ;

-- 2) 컬럼 삭제 
/*
ALTER TABLE 테이블명
 DROP 필드명;
 */
 
 ALTER TABLE STUDENT
	DROP major;
    
-- 수정 확인 

DESC STUDENT ;

-- 3) 컬럼 수정 
/*
ALTER TABLE 테이블명
  CHANGE 필드명 새필드명 타입 [NULL | NOT NULL][DEFAULT ][AUTO_INCREMENT];
*/

ALTER TABLE STUDENT 
	change name first_name varchar(10);

-- 수정 확인

DESC STUDENT ;

-- 4) 테이블명 수정 
/*
ALTER TABLE 테이블명 RENAME 변경이름;
*/

ALTER TABLE STUDENT RENAME STUDENT01;

-- 수정 확인
show tables ;

-- 3. 테이블 삭제(DROP) 

/* 
DROP TABLE 테이블명 ; 
*/
DROP TABLE STUDENT01 ;

show tables ; 


