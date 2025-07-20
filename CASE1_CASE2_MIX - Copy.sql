SQL> 
SQL> --31.WAQTD NAMES OF THE EMPLOYEES EARNING MORE THAN SCOTT IN ACCOUNTING DEPT
SQL> 
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL>(SELECT SAL
  4  		FROM EMP
  5  		WHERE ENAME='SCOTT') AND DEPTNO=(SELECT DEPTNO
  6  							FROM DEPT
  7  							WHERE DNAME='ACCOUNTING');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
KING                                                                                                                                                                                                    

SQL> --32.WAQTD DETAILS OF THE EMPLOYEES WORKING AS MANAGER IN THE LOCATION CHICAGO
SQL> 
SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB='MANAGER' AND DEPTNO=(SELECT DEPTNO
  4  					FROM DEPT
  5  					WHERE LOC='CHICAGO');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   

SQL> --33.WAQTD NAME AND SAL OF THE EMPLOYEES EARNING MORE THAN KING IN THE DEPT ACCOUNTING
SQL> 
SQL> SELECT ENAME, SAL
  2  FROM EMP
  3  WHERE SAL > (SELECT SAL
  4  			FROM EMP
  5  			WHERE ENAME='KING') AND DEPTNO=(SELECT DEPTNO
  6  							FROM DEPT
  7  							WHERE DNAME='ACCOUNTING');

no rows selected

SQL> --34.WAQTD DETAILS OF THE EMPLOYEES WORKING AS SALESMAN IN THE DEPARTEMENT SALES
SQL> 


SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB='SALESMAN' AND DEPTNO=(SELECT DEPTNO
  4  					FROM DEPT
  5  					WHERE DNAME='SALES');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   

SQL> --35.WAQTD NAME , SAL , JOB , HIREDATE OF THE EMPLOYEES WORKING IN OPERATIONS DEPARTMENT AND HIRED BEFORE KING
SQL> 
SQL> SELECT ENAME, SAL, JOB, HIREDATE
  2  FROM EMP
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM DEPT
  5  			WHERE DNAME='OPERATIONS') AND HIREDATE < (SELECT HIREDATE
  6  									FROM EMP
  7  									WHERE ENAME='KING');

no rows selected

SQL> --36.DISPLAY ALL THE EMPLOYEES WHOSE DEPARTMET NAMES ENDING 'S'
SQL> 


SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  			FROM DEPT
  5  			WHERE DNAME LIKE '%S');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   

6 rows selected.

SQL> --37.WAQTD DNAME OF THE EMPLOYEES WHOS NAMES HAS CHARACTER 'A' IN IT



SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE ENAME LIKE '%A%');

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
ACCOUNTING                                                                                                                                                                                              
RESEARCH                                                                                                                                                                                                
SALES                                                                                                                                                                                                   

SQL> --38.WAQTD DNAME AND LOC OF THE EMPLOYEES WHOS SALARY IS RUPEES 800
SQL> 
SQL> SELECT DNAME, LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE SAL = 800);

DNAME          LOC                                                                                                                                                                                      
-------------- -------------                                                                                                                                                                            
RESEARCH       DALLAS                                                                                                                                                                                   

SQL> --39.WAQTD DNAME OF THE EMPLOYEES WHO EARN COMISSION
SQL> 
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE COMM IS NOT NULL);

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
SALES                                                                                                                                                                                                   

SQL> --40.WAQTD LOC OF THE EMPLOYEES IF THEY EARN COMISSION IN DEPT 40
SQL> 



SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE COMM IS NOT NULL) AND DEPTNO=40;

no rows selected


SQL> SPOOL OFF
