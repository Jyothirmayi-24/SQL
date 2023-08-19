between & and
		to check the range of values

	List the emps who are earning 1000 to 2000

select EMPNO,ENAME,SAL from emp where sal>=1000 and sal<=2000;

syntax
	col between min and max

	sal >=1000 and sal<=2000
	sal between 1000 and 2000
ex
select * from emp where sal between 1000 and 2000;

list the emps who are not earning between 1400 to 2500

	select * from emp where sal not between 1400 and 2500;
	select * from emp where sal  between 1400 and 2500;
 800         
1250  
2975         
1250  
2850         
3000         
5000         
1100         
 950         
3000         
1300         

date format
	'dd-mon-yy'
dd- date in number format
mon-First 3 chars of month name 
yy- year without century


Date type
	same as number types,we can do all comparisons
	>,<,>=
	
list the emp who was joined on 09-JUN-81
	select * from emp where hiredate ='09-JUN-81';
   
list the emps who are joined after 81
	select * from emp where hiredate  > '31-DEC-81';	
SELECT * FROM EMP WHERE HIREDATE >='01-JAN-82';
				    > '31-dec-81'	
list the emps who are joined not in  81
	'01-jan-81' 	to '31-dec-81'
select * from emp where hiredate <= '01-jan-81'  and  hiredate >='31-dec-81';

between and 
select ename,job,sal,hiredate from emp where hiredate NOT  between '01-jan-81'  and  '31-dec-81';

list the emps who are not joined in 82 and also clerk

select * from emp where  hiredate not between '01-jan-82'  and  '31-dec-82' AND  job='CLERK' ;


				LIKE clause
	similar to equal to ' = ',to check char and date types
	
	syntax
		col like value
ex: list the details of ALLEN
	select * from emp where ename ='ALLEN';
OR
	select * from emp where ename LIKE 'ALLEN';
LIST emps who are not working as clerk
	select * from emp where job not like 'CLERK';
OR
	select * from emp where job != 'CLERK';

			Wild cards

	to represent unknown chars
	'  _  '	- single char
	'  % '	- multiple chars
	clerk
	clark
	cl_rk
SELECT JOB FROM EMP WHERE JOB LIKE 'CL_RK';

list the emps who are having max 4 chars in their names

	SELECT ENAME FROM EMP WHERE ENAME LIKE '____';
ENAME
---------
WARD
KING
FORD

list the emps who are having A as 3rd char
select ename from emp where ename like '__A%';
	

list the emps who are having A as first char

	select ename from emp where ename = 'A%';
	select ename from emp where ename like 'A%';
	ALLEN 
	TURNER x
	SMITH  x
	ADAMS	
	WARD x
	
		
list the emps who are having R as last char in their name
select * from emp where ename like '%R';
		
	select ename,JOB from emp where ename like '%R%' AND ENAME LIKE '____';

list the emps who are having R in their names


select * from emp where ename like '%LL%' AND JOB='CLERK';


List the emps who are having S as first char,T as last char


select ename from emp where ename like 'S%' and ename like '%T';
TURNER X
SMITH
WARD
SCOTT
FORD

select ename from emp where ename like 'S%T';


list the emps who are NOT  having S in THEIR NAMES

select ename from emp where ename NOT like '%S%'  ;
	SMITH
	SCOTT
	JONES
	WARD
					%S			S%		%S%

 select ename from emp where ename like '%R_';

list the emps who are NOT having T in their names	
select ename from emp where ename NOT like '%T%';

list the emps who are having char  A as 2 nd  in their names
	'_A%'


	IS Clause
		to check null or not null values
null means Empty
		not even 0 or ' '
	col IS null 
	col is not null
list the emps who are not getting commision
	select * from emp where Comm is NULL;

list the emps who are getting commision
	select * from emp where Comm is NOT  NULL;

List the emp who is the boss of all
	select * from emp where MGR IS NULL;


ENAME      JOB              	SAL    		COMM
---------- 	--------- 			---------- 	----------
SMITH      	CLERK            	800
ALLEN      SALESMAN        1600        300
WARD       SALESMAN        1250        500
JONES      	MANAGER         2975
MARTIN   SALESMAN        1250       1400
BLAKE     MANAGER         2850
CLARK     MANAGER         2450
SCOTT      ANALYST         3000
KING        PRESIDENT       	5000
TURNER   SALESMAN        1500          0
ADAMS    CLERK           	    1100

ENAME      JOB              SAL       COMM
---------- --------- ---------- ----------
JAMES      CLERK            950
FORD       ANALYST         3000
MILLER     CLERK           1300


