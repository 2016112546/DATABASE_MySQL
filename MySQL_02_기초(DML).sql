-- 데이터 베이스 생성하기 
create database ddl_student default character set utf8;

-- 테이블 생성하기 

CREATE TABLE student(
	st_number 	INT 		NOT NULL	PRIMARY KEY, 
	name	  	VARCHAR(10) NOT NULL,
    age 	  	INT 		NOT NULL,
    email 		VARCHAR(20)
    );
    
DESC student ; 

-- 1. 데이터 입력 (INSERT)
/* 
INSERT INTO 테이블명(필드1, 필드2, 필드3, 필드4, … ) 
VALUES ( 필드1의 값, 필드2의 값, 필드3의 값, 필드4의 값, … );

다음과 같이 필드명을 지정해서 입력 가능

INSERT INTO 테이블명
VALUES ( 필드1의 값, 필드2의 값, 필드3의 값, 필드4의 값, … );

필드명을 생략할 경우 모든 필드 값 입력해야 한다.
*/

-- 주의 DEFALUT 값이 설정된 필드는 생략 가능

INSERT INTO student
	VALUES (2016110000 , '조성우', 26 , '*****@naver.com'); 
INSERT INTO student
	VALUES (2016110001 , '홍길동', 25 , '*****2@naver.com'); 
INSERT INTO student
	VALUES (2016110002 , '흥부' , 24 , '*****3@naver.com'); 
INSERT INTO student
	VALUES (2016110003 , '놀부' , 23 , '*****4@naver.com'); 



-- 2. 데이터 조회 (SELECT)   

/* 
SELECT [DISTINCT] 컬럼명 [ALIAS]
  FROM 테이블명;
* DISTINCT : 중복행을 제거하고 조회
* ALIAS : 컬럼의 명칭을 부여 
*/


-- 전체 데이터 조회 

/* 
SELECT * FROM 테이블명 ; 
*/

SELECT * FROM student ; 

-- 특정 컬럼 조회

/*
SELECT 컬럼1, 컬럼2, --- FROM 테이블명 ;
*/

SELECT name, age FROM student ; 

-- 컬럼 이름 설정 
/*
SELECT 컬럼1 as 설정할이름1, 컬럼2 as 설정할이름2, ... FROM 테이블명;
*/

SELECT name as 이름 , age as 나이 FROM student ;


-- 3. 데이터 수정 (UPDATE)
/*
UPDATE 테이블명
   SET 필드1=필드1의값, 필드2=필드2의값, 필드3=필드3의값, …
 WHERE 조건식;
 */
 
-- 나이가 26살인 사람의 이름을 조성모로 변경 
UPDATE student
	SET name = '조성모'
WHERE age = 26  ;
 
-- 변경된 테이블 확인

SELECT * FROM student ; 



-- 4. 데이터 삭제 (DELETE) 
/* 
DELETE FROM 테이블명
	WHERE 조건식 ; 
*/

-- 나이가 23살인 row 삭제 

DELETE FROM student
	WHERE age= 23 ; 

SELECT * FROM student ;

