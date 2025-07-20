SQL> 
SQL> --71.WAQTD SMITHS REPORTING MANAGER'S NAME
SQL> 
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE EMPNO = (SELECT MGR
  4  			FROM EMP
  5  			WHERE ENAME='SMITH');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
FORD                                                                                                                                                                                                    

SQL> --72.WAQTD ADAMS MANAGER'S MANAGER NAME
SQL> 
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE EMPNO = (SELECT MGR
  4  			FROM EMP
  5  			WHERE ENAME='ADAMS');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
SCOTT                                                                                                                                                                                                   

SQL> --73.WAQTD DNAME OF JONES MANAGER
SQL> 
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO = (SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE EMPNO = (SELECT MGR
  6  					FROM EMP
  7  					WHERE ENAME='JONES'));

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
ACCOUNTING                                                                                                                                                                                              

SQL> --74.WAQTD MILLER'S MANAGER'S SALARY
SQL> 
SQL> SELECT SAL
  2  FROM EMP
  3  WHERE MGR = (SELECT MGR
  4  			FROM EMP
  5  			WHERE ENAME = 'MILLER');

       SAL                                                                                                                                                                                              
----------                                                                                                                                                                                              
      1300                                                                                                                                                                                              





SQL> SELECT SAL
  2  FROM EMP
  3  WHERE EMPNO = (SELECT MGR
  4  			FROM EMP
  5  			WHERE ENAME='MILLER');

       SAL                                                                                                                                                                                              
----------                                                                                                                                                                                              
      2450                                                                                                                                                                                              

SQL> --75.WAQTD LOC OF SMITH'S MANAGER'S MANAGER.
SQL> 
SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO = (SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE EMPNO = (SELECT MGR
  6  					FROM EMP
  7  					WHERE EMPNO = (SELECT MGR
  8  							FROM EMP
  9  							WHERE ENAME = 'SMITH')));

LOC                                                                                                                                                                                                     
-------------                                                                                                                                                                                           
DALLAS                                                                                                                                                                                                  

SQL> --76.WAQTD NAME OF THE EMPLOYEES REPORTING TO BLAKE
SQL> 
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE MGR = ( SELECT EMPNO
  4  			FROM EMP
  5  			WHERE ENAME='BLAKE');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
MARTIN                                                                                                                                                                                                  
TURNER                                                                                                                                                                                                  
JAMES                                                                                                                                                                                                   

SQL> --77.WAQTD NUMBER OF EMPLPOYEES REPORTING TO KING
SQL> 
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE MGR = (SELECT EMPNO
  4  			FROM EMP
  5  			ENAME='KING');
			ENAME='KING')
			     *
ERROR at line 5:
ORA-00907: missing right parenthesis 


SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE MGR = (SELECT EMPNO
  4  			FROM EMP
  5  			WHERE ENAME='KING');

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         3                                                                                                                                                                                              

SQL> --78.WAQTD DETAILS OF THE EMPLOYEES REPORTING TO JONES
SQL> 
SQL> SELECT *
  2  FROM EMP
  3  WHERE MGR = (SELECT EMPNO
  4  			FROM EMP
  5  			WHERE ENAME='JONES');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   

SQL> --79.WAQTD ENAMES OF THE EMPLOYEES REPORTING TO BLAKE'S MANAGER
SQL> 
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE MGR = (SELECT MGR
  4  			FROM EMP
  5  			WHERE ENAME='BLAKE');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JONES                                                                                                                                                                                                   
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   

SQL> --80.WAQTD NUMBER OF EMPLOYEES REPORTING TO FORD'S MANAGER
SQL> 
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE MGR = (SELECT MGR
  4  			FROM EMP
  5  			WHERE ENAME = 'FORD');

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         2                                                                                                                                                                                              

SQL> SPOOL OFF
