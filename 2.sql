Query


				SELECT statement
		To retreve the data from the data base.

syntax:
	SELECT * [  COL1,COL2,... COL N ]  FROM <TABLE(s)> 
			[WHERE <COND>]
			[GROUP BY <COL> [HAVING <COND>]
			[ORDER BY <COL> DESC]  ;
note:
	1. Not a case sensitive(upper/lower) for commands.
	2. sensitive only for "char",date  data
	3. we can write in 1 or more lines and end with semi colan ( ; )

EX: Retreve all the rows from EMP table
	EMP
EMPNO		ENAME		JOB		SAL	HIREDATE	COMM 	MGR	DEPTNO


SQL> 	 		prompt
EX: Retreve all the rows from EMP table

SQL> select * FROM EMP;

EX: List the employee no,name,job and salary of all employees

	SQL> select empno,ename,job,sal from EMP;	
				
EX: to retreve employee name,job,NO and salary of all employees

	SQL> select ename,JOB,empno,sal from emp;	

to retreve employees no,name,job and deptno who are earning /getting lessthan 1500 

	select empno,ename,job,deptno,SAL from emp WHERE SAL<1500;

	select empno,job,deptno,sal from emp where sal<1500;

LIST THE EMPS WHO ARE WORKING IN DEPTNO 10


	SELECT * FROM EMP WHERE DEPTNO=10;

LIST THE emps who are earning more than  or equal to 2400

	select * from emp where sal>=2400;

NOTE: char and date types uses ' ' for storing,retreval of data

Retreve the employees name,job,sal of those who are working as CLERK
	SELECT ename,JOB,SAL FROM EMP where  job='CLERK';

List the emps who are working in 10 dept
	select * from emp where deptno=10;

List the emps who are getting less than 1500 salary
	select * from emp where sal<1500;	

List the emps who are NOT working in 20 dept

SELECT * FROM EMP WHERE DEPTNO !=20;

Relational 	>		<		>=		<=		= (equal to or not)		!= (not equal to 

logical
		and		-	 compulsory
		or		-	optional(either )
		not




 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      	CLERK           7902 17-DEC-80        800                    20
  7499 ALLEN      	SALESMAN        7698 20-FEB-81       1600        300         30
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7839 KING       PRESIDENT            17-NOV-81       5000                    10
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
  7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


	String s="abc12343";
	int a[]={2,4,6};


Recorded session
		frontlinesedutech.com
		login
			username		: mail id
			password		:		forget password	& set password
		course		:		recording

videos
Installation
			oracle download
			
after downloading,extract the zip file and store it in folder.
	install the file.




