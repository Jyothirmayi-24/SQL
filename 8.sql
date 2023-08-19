
							SUB-QUERIES
			A query inside a Query.
	syntax
	select col(s) from <table(S)> where col oper (select col from <table> 
													where <cond>);

List the emps who are earning morethan SCOTT

  SELECT SAL FROM EMP WHERE ENAME LIKE 'SCOTT';

   SAL
------
  3000
select * from emp where sal>3000;
																		3000
SQL> SELECT ENAME,JOB,SAL FROM EMP WHERE SAL>=(SELECT SAL FROM EMP WHERE ENAME LIKE 'SCOTT');

ENAME      JOB              SAL
---------- --------- ----------
SCOTT      ANALYST         3000
KING       PRESIDENT       5000
FORD       ANALYST         3000

list the emps who are working in same dept of JONES

SELECT ENAME,JOB,SAL,DEPTNO FROM EMP WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME LIKE 'JONES');


List the emps who are earning morethan REQUIRED ename

SELECT ENAME,JOB,SAL FROM EMP WHERE SAL>=(SELECT SAL FROM EMP WHERE ENAME LIKE '&ename');

/* & --> used for required option given by user*/

SELECT  empno, enamo, sal, deptno
FROM     emp
WHERE         empno  =  &employee _num;

Enter value  for  employee_num:    7369

old 3: WHERE empno = &employee_num

new 3: WHERE empno = 7369 

/*   && --> Use the double-ampersand (&&) if you want to reuse the variable value vvithout prompting the user each time.*/

SELECT  empno,  ename,  job,  &&column_name

FROM  emp

ORDER BY  &column_name ;
Enter value for column_name:  deptno

old 1: SELECT empno, ename, job, &&column_name
new 1: SELECT empno, ename, job, deptno
old 3: ORDER BY &column_name
new 3: ORDER BY deptno  


SQL> SELECT ENAME,JOB,SAL FROM EMP WHERE SAL<3000;


USING sub -query

SQL>  SELECT ENAME,JOB,SAL FROM EMP WHERE SAL<  (SELECT SAL FROM EMP WHERE ENAME LIKE 'ALLEN');

ENAME      JOB              SAL
---------- --------- ----------
SCOTT      ANALYST         3000
KING       PRESIDENT       5000
FORD       ANALYST         3000

LIST THE emps who are working same job as SMITH sort them by their names



 SELECT job FROM EMP WHERE ENAME LIKE 'SMITH';
SELECT * FROM EMP WHERE JOB LIKE 'CLERK';

SELECT ename,job,sal FROM EMP WHERE JOB LIKE (  SELECT job FROM EMP WHERE 	ENAME='SMITH') ORDER BY ENAME ;

list the managers who are having only 1 employee

select * from emp where mgr in(select mgr from emp group by mgr having count(*) =1);

*** multiple row sub query***

List the emps who are doing the same job as in 10 department

SELECT * FROM EMP WHERE JOB IN(  SELECT job FROM EMP WHERE DEPTNO=10);

List the emps who are in the same dept as  clerks are working


SELECT ename,job,deptno FROM EMP WHERE deptno IN(select deptno from emp where job='ANALYST');


SELECT ename,job,deptno FROM EMP WHERE deptno in(select deptno from emp where job='SALESMAN');

 single-row subquery returns more than one row

list the emps who are earning more than ALLEN AND working not like WARD

SELECT * FROM EMP WHERE SAL> (SELECT SAL FROM EMP WHERE ENAME LIKE 'ALLEN')
 AND 
JOB NOT LIKE (SELECT JOB FROM EMP WHERE ENAME='WARD');


	Recursive join
retreve the emps who are working same as ALLEN

SELECT * FROM EMP WHERE JOB=(SELECT JOB FROM EMP WHERE ENAME='ALLEN');
	First sub query returns 1 value and main query will be executed based on this.


List the emps who are earning more than MILLER
	SELECT ENAME,JOB,SAL FROM EMP WHERE sal>
	(select sal from emp where ename='MILLER');

List the emps who are working in same dept of BLAKE and SCOTT

select * from emp where deptno in( 
(SELECT DEPTNO FROM EMP WHERE ENAME LIKE 'BLAKE'),
(SELECT DEPTNO FROM EMP WHERE ENAME LIKE 'SCOTT'));

List the emps who are working in same dept of SALES

