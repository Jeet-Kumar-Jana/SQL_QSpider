SQL> 
SQL> --21.WAQTD DNAME OF THE EMPLOYEES WHOS NAME IS SMITH
SQL> 
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE ENAME='SMITH');

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
RESEARCH                                                                                                                                                                                                

SQL> --22.WAQTD DNAME AND LOC OF THE EMPLOYEE WHOS ENAME IS KING
SQL> 
SQL> SELECT DNAME, LOC
  2  FROM DEPT
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE ENAME='KING');

DNAME          LOC                                                                                                                                                                                      
-------------- -------------                                                                                                                                                                            
ACCOUNTING     NEW YORK                                                                                                                                                                                 

SQL> --23.WAQTD LOC OF THE EMP WHOS EMPLOYEE NUMBER IS 7902
SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE EMPNO=7902);

LOC                                                                                                                                                                                                     
-------------                                                                                                                                                                                           
DALLAS                                                                                                                                                                                                  

SQL> --24.WAQTD DNAME AND LOC ALONG WITH DEPTNO OF THE EMPLOYEE WHOS NAME ENDS WITH 'R'
SQL> 


SQL> SELECT DNAME, LOC, DEPTNO
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE ENAME LIKE '%R');

DNAME          LOC               DEPTNO                                                                                                                                                                 
-------------- ------------- ----------                                                                                                                                                                 
ACCOUNTING     NEW YORK              10                                                                                                                                                                 
SALES          CHICAGO               30                                                                                                                                                                 


SQL> --25.WAQTD DNAME OF THE EMPLOYEE WHOS DESIGNATION IS PRESIDENT
SQL> 
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM EMP
  5  			WHERE JOB='PRESIDENT');

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
ACCOUNTING                                                                                                                                                                                              

SQL> --26.WAQTD NAMES OF THE EMPLOYEES WORKING IN ACCOUNTING DEPARTMENT
SQL> 
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM DEPT
  5  			WHERE DNAME='ACCOUNTING');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
CLARK                                                                                                                                                                                                   
KING                                                                                                                                                                                                    
MILLER                                                                                                                                                                                                  

SQL> --27.WAQTD ENAME AND SALARIES OF THE EMPLOYEES WHO ARE WORKING IN THE LOCATION CHICAGO
SQL> SELECT ENAME, SAL
  2  FROM EMP
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM DEPT
  5  			WHERE LOC='CHICAGO');

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
ALLEN            1600                                                                                                                                                                                   
WARD             1250                                                                                                                                                                                   
MARTIN           1250                                                                                                                                                                                   
BLAKE            2850                                                                                                                                                                                   
TURNER           1500                                                                                                                                                                                   
JAMES             950                                                                                                                                                                                   

6 rows selected.

SQL> --28.WAQTD DETAILS OF THE EMPLOYEES WORKING IN SALES
SQL> 
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM DEPT
  5  			WHERE DNAME='SALES');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   

6 rows selected.

SQL> --29.WAQTD DETAILS OF THE EMP ALONG WITH ANNUAL SALARY IF EMPLOYEES ARE WORKING IN NEW YORK
SQL> 
SQL> SELECT EMP.*, SAL*12 ANNUAL_SAL
  2  FROM EMP
  3  WHERE DEPTNO=(SELECT DEPTNO
  4  			FROM DEPT
  5  			WHERE LOC='NEW YORK');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_SAL                                                                                                        
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------                                                                                                        
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400                                                                                                        
      7839 KING       PRESIDENT            17-NOV-81       5000                    10      60000                                                                                                        
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600                                                                                                        

SQL> --30.WAQTD NAMES OF EMPLOYEES WORKING IN OPERATIONS DEPARTMENT
SQL> 

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO = (SELECT DEPTNO
  4  			FROM DEPT
  5  			WHERE DNAME='OPERATIONS');

no rows selected

SQL> SPOOL OFF
