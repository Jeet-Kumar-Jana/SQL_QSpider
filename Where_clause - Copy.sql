SQL> --WAQTD THE ANNUAL SALARY OF THE EMPLOYEES WHOS NAME IS SMITH.
SQL> SELECT SAL*12 FROM EMP WHERE ENAME='SMITH';

    SAL*12                                                                      
----------                                                                      
      9600                                                                      

SQL> --WAQTD NAME OF THE EMPLOYEES WORKING AS CLERK.
SQL> SELECT ENAME FROM EMP WHERE JOB='CLERK';

ENAME                                                                           
----------                                                                      
SMITH                                                                           
ADAMS                                                                           
JAMES                                                                           
MILLER                                                                          

SQL> SET LINES 100 PAGES 100
SQL> --3. WAQTD SALARY OF THE EMPLOYEES WHO ARE WORKING AS SALESMAN.
SQL> SELECT SAL FROM EMP WHERE JOB='SALESMAN';

       SAL                                                                                          
----------                                                                                          
      1600                                                                                          
      1250                                                                                          
      1250                                                                                          
      1500                                                                                          

SQL> SELECT ENAME, SAL FROM EMP WHERE JOB='SALESMAN';

ENAME             SAL                                                                               
---------- ----------                                                                               
ALLEN            1600                                                                               
WARD             1250                                                                               
MARTIN           1250                                                                               
TURNER           1500                                                                               

SQL> --4. DETAILS OF THE EMPLOYEES WHO EARNS MORE THAN 2000.
SQL> SELECT * FROM THE EMP WHERE SAL>2000;
SELECT * FROM THE EMP WHERE SAL>2000
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM EMP WHERE SAL>2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7933 JEET       DEV             7698 15-JUL-25      25000       5000         10               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

7 rows selected.

SQL> --5. DETAILS OF THE EMPLOYEES WHOS NAME IS JONES.
SQL> SELECT  SELECT SAL*12 FROM EMP WHERE ENAME='smith';
SELECT  SELECT SAL*12 FROM EMP WHERE ENAME='smith'
        *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT SAL*12 FROM EMP WHERE ENAME='smith';

no rows selected

SQL> --6. WAQTD DETAILS OF THE EMPLOYEES WHO WAS HIRED AFTER 01-JAN-81.
SQL> SELECT * FROM EMP WHERE HIREDATE>'01-JAN-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7933 JEET       DEV             7698 15-JUL-25      25000       5000         10               
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

14 rows selected.

SQL> --7. NAME AND SAL ALONG WITH HIS ANNUAL SALARY IF THE ANNUAL SALARY IS MORE THAN 12000.
SQL> SELECT ENAME, SAL, SAL*12 FROM EMP WHERE SAL*12>12000;

ENAME             SAL     SAL*12                                                                    
---------- ---------- ----------                                                                    
JEET            25000     300000                                                                    
ALLEN            1600      19200                                                                    
WARD             1250      15000                                                                    
JONES            2975      35700                                                                    
MARTIN           1250      15000                                                                    
BLAKE            2850      34200                                                                    
CLARK            2450      29400                                                                    
SCOTT            3000      36000                                                                    
KING             5000      60000                                                                    
TURNER           1500      18000                                                                    
ADAMS            1100      13200                                                                    
FORD             3000      36000                                                                    
MILLER           1300      15600                                                                    

13 rows selected.

SQL> --8. EMPNO OF THE EMPLOYEE WHO ARE WORKING IN DEPT 30.
SQL> SELECT EMPNO, ENAME FROM EMP WHERE DEPTNO=30;

     EMPNO ENAME                                                                                    
---------- ----------                                                                               
      7499 ALLEN                                                                                    
      7521 WARD                                                                                     
      7654 MARTIN                                                                                   
      7698 BLAKE                                                                                    
      7844 TURNER                                                                                   
      7900 JAMES                                                                                    

6 rows selected.

SQL> --9. ENAME AND HIREDATE IF THEY ARE HIRED BEFORE 1981.
SQL> SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE<'01-JAN-1981';

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
SMITH      17-DEC-80                                                                                

SQL> --10. DETAILS OF THE EMPLOYEES WORIKING AS MANAGER.
SQL> SELECT * FROM EMP WHERE JOB='MANAGER';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               

SQL> --11. NAME AND SALARY GIVEN TO AN EMPLOYEE IF EMPLOYEE EARNS A COMMISSION OF RUPEES 1400.
SQL> SELECT ENAME, SAL FROM EMP WHERE COMM=1400;

ENAME             SAL                                                                               
---------- ----------                                                                               
MARTIN           1250                                                                               

SQL> --12. DETAILS OF EMPLOYEES HAVING COMMISSION MORE THAN SALARY.
SQL> SELECT * FROM EMP WHERE COMM>SAL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               

SQL> --13. EMPNO OF EMPLOYEES HIRED BEFORE THE YEAR 87.
SQL> who is not working as manager in dept no 10
SP2-0734: unknown command beginning "who is not..." - rest of line ignored.
SQL> select * from emp where job!=manager and deptno=10
  2  ;
select * from emp where job!=manager and deptno=10
                             *
ERROR at line 1:
ORA-00904: "MANAGER": invalid identifier 


SQL> SELECT * FROM EMP WHERE JOB!=MANAGER AND DEPTNO=10;
SELECT * FROM EMP WHERE JOB!=MANAGER AND DEPTNO=10
                             *
ERROR at line 1:
ORA-00904: "MANAGER": invalid identifier 


SQL> SELECT * FROM EMP WHERE JOB!='MANAGER' DEPTNO=10;
SELECT * FROM EMP WHERE JOB!='MANAGER' DEPTNO=10
                                       *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM EMP WHERE JOB!='MANAGER' AND DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7933 JEET       DEV             7698 15-JUL-25      25000       5000         10               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

SQL> SELECT * FROM EMP WHERE NOT (JOB='MANAGER' AND DEPT =10);
SELECT * FROM EMP WHERE NOT (JOB='MANAGER' AND DEPT =10)
                                               *
ERROR at line 1:
ORA-00904: "DEPT": invalid identifier 


SQL> SELECT * FROM EMP WHERE NOT (JOB='MANAGER' AND DEPTNO=10);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7933 JEET       DEV             7698 15-JUL-25      25000       5000         10               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

14 rows selected.

SQL> SELECT * FROM EMP
  2  WHERE JOB<>'MANAGER' OR DEPT<>10;
WHERE JOB<>'MANAGER' OR DEPT<>10
                        *
ERROR at line 2:
ORA-00904: "DEPT": invalid identifier 


SQL> SELECT * FROM EMP
  2  WHERE JOB<>'MANAGER' OR DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7933 JEET       DEV             7698 15-JUL-25      25000       5000         10               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

13 rows selected.

SQL> SPOOL OFF
