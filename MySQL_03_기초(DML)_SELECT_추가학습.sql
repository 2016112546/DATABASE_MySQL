create database SELECT_student default character set utf8;

-- 테이블 생성하기 

use SELECT_student ;

CREATE TABLE student(
	st_number 	INT 		NOT NULL	PRIMARY KEY, 
	first_name	VARCHAR(10) NOT NULL,
	last_name	VARCHAR(10) NOT NULL,
    age 	  	INT 		
    );

-- 데이터 삽입하기 
INSERT INTO student
	VALUES (2016110000 , '조','성우', 26 ); 
INSERT INTO student
	VALUES (2016110001 , '김','00', 20 ); 
INSERT INTO student
	VALUES (2016110002 , '방','ㅁㅁ', 25 ); 
INSERT INTO student
	VALUES (2016110003 , '송','**', 24 ); 
INSERT INTO student
	VALUES (2016110004 , '김','00', 23 ); 


-- 데이터 조회 (SELECT) +추가학습
    
-- 데이터 조회 명령어 (SELECT)
/* 
SELECT [DISTINCT] 컬럼명 [ALIAS]
  FROM 테이블명
 WHERE 조건식
 ORDER BY 컬럼 또는 표현식 [ASC | DESC];
* DISTINCT 	: 중복행을 제거하고 조회
* ALIAS 	: 컬럼의 명칭을 부여 
* ASC   	: 오름차순
* DESC  	: 내림차순
*/


-- 1. 전체 데이터 조회 

/* 
SELECT * FROM 테이블명 ; 
*/

SELECT * FROM student ; 

-- 2. 특정 컬럼 조회

/*
SELECT 컬럼1, 컬럼2, --- FROM 테이블명 ;
*/

SELECT first_name, last_name FROM student ; 

-- 3. 컬럼 이름 설정 (ALIAS)
/*
SELECT 컬럼1 as 설정할이름1, 컬럼2 as 설정할이름2, ... FROM 테이블명;
*/


-- first name 과 last name 을 성과 이름으로 변경하여 출력한다. 

SELECT first_name as 성 , last_name as 이름 FROM student ;

-- 4. 컬럼 합치기 ( Concatenation )

/* 
SELECT concat(컬럼1, 컬럼2) as 변경명칭
	FROM 테이블명 ;
*/

-- 성 과 이름 컬럼 합치기 
SELECT concat(first_name, last_name) as Name
	FROM student ;

-- 5.중복행 제거 (DISTINCT)

/*
SELECT DISINCT 컬럼명1,컬럼명2,... FROM 테이블명 ;
*/

-- 이름이 같은 김00 제거  

SELECT DISTINCT first_name, last_name FROM student ;

-- 6. 정렬 (ORDER BY) 

/*
SELECT 컬럼명1, 컬럼명2, ...
  FROM 테이블명
 ORDER BY 컬럼명 [DESC];
 
 * DESC : 내림차순 
 */
 
 -- 오름차순 정령 (나이순)
 
 SELECT * FROM student
	ORDER BY age ;
 
 -- 내림차순 정렬 (나이순)
 
 SELECT * FROM student
	ORDER BY age DESC ;
    
    
-- 7.특정 행 검색 (WHERE) 

-- 특정 행검색 

/* 
SELECT [DISTINCT] 컬럼명 [ALIAS]
  FROM 테이블명
 WHERE 조건식
*/

-- 