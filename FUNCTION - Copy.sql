SQL> --1. WAQTO NUMBER OF EMPLOYEES GETTING SALARY LESS THAN 2000 IN DEPTNO 10.
SQL> set lines 200 pages 100
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

SQL> SELECT COUNT(*) FROM EMP WHERE SAL <2000 AND DEPTNO=10;

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         1                                                                                                                                                                                              

SQL> SELECT ENAME,COUNT(*) FROM EMP WHERE SAL <2000 AND DEPTNO=10;
SELECT ENAME,COUNT(*) FROM EMP WHERE SAL <2000 AND DEPTNO=10
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> --2. WAQTO TOTAL SALARY NEEDED TO PAY EMPLOYEES WORKING AS CLERK.
SQL> SELECT SUM(SAL) WHERE JOB = 'CLERK';
SELECT SUM(SAL) WHERE JOB = 'CLERK'
                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT SUM(SAL) FROM EMP WHERE JOB = 'CLERK';

  SUM(SAL)                                                                                                                                                                                              
----------                                                                                                                                                                                              
      4150                                                                                                                                                                                              

SQL> --3. WAQTD AVERAGE SALARY NEEDED TO PAY ALL EMPLOYEES.
SQL> SELECT SAL, AGV(SAL) FROM EMP;
SELECT SAL, AGV(SAL) FROM EMP
            *
ERROR at line 1:
ORA-00904: "AGV": invalid identifier 


SQL> SELECT SAL, AVG(SAL) FROM EMP;
SELECT SAL, AVG(SAL) FROM EMP
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT AVG(SAL) FROM EMP;

  AVG(SAL)                                                                                                                                                                                              
----------                                                                                                                                                                                              
3601.66667                                                                                                                                                                                              

SQL> --4. WAQTD NUMBER OF EMPLOYEES HAVING 'A' AS THEIR FIRST CHARACTER.
SQL> SELECT COUNT(*) FROM EMP WHERE ENAME LIKE 'A%';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         2                                                                                                                                                                                              

SQL> --5. WAQTD NUMBER OF EMPLOYEES WORKING AS CLERK OR MANAGER.
SQL> SELECT COUNT(*) FROM EMP WHERE JOB IN ('CLERK','MANAGER');

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         7                                                                                                                                                                                              

SQL> --6. WAQTD TOTAL SALARY NEEDED TO PAY EMPLOYEES HIRED IN FEB.
SQL> SELECT SUM(SAL) FROM EMP WHERE HIREDATE LIKE '%FEB%';

  SUM(SAL)                                                                                                                                                                                              
----------                                                                                                                                                                                              
      2850                                                                                                                                                                                              

SQL> --7. MAQTO NUMBER OF EMPLOYEES REPORTING TO 7839 (MGR).
SQL> SELECT COUNT(*) FROM EMP WHERE MGR=7839;

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         3                                                                                                                                                                                              

SQL> --8. NAQTD NUMBER OF EMPLOYEES GETTING COMISSION IN DEPç?? 30.
SQL> SELECT COUNT(*) FROM EMP WHERE COMM IS NOT NULL AND DEPTNO 30;
SELECT COUNT(*) FROM EMP WHERE COMM IS NOT NULL AND DEPTNO 30
                                                           *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> SELECT COUNT(*) FROM EMP WHERE COMM IS NOT NULL AND DEPTNO=30;

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         4                                                                                                                                                                                              

SQL> --9. WAQTD AVB SAL, TOTAL SAL, NUMBER OF EMPS AND MAXIMUM SALARY GIVEN TO EMPLOYEES WORKING AS PERSIDENT.
SQL> SELECT AVG(SAL), SUM(SAL), COUNT(*), MAX(SAL) FROM EMP WHERE JOB='PRESIDENT';

  AVG(SAL)   SUM(SAL)   COUNT(*)   MAX(SAL)                                                                                                                                                             
---------- ---------- ---------- ----------                                                                                                                                                             
      5000       5000          1       5000                                                                                                                                                             

SQL> --10. WAQTD NUMBER OF EMPLOYEES HAVING 'A' IN THEIR NAMES.
SQL> SEELCT COUNT(*) FROM EMP WHERE ENAME LIKE '%A%';
SP2-0734: unknown command beginning "SEELCT COU..." - rest of line ignored.
SQL> SELECT COUNT(*) FROM EMP WHERE ENAME LIKE '%A%';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         7                                                                                                                                                                                              

SQL> --11. WAQTO NUMBER OF EMPS AND TOTAL SALARY NEEDED TO PAY THE EMPLOYEES WHO HAVE 2 CONSICUTIVE L's IN THEIR NAMES.
SQL> SELECT COUNT(*), SUM(SAL) FROM EMP WHERE ENAME LIKE '%LL%';

  COUNT(*)   SUM(SAL)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
         2       2900                                                                                                                                                                                   

SQL> --12. WAQTD NUMBER OF DEPARTMENTS PRESENT IN EMPLOYEE TABLE.
SQL> SELECT COUNT(*) FROM EMP WHERE DEPTNO IN (10,20,30);

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
        15                                                                                                                                                                                              

SQL> SELECT COUNT(*) FROM EMP WHERE (SELECT DISTINCT DEPTNO FROM EMP;);
SELECT COUNT(*) FROM EMP WHERE (SELECT DISTINCT DEPTNO FROM EMP;)
                                                               *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT COUNT(*) FROM EMP WHERE (SELECT DISTINCT DEPTNO FROM EMP);
SELECT COUNT(*) FROM EMP WHERE (SELECT DISTINCT DEPTNO FROM EMP)
                                                               *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT COUNT(DISTINCT DEPTNO) TOTAL_DEPT FROM EMP;

TOTAL_DEPT                                                                                                                                                                                              
----------                                                                                                                                                                                              
         3                                                                                                                                                                                              

SQL> --13. MAQTD NUMBER OF EMPLOYEES HAVING CHARACTER 'Z' N THEIR NAMES.
SQL> SELECT COUNT(*) FROM EMP WHERE ENAME LIKE '%Z%';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         0                                                                                                                                                                                              

SQL> --14. NAOTO NUMBER OF EMPLOYEES HAVING 'S' IN THEIR NAMES.
SQL> SELECT COUNT(*) FROM EMP WHERE ENAME LIKE '%S%';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         5                                                                                                                                                                                              

SQL> --15. WAQTO TOTAL SALARY GIVEN TO EMPLOYEES WORKING AS CLERK IN DEPT 30.
SQL> SELECT SUM(SAL) FOM EMP WHERE JOB='CLERK' AND DEPTNO=30;
SELECT SUM(SAL) FOM EMP WHERE JOB='CLERK' AND DEPTNO=30
                    *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT SUM(SAL) FORM EMP WHERE JOB='CLERK' AND DEPTNO=30;
SELECT SUM(SAL) FORM EMP WHERE JOB='CLERK' AND DEPTNO=30
                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT SUM(SAL) FROM EMP WHERE JOB='CLERK' AND DEPTNO=30;

  SUM(SAL)                                                                                                                                                                                              
----------                                                                                                                                                                                              
       950                                                                                                                                                                                              

SQL> --16. WAQTD MAXIMUM SALARY GIVEN TO THE EMPLOYEES WORKING AS ANALYST.
SQL> SELECT MAX(SAL) FROM EMP WHERE JOB='ANALYST';

  MAX(SAL)                                                                                                                                                                                              
----------                                                                                                                                                                                              
      3000                                                                                                                                                                                              

SQL> --17. WAQTD NUMBER OF DISTINCT SALARIES PRESENT IN EMPLOYEE TABLE.
SQL> SELECT COUNT(DISTINCT SAL) FROM EMP;

COUNT(DISTINCTSAL)                                                                                                                                                                                      
------------------                                                                                                                                                                                      
                13                                                                                                                                                                                      

SQL> --18. WAQTD NUMBER OF 30BS PRESENT IN EMPLOYEE TABLE.
SQL> 
SQL> 
SQL> --19. WATOD AVG SALARY GIVEN TO THE CLERK.
SQL> SELECT AVG(SAL) FROM EMP WHERE JOB='CLERK';

  AVG(SAL)                                                                                                                                                                                              
----------                                                                                                                                                                                              
    1037.5                                                                                                                                                                                              

SQL> --20 WAQTO MINIMUM SALARY GIVEN TO THE EMPLOYEES WHO WORK IN DEPT 10 AS MANAGER OR A CLERK.
SQL> SELECT MIN(SAL) FROM EMP WHERE DEPTNO=10 AND JOB IN ('MANAGER','CLERK');

  MIN(SAL)                                                                                                                                                                                              
----------                                                                                                                                                                                              
      1300                                                                                                                                                                                              

SQL> SPOOL OFF
