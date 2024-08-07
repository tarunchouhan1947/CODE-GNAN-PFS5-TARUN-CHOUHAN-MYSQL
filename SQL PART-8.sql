USE HELLO;

CREATE TABLE EMPLOYEE123(
	ID INT PRIMARY KEY,
	AGE INT,
    EMPNAME VARCHAR(50),
    SALARY int
);

INSERT INTO EMPLOYEE123 VALUES (1,25,"TARUN 1",20000),(2,20,"TARUN 2",23000),(3,50,"TARUN 3",50000),(4,27,"TARUN 4",17000);

SELECT * FROM EMPLOYEE123;

-- LOGICAL
SELECT * FROM EMPLOYEE123 WHERE AGE>25 AND SALARY>20000;
SELECT * FROM EMPLOYEE123 WHERE AGE>25 OR SALARY>20000;
SELECT * FROM EMPLOYEE123 WHERE  NOT AGE>20;

-- NULL OPERATOR
CREATE TABLE EMP123(
	EMPNAME VARCHAR(50),
    EMPMOBILE BIGINT,
    EMPEMAIL VARCHAR(30)
);

INSERT INTO EMP123 VALUES ("TARUN 1",1234567890,"TARUN@GMAIL.COM"),("TARUN 2",0987654321,"TARUN@GMAIL.COM");
INSERT INTO EMP123 (EMPNAME,EMPMOBILE) VALUES ("TARUN 3",7893570611),("TARUN 4",9390488069);

SELECT * FROM EMP123;

SELECT EMPEMAIL FROM EMP123 WHERE EMPEMAIL IS NOT NULL;
SELECT EMPMOBILE FROM EMP123 WHERE EMPEMAIL IS NULL;

-- BETWEEN

SELECT * FROM EMPLOYEE123;

SELECT EMPNAME FROM EMPLOYEE123 WHERE SALARY BETWEEN 20000 AND 30000;

-- IN 

SELECT * FROM EMPLOYEE123;

SELECT EMPNAME FROM EMPLOYEE123 WHERE AGE IN (20,27);

-- CASE
SELECT * FROM EMPLOYEE123;

SELECT *,
	CASE 
		WHEN SALARY >= 30000 THEN (SALARY * 0.30)
        WHEN SALARY >= 18000 THEN (SALARY * 0.20)
        ELSE 0.0
	END AS DISCOUNT
FROM EMPLOYEE123;
