	Equi join
list the ename,job,sal,dname of those who are earning more than 1500

	SELECT ENAME,JOB,SAL,E.DEPTNO "emp dno",D.DEPTNO "dept dno",DNAME from emp e,dept d 	where e.deptno=d.deptno and sal>1500;

list the name,job,sal,location of the emps who are working in chicago order by their names

		SELECT ENAME,JOB,SAL,d.deptno,loc from emp e,dept d
		where e.deptno=d.deptno and loc like 'CHICAGO' order by ename;

List the ename,job,sal,dname of all emps except 10 dept

select ename,job,sal,e.deptno,dname from emp e,dept d
		where e.deptno=d.deptno and e.deptno!=10;

Retreve the emps who are working in SALES,ACCOUNTING depts

	select  ename,job,dname from emp e ,dept d
		where e.deptno=d.deptno and dname in('SALES','ACCOUNTING');


List the emps name,job,sal and dname of the emps who are working in RESEARCH and earning more than 1000 order them by their salaries in descending order

select ename,job,sal,dname from emp e,dept d where e.deptno=d.deptno and dname='RESEARCH' and sal>1000 order by sal DESC;


Non-Equi join	
	no need of 2 tables similar col,values

 select * from salgrade;

  GRADE        		LOSAL      HISAL
    ------- 	    ---------- 	  ----------
      1        	      700       1200
      2               1201       1400
      3               1401       2000
      4               2001       3000
      5               3001       9999

student
		sno	name	m1	m2	m3

STU_CLASSES
	find the distinction >	75%
			first			>=60 
			second		>=50
			third		>=35
			or 
			Fail
STU_GPA
GPA
	GRADE		MIN		MAX
		O			95			100	
			O		95+
			A+		85+
			A		75
			B+
			B
	list the emps by their grades

select ename,job,sal,grade from emp,salgrade where sal between LOSAL and HISAL;

select * from emp,salgrade where sal between LOSAL and HISAL;

	LIST the emps who are getting 2,3 grades


select ename,job,sal,grade from emp,salgrade where sal between LOSAL and HISAL
		and grade in(2,3);
	
list the emps grades of deptno except 20


select ename,job,sal,deptno,grade from emp,salgrade where sal between LOSAL and HISAL 	and deptno !=20;
select * from emp,salgrade where sal between LOSAL and HISAL and deptno !=20;

	***LIST the emps name,job,sal,loc and grades of the emps ***

SELECT ENAME,JOB,SAL,LOC,GRADE,E.DEPTNO,D.DEPTNO FROM
 EMP E,DEPT D,SALGRADE WHERE E.DEPTNO=D.DEPTNO AND SAL BETWEEN LOSAL AND HISAL;

		Outer Join ( + )

		left		table1.col(+)=table2.col
		right		table1.col=table2.col(+)
	similar to Equi join and adds the row(s ) not satisfied by condition

	including unsatisfied rows of the cond.
	
	SELECT ENAME,JOB,SAL,E.DEPTNO,D.DEPTNO,DNAME from emp e,dept d
		where e.deptno(+)=d.deptno;


			SELF join or Recursive join


		A table which is joined "BY it Self"		"Recursion"

empno	ename	job	sal	mgr		hiredate		deptno	comm

	dividing table into 2 tables
List the emps who are working under whom????

	select e.empno,e.ename "EMP NAME",e.job "E JOB",m.empno,m.ename "M NAME",m.job "M JOB" from emp E,emp M WHERE e.mgr=m.empno;

	SUB-QUERIES and functions

select * from emp where hiredate like '%FEB%';

				STUDENT	SNO,NAME,ADMNO,DOB,ADDR
	EXAM			
	SNO,COURSE
	SEMESTER
	SUBJECTS


		ATTEND
	SNO,NAME,MONTH,NO OF DAYS PRESENT	