SELECT ENAME,JOB,SAL,E.DEPTNO,DNAME FROM EMP E ,DEPT D  WHERE 			E.DEPTNO=D.DEPTNO 
AND
 E.DEPTNO=(SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

WITHOUT USING equi join
SELECT ENAME,JOB,SAL,DEPTNO FROM EMP where deptno=(select deptno from dept where dname='SALES');

sql> set linesize 120

		FUNCTIONS
	pre-defined functions		to do the task

	categories
	1. numerical
	2. text
	3.date
	4.CONVERSION

DUAL table
	which is for testing functions
SQL>  SELECT 4543*53 FROM DUAL;

   4543*53
----------
    240779

SELECT * FROM DUAL;

D
-
X

abs( )
select abs(-55) from dual;		ABSOLUTE
select abs(+55) from dual;
 ABS(-55)
---------
       55

SQL> select power(4,3) from dual;

POWER(4,3)
----------
        64
SELECT sqrt(10) from dual;


SQL> select floor(56.999) from dual;

FLOOR(56.666)
-------------
           56

select ceil(56.001) from dual;
select round(55.67885,2) from dual;
select tan(90) from dual;
select cos(60) from dual;


char functions

select upper('welcome') from dual;
select lower(job) from emp;

select initcap('front lines edutech') from dual;


SELECT SUBSTR('FRONT LINES MEDIA',7,5) FROM DUAL;
SUBST
-----
LINES

select initcap(' SQL functions example') from dual;
INITCAP('SQLFU
--------------
 Sql Functions

		||		concatenation operator

select 'front' ||' lines media' from dual;
select initcap(ename) , Initcap(JOB) ,sal from emp;

List the emps in sentense format

select INITCAP(ename) || ' is working as ' || Initcap(JOB) || ' and earning salary of '||sal from emp;
INITCAP(ENAME)||'ISWORKINGAS'||JOB||'ANDEARNINGSALARYOF'||SAL
--------------------------------------------------------------
Smith       is working as Clerk and earning salary of 800
Allen       is working as Salesman and earning salary of 1600
Ward        is working as Salesman and earning salary of 1250
Jones       is working as Manager and earning salary of 2975
Martin      is working as Salesman and earning salary of 1250
Blake       is working as Manager and earning salary of 2850
Clark       is working as Manager and earning salary of 2450
Scott       is working as Analyst and earning salary of 3000
King        is working as President and earning salary of 5000
Turner      is working as Salesman and earning salary of 1500
Adams       is working as Clerk and earning salary of 1100

rpad 		lpad
select rpad('abc',15,'*') from dual;

SELECT RPAD(INITCAP(ENAME),10,' ') ||'ISWORKINGAS'||INITCAP(JOB)||'ANDEARNINGSALARYOF'||SAL FROM EMP;
----------------------------------------------------------------------------------
James       is working as Clerk and earning salary of 950
Ford        is working as Analyst and earning salary of 3000
Miller      is working as Clerk and earning salary of 1300


LTRIM('STR')

select upper(ltrim('            welcome')) from dual;
SELECT LTRIM('          welcome      to        ')|| 'SQL' from dual;
select upper(ltrim('wel            come            '))||' TEST'  from dual;
select LTRIM(Rtrim('     wel          come            '))  ||  ' TEST'  from dual;
select trim('     wel          come            ')  ||  ' TEST'  from dual;
select Rtrim('     wel          come            ')  ||  ' TEST'  from dual;
select initcap('    dfkdk') from dual;

select rpad('Oracle',15,'#') from dual;
RPAD('ORACLE',1
---------------
Oracle#########

select lpad(ENAME,10,'*#') from EMP;
LPAD(ENAME
----------
*****SMITH
*****ALLEN
******WARD
*****JONES
****MARTIN
*****BLAKE
*****CLARK
*****SCOTT
******KING
****TURNER
*****ADAMS

LPAD(ENAME
----------
*****JAMES
******FORD
****MILLER

LPAD('ORACLE',1
---------------
#########Oracle
select rpad(lpad(ename,12,'&'),15,'*')  from emp;

Date functions

select sysdate from dual;

SYSDATE	current system date and time
	DD- MON- YY
select sysdate from dual;
SYSDATE
---------
15-DEC-22

DATE CONVERSION

	DD			DAY IN NUMBER
	MM		MONTH IN NUMBER
	MONTH	CHAR FULL NAME
	MON		CHAR 3 LETTERS
	DAY		WEEK DAY IN CHAR
	DY			FIRST THREE CHARS OF THE WEEK
	YYYY		YEAR WITH CENTURY NUMBER
	HH 		HOURS
	HH24		24 HOUR
	MI			MINUTES
	SS			SECONDS

SQL> select add_months(sysdate,9) from dual;

ADD_MONTH
---------
15-SEP-23

List the emps name and their experience in years format

select ename,months_between(sysdate,hiredate)/12 from emp;


select months_between(sysdate,'18-may-01')/12 FROM DUAL;
	conversion method

SELECT NEXT_DAY(SYSDATE,'MONDAY') FROM DUAL;



DATE CONVERSION

	DD			DAY IN NUMBER
	MM		MONTH IN NUMBER
	MONTH	CHAR FULL NAME
	MON		CHAR 3 LETTERS
	DAY		WEEK DAY IN CHAR
	DY			FIRST THREE CHARS OF THE WEEK
	YYYY		YEAR WITH CENTURY NUMBER
	HH 		HOURS
	HH24		24 HOUR
	MI			MINUTES
	SS			SECONDS

date to char
	select to_char(sysdate,'MONTH ,yyyy,dd Day HH24:MI:SS ') from dual;

SQL> select to_char(sysdate,'MONTH ,yyyy,dd DY') from dual;

TO_CHAR(SYSDATE,'MONTH,YYYY,
----------------------------
january   ,2022,03 monday

SQL> select to_char(HIREdate,'MON ,yyyy,dd DAY') from EMP;


SQL>  select to_char(TO_DATE('&DATE'),'Month ,yyyy,dd Day') from dual;

TO_CHAR(SYSDATE,'MON,Y
----------------------
JAN ,2022,03 MONDAY

SELECT TO_DATE('12-31-2022','MM-DD-YYYY') FROM DUAL;
TO_DATE('
---------
31-DEC-22
