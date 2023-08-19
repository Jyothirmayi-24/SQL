Distinct clause
	to display "unique" values
	syntax 
	select distinct <col> from <table>;

list the different job types
	select distinct job from emp;
list the unique deptno 
	select  distinct deptno from emp;

select distinct job,ename from emp;

			Joins
	to combine 2 or more tables data
types
	Equi join
	Non-Equi join
	outer join
	self join

master -DETAIL relationship
			STU										PARENT
ATTEND			EXAM				FEE			CHILD

DEPT			parent
	"DEPTNO" pk		DNAME		LOC

EMP			child
empno pk		deptno fk
integrity constraint (SCOTT.FK_DEPTNO) violated - parent key not found 

DELETE FROM DEPT WHERE DEPTNO=40;


SQL> select * from dept;

    DEPTNO 	DNAME          		LOC
---------- 		-------------- 			----------
        10 		ACCOUNTING     	NEW YORK
        20 		RESEARCH       	DALLAS
        30 		SALES          		CHICAGO
        40 		OPERATIONS     	BOSTON

insert into  emp(EMPNO,ENAME,JOB,DEPTNO) values(11,'abc','CLERK',99);

integrity constraint (SCOTT.FK_DEPTNO) violated - parent key not found

 
1 row created.

COURSE							PARENT
	COURSE_ID		CNAME		
		101				ECE
		102				EEE
		103				CSE
		104				MECH
		105				IT
STU								CHILD
1000
		300				CSE
		250				MECH
		300				ECE
		150				EEE	
		
Relationships
			1		-	1
			1		-	many
			many 	-	1		X(Relational model)
			many	-	many	X	

EMP
	EMPNO	ENAME	JOB	SAL	MGR	COMM 	"DEPTNO" fk
	HIREDATE
	select * from emp,dept;
56 rows selected.	
	emp 14
	dept 4	=56



		stu	101
	exam	adm	attendance
101	1sem
101	2sem
	
		faculty	1
		"teach"
		student	MANY

emp	14
dept	4		product=56	


Equi join or inner or natural
	equal values in both tables
	syntax
			table1.col = table2.col

list the emps name,job,sal,dname and location of all emps

	select ename,job,sal,deptno,dname,loc from emp,dept where emp.deptno=dept.deptno;

	column ambiguously defined

	select ename,job,sal,dname,loc,emp.deptno,dept.deptno from emp,dept where emp.deptno=dept.deptno;

column ambiguously defined

		Alias 
	column alias	empno " emp number",loc "LOCATION"

eX:
selEct empno,ename "Emp Name",sal "BASIC SALARY",mgr MANAGER FROM EMP;

list the emps name,basic salary,hra,da,ta and gross salary

SELECT ENAME,SAL " BASIC SAL",SAL*0.1 HRA,SAL*0.1 DA,SAL*0.12 "TA",SAL +SAL*0.32 "GROSS SALARY"  FROM EMP;

SELECT ENAME,SAL,SAL*0.1 ,SAL*0.1 ,SAL*0.12 ,SAL +SAL*0.32  FROM EMP;


	SAL * 10/100

	table alias

		TABLE <NAME>

select ename,job,sal,EMP.deptno,DNAME,LOC FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

	select ename,job,sal,E.deptno,D.DEPTNO,dname,loc from emp  e,dept D where E.deptno=D.deptno;

column ambiguously defined















