SQL> --1. List all the employees whose commission in NULL.
SQL> SELECT ENAME FROM EMP WHERE COMM IS NULL;

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
SMITH                                                                                                                                                                                                   
JONES                                                                                                                                                                                                   
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
SCOTT                                                                                                                                                                                                   
KING                                                                                                                                                                                                    
ADAMS                                                                                                                                                                                                   
JAMES                                                                                                                                                                                                   
FORD                                                                                                                                                                                                    
MILLER                                                                                                                                                                                                  

10 rows selected.

SQL> --2. List all teh employees who don't have a reporting manager.
SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7933 JEET       DEV             7698 15-JUL-25      25000       5000         10                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

15 rows selected.

SQL> SELECT ENAME FROM EMP WHERE MGR IS NULL;

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
KING                                                                                                                                                                                                    

SQL> -- LIST ALL THE SALESMAN IN DEPT 30.
SQL> SELECT ENAME FROM EMP WHERE JOB='SALESMAN' AND DEPTNO=30;

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
MARTIN                                                                                                                                                                                                  
TURNER                                                                                                                                                                                                  

SQL> --4. LIST ALL THE EMPLOYEES IN DEPT 30 AND HAVING SALARY GREATER THAN 1500.
SQL> SELELCT * FROM EMP WHERE DEPTNO=30 AND SAL>1500;
SP2-0734: unknown command beginning "SELELCT * ..." - rest of line ignored.
SQL> SELECT * FROM EMP WHERE DEPTNO=30 AND SAL>1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   

SQL> --5. LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'S' OR 'A'.
SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE IN ('S%','A%');
SELECT ENAME FROM EMP WHERE ENAME LIKE IN ('S%','A%')
                                       *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%' OR ENAME LIKE 'A%;
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%' OR ENAME LIKE 'A%';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
SMITH                                                                                                                                                                                                   
ALLEN                                                                                                                                                                                                   
SCOTT                                                                                                                                                                                                   
ADAMS                                                                                                                                                                                                   

SQL> --6. LIST ALL THE EMPLOYEES EXCEPT THOSE WHO ARE WORKING IN DEPT 10 & 20.
SQL> SELECT * FROM EMP WHERE DEPTNO NOT IN (10,20);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   

6 rows selected.

SQL> --7. LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH 'S'.
SQL> SELECT ENAME FROM EMP WHERE ENAME NOT LIKE 'S%';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JEET                                                                                                                                                                                                    
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
JONES                                                                                                                                                                                                   
MARTIN                                                                                                                                                                                                  
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
KING                                                                                                                                                                                                    
TURNER                                                                                                                                                                                                  
ADAMS                                                                                                                                                                                                   
JAMES                                                                                                                                                                                                   
FORD                                                                                                                                                                                                    
MILLER                                                                                                                                                                                                  

13 rows selected.

SQL> --8. LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10.
SQL> 
SQL> --9. LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL AND WORKING AS CLERK.
SQL> SELECT * FROM EMP WHERE COMM IS NULL AND JOB='CLERK';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

SQL> --10. LIST ALL THE EMPLOYEES WHO DON'T HAVE A REPORTING MANAGER IN DEPTNO 10 OR 30.
SQL> 
SQL> --11. LIST ALL THE SALESMEN IN DEPT 30 WITH SAL MORE THAN 2450.
SQL> SELECT * FROM EMP WHERE JOB='SALESMAN' AND DEPTNO=30 AND SAL>2450;

no rows selected

SQL> --12. LIST ALL THE ANALYST IN DEPT NUMBER 20 AND HAVING SALARY GREATER THAN 2500.
SQL> SELECT * FROM EMP WHERE JOB='ANALYST' AND DEPTNO=20 AND SAL>2500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   

SQL> --13. LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'M' OR 'J'.
SQL> SELECT  ENAME FROM EMP WHERE ENAME LIKE 'M%' OR ENAME LIKE 'J%';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JEET                                                                                                                                                                                                    
JONES                                                                                                                                                                                                   
MARTIN                                                                                                                                                                                                  
JAMES                                                                                                                                                                                                   
MILLER                                                                                                                                                                                                  

SQL> --14. LIST ALL THE EMPLOYEES WITH ANNUAL SALARY EXCEPT THOSE WHO ARE WORKING IN DEPT 30.
SQL> SELECT ENAME, SAL*12 ANNUAL_SAL FROM EMP WHERE DEPTNO NOT 30;
SELECT ENAME, SAL*12 ANNUAL_SAL FROM EMP WHERE DEPTNO NOT 30
                                                          *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> SELECT ENAME, SAL*12 ANNUAL_SAL FROM EMP WHERE DEPTNO != 30;

ENAME      ANNUAL_SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
JEET           300000                                                                                                                                                                                   
SMITH            9600                                                                                                                                                                                   
JONES           35700                                                                                                                                                                                   
CLARK           29400                                                                                                                                                                                   
SCOTT           36000                                                                                                                                                                                   
KING            60000                                                                                                                                                                                   
ADAMS           13200                                                                                                                                                                                   
FORD            36000                                                                                                                                                                                   
MILLER          15600                                                                                                                                                                                   

