
Date
	List the emps who are joined in the year of 81
between & and
	1jan81 to 31dec81

Like
	select ename,job,hiredate from emp where hiredate like '%81';

	List the emps who are joined in the month of December


	dd-mon-yy
	dd-dec-yy
	'%DEC%'
	select ename,job,hiredate from emp where hiredate like '%DEC%';

LIST THE EMPS who are not joined  in may,but joined in april

 select ename,job,hiredate from emp where hiredate NOT like '%MAY%' AND HIREDATE LIKE '%APR%';

list the emps except in the month of Decemeber
select ename,job,hiredate from emp where hiredate not like '%DEC%';


				Order by clause

	to retreve the data in ORDER(Asc/desc) we use this clause.
	syntax
		order by <col> [desc]

NOTE:	"order by clause must be placed after all conditions"

			1,00,000
1st			   50,000	
2nd			   10,000	
3rd			     2,000

	List the emps sort by their names
	select * from emp  order by ename ;

	list  the emps sort by their sal in reverse order
	
	select ename,job,sal from emp  order by SAL desc;

list the emps who are working in 30 dept and sort by their salary

	select * from emp   where  deptno=30 order by sal;

List the emps who are working in 20,30 depts and sort them by their hiredate in descending order
select * from emp  where  deptno in (20,30) order by hiredate desc ;

List the emps who are not earning comm and sort them by their nos in Descending order

	select EMPNO,ENAME,JOB,SAL from emp where comm is null order by empno DESC;

list the emps who are having S in their names and sal more than 1400,sort by their hiredate in reverse
	select * from emp where ename like '%S%' and sal>1400 order by hiredate desc;



Group by clause
	group by <col> [having <cond>]
	summary,avg,max,min with grouping

	ex: sum of salaries of managers
		max salary of dept no 30
NOTE: when using group by ,we should not use WHERE clause

Aggregate functions

	sum (col)
	avg
	max
	min
	count(col/*)

list the sum of salaries of each job type
select job,sum(sal) from emp GROUP by job;


select deptno from emp group by deptno;
 DEPTNO
-------
     30
     20
     10

select ename from emp group by ename; X

select job from emp group by job;
JOB
---------
CLERK	
SALESMAN	
PRESIDENT
MANAGER
ANALYST

	

list the emps max  and min of salaries of each deptno 
	select deptno,max(sal),min(sal) from emp group by deptno  ;

select job,sum(sal) from emp group by job;
JOB         			SUM(SAL)
--------- 				----------
CLERK           		4150
SALESMAN        	5600
PRESIDENT       	5000
MANAGER         	8275
ANALYST         	6000

list the emps count of each job type
	select job,count(*) from emp group by job;

list the avg salaries of deptno 20
	select deptno,avg(sal) from emp group by deptno having deptno=20;


list the average,max salary of all deptno
	select deptno,avg(sal),max(sal),count(*),SUM(SAL),MIN(SAL) from emp group by deptno;


DISPLAY THE emps who are earning maximum and minimum salary in each dept
	SELECT DEPTNO,MAX(SAL),min(sal) FROM EMP GROUP BY DEPTNO;

List the emps average salaries based on their job type
	select job,avg(sal) from emp group by job;

list the sum of salaries of 10,20 depts

	select deptno,sum(sal )  from emp group by deptno having deptno in(10,20);

XX	select deptno,sum(sal )  from emp group by deptno where deptno in(10,20);XX

ENAME      JOB              SAL  
---------- --------- ---------- -
SMITH      CLERK            800         
ALLEN      SALESMAN        1600         
WARD       SALESMAN        1250         
JONES      MANAGER         2975         
MARTIN     SALESMAN        1250         
BLAKE      MANAGER         2850         
CLARK      MANAGER         2450         
SCOTT      ANALYST         3000         
KING       PRESIDENT       5000         
TURNER     SALESMAN        1500         
ADAMS      CLERK           1100         
JAMES      CLERK            950         
FORD       ANALYST         3000         
MILLER     CLERK           1300         

list the count of emps in each job type except MANAGER

	SELECT JOB,COUNT(*) FROM EMP GROUP BY JOB 
			HAVING JOB!= 'MANAGER';

List the emps lariesum,avg sas of clerk,salesman

select job,sum(sal),avg(sal) from emp group by job having job in ('CLERK','SALESMAN');


XXXselect * from emp group by job having job in ('CLERK','SALESMAN'); XXX

select deptno,count(*) from emp group by deptno;

	list the emps sum of salaries group by their jobs who are working as clerk
select job,sum(sal) from emp group by job HAVING job='CLERK';

List the emps maximum salaries of 10,20 DEPTS order by deptno

	select deptno,max(sal) from emp  group by deptno HAVING deptno in(10,20) ORDER BY DEPTNO ;
	

