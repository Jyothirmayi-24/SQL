Relational operators
	>		<			=
	>=		<=			!=
Clause: condition
	where <cond>
1. retreve the emps who are earning more than 1000

	select * from emp where sal>1000;

2. list the name ,job,sal and doj of the emps whose deptno is 30

select ename,job,sal,hiredate,deptno from emp where deptno=30;

EMP

EMPNO ENAME      JOB              MGR  HIREDATE         SAL       COMM     DEPTNO

To list the tables available in the user
select * from tab;

select statement with String searching
		strings and date types are work with ' text '

	Retreve the emps who are working as managers
	SELECT * FROM EMP WHERE JOB='MANAGER';

List the emps name,job,sal,deptno of those whose name is ALLEN
	SELECT Deptno,job,sAL,ENAME from emp where eNAme='ALLEN';


	Logical operators	
		AND		OR		NOT		
									returns boolean value(true/false)
AND	- 	must
OR		-	EITHER ONE
NOT		OPPOSITE boolean value

LIST the emps who are working as MANAGER ,earning 2500 or more  salary

SQL>select ename,job,sal from emp where job='MANAGER'  and sal>=2500;
SQL>select ename,job,sal from emp where job='MANAGER'  OR  sal>=2500;  X

	list the emps who are working in 10 dept ,WORKING AS clerk and earning lessthan  or equal to1800

select * from emp where job='CLERK'  and  DEPTNO=10 and sal<=1800;


14
	10= deptno 10 rec
	3= clerk   
	1= <=1800		1 record
			!=
List the emps who are not working as clerk

		select * from emp where job!= 'CLERK';

List the emps EXCEPT in 20 dept
	select * from emp where deptno !=20;

List the emps who are working as clerk,analyst

	select * from emp where job='CLERK'  OR JOB='ANALYST' ;
	select * from emp where job='CLERK'  and JOB='ANALYST' ; X
=	EQUAL
: =	ASSIGNMENT(pl/sql)

List the emps who are not working as MANAGER or SALESMAN

SELECT ENAME,JOB,SAL FROM EMP WHERE JOB!='MANAGER' and JOB!='SALESMAN';


List the emps who are WORking IN 20,30 depts
	select * from emp where deptno=20 OR deptno=30;

List the emps EXCEPT IN 10,30 depts

	select * from emp where deptno!=10 AND deptno!=30;

List the emps whose names are SMITH,ALLEN

select * from emp where ename ='SMITH' OR ename='ALLEN';

select * from emp where ename ='SMITH' AND ename='ALLEN';
	no rows selected

List the emp name,job,sal and deptno of those emps who are working as MANAGER,CLERK also working in deptno 30 
select ENAME,JOB,SAL,DEPTNO from emp where deptno=30 AND   JOB='MANAGER' OR Job='CLERK'  ;

select ENAME,JOB,SAL,DEPTNO from emp where deptno=30 AND
  JOB in('MANAGER','CLERK' );

list the emps except clerk

	Relational Operators
	>	<	=
	!=	>=	<=
select * from emp where job !='clerk';

		Clauses
IN	
LIKE
BETWEEN & AND
IS

	IN
	To check multiple values are equal or not ,similar to '=' and OR
	syntax
	col IN(VAL1,VAL2,...)

List the emps who are working in 30,20 depts
	select * from emp where deptno=20 or deptno=30;

	select * from emp where deptno IN(20,30);

LIST the details of WARD,JONES,SMITH


Select*from EMP WHERE ename in('WARD' , 'JONES', 'SMITH');

List the emps who are not working as CLERK,SALESMAN

	select * from emp where job  NOT IN( 'CLERK','SALESMAN');

	select * from emp where job!='CLERK'  AND JOB!='SALESMAN';

/ AS SYSDBA
	
		




	
	