9 rows selected.

SQL> SELECT ENAME, SAL*12 ANNUAL_SAL, DEPTNO FROM EMP WHERE DEPTNO != 30;

ENAME      ANNUAL_SAL     DEPTNO                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
JEET           300000         10                                                                                                                                                                        
SMITH            9600         20                                                                                                                                                                        
JONES           35700         20                                                                                                                                                                        
CLARK           29400         10                                                                                                                                                                        
SCOTT           36000         20                                                                                                                                                                        
KING            60000         10                                                                                                                                                                        
ADAMS           13200         20                                                                                                                                                                        
FORD            36000         20                                                                                                                                                                        
MILLER          15600         10                                                                                                                                                                        

9 rows selected.

SQL> --15. LIST THE EMPLOYEES WHOSE NAME DOES NOT END WITH 'ES' OR 'R'.
SQL> SELECT ENAME FROM EMP WHERE ENAME NOT LIKE '%ES' OR ENAME NOT LIKE '%R';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JEET                                                                                                                                                                                                    
SMITH                                                                                                                                                                                                   
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
JONES                                                                                                                                                                                                   
MARTIN                                                                                                                                                                                                  
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
SCOTT                                                                                                                                                                                                   
KING                                                                                                                                                                                                    
TURNER                                                                                                                                                                                                  
ADAMS                                                                                                                                                                                                   
JAMES                                                                                                                                                                                                   
FORD                                                                                                                                                                                                    
MILLER                                                                                                                                                                                                  

15 rows selected.

SQL> SELECT ENAME FROM EMP WHERE ENAME NOT LIKE '%ES' AND ENAME NOT LIKE '%R';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JEET                                                                                                                                                                                                    
SMITH                                                                                                                                                                                                   
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
MARTIN                                                                                                                                                                                                  
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
SCOTT                                                                                                                                                                                                   
KING                                                                                                                                                                                                    
ADAMS                                                                                                                                                                                                   
FORD                                                                                                                                                                                                    

11 rows selected.

SQL> --13. LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'M' OR 'J'.
SQL> SELECT  ENAME FROM EMP WHERE ENAME LIKE 'M%' AND ENAME LIKE 'J%';

no rows selected

SQL> SELECT  ENAME FROM EMP WHERE ENAME LIKE 'M%' OR ENAME LIKE 'J%';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JEET                                                                                                                                                                                                    
JONES                                                                                                                                                                                                   
MARTIN                                                                                                                                                                                                  
JAMES                                                                                                                                                                                                   
MILLER                                                                                                                                                                                                  

SQL> --16. LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10 ALONG WITH 10% HIKE IN SALARY.
SQL> 
SQL> --17. DISPLAY ALL THE EMPLOYEE WHO ARE 'SALESMAN'S HAVING 'E' AS THE LAST SECOND CHARACTER IN ENAME BUT SALARY HAVING EXACTLY 4 CHARACTER.
SQL> SELECT * FROM  EMP WHERE JOB='SALESMAN' AND ENAME LIKE '%E_' AND SAL LIKE '____';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   

SQL> --18. DISPLAY ALL THE EMPLOYEE WHO ARE JOINED FTER YEAR 81.
SQL> SELECT * FROM EMP WHERE HIREDATE>'31-DEC-1981';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7933 JEET       DEV             7698 15-JUL-25      25000       5000         10                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

SQL> --19. DISPLAY ALL THE EMPLOYEE WHO ARE JOINED IN FEB.
SQL> SELECT * FROM EMP WHERE HIREDATE='--FEB----';
SELECT * FROM EMP WHERE HIREDATE='--FEB----'
                                 *
ERROR at line 1:
ORA-01858: a non-numeric character was found where a numeric was expected 


SQL> SELECT * FROM EMP WHERE HIREDATE='__FEB____';
SELECT * FROM EMP WHERE HIREDATE='__FEB____'
                                 *
ERROR at line 1:
ORA-01858: a non-numeric character was found where a numeric was expected 


SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '__FEB____';

no rows selected

SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '___FEB_____';

no rows selected

SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '__-FEB-____';

no rows selected

SQL> SELECT * FROM EMP WHERE HIREDATE LIKE '__-FEB-__';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   

SQL> --20. LIST THE EMPLOYEES WHO ARE NOT WORKING AS MANAGERS AND CLERKS IN DEPT 10 AND 20 WITH A SALARY IN THE RANGE OF 1000 TO 3000.
SQL> SELECT * FROM EMP WHERE JOB !='MANAGER' AND JOB!= 'CLERK' AND DEPTNO IN (10,20) AND SAL BETWEEN 1000 TO 3000;
SELECT * FROM EMP WHERE JOB !='MANAGER' AND JOB!= 'CLERK' AND DEPTNO IN (10,20) AND SAL BETWEEN 1000 TO 3000
                                                                                                     *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> SELECT * FROM EMP WHERE JOB !='MANAGER' AND JOB!= 'CLERK' AND DEPTNO IN (10,20) AND SAL BETWEEN 1000 AND 3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7933 JEET       DEV             7698 15-JUL-25      25000       5000         10                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

15 rows selected.

SQL> SPOOL OFF
