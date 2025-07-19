SQL> --1. WAQTD DING AND NUMBER OF EMP WORKING IN EACH DEPT IF THERE ARE ATLEAST 2 CLERKS IN EACH DEPT
SQL> 

SQL> SELECT COUNT(*), DEPTNO
  2  FROM EMP
  3  WHERE JOB='CLERK'
  4  GROUP BY DEPTNO
  5  HAVING COUNT(*)>1;

  COUNT(*)     DEPTNO                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
         2         20                                                                                                                                                                                   

SQL> --2. WAQTO DNO AND TOTAL SALARY NEEDED TO PAY ALL EMP IN EACH DEPT IF THERE ARE ATLEAST 4 EMP IN EACH DEPT.
SQL> 
SQL> SELECT DEPTNO, SUM(SAL)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING COUNT(*)>3;

    DEPTNO   SUM(SAL)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
        30       9400                                                                                                                                                                                   
        20      10875                                                                                                                                                                                   
        10      33750                                                                                                                                                                                   

SQL> DELETE FROM EMP WHERE ENAME='JEET';

1 row deleted.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
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

14 rows selected.

SQL> SELECT DEPTNO, SUM(SAL)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING COUNT(*)>3;

    DEPTNO   SUM(SAL)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
        30       9400                                                                                                                                                                                   
        20      10875                                                                                                                                                                                   


                                                                                                                                                                               

SQL> --3. WAQTD NUMBER OF EMP EARNING SAL MORE THAN 1200 IN EACH JOB AND THE TOTAL SAL NEEDED TO PAY EMP OF EACH JOB MUST EXCEES 3800.
SQL> SELECT COUNT(*), JOB
  2  FROM EMP
  3  WHERE SAL>1200
  4  GROUP BY JOB
  5  HAVING SUM(SAL)>3800;

  COUNT(*) JOB                                                                                                                                                                                          
---------- ---------                                                                                                                                                                                    
         4 SALESMAN                                                                                                                                                                                     
         1 PRESIDENT                                                                                                                                                                                    
         3 MANAGER                                                                                                                                                                                      
         2 ANALYST  


                                                                                                                                                                                    

SQL> --4. MAQED DEPTNO AND NUMBER OF EMP WORKING ONLY IF THERE ARE 2 EMP WORKING IN EACH DEPT AS MANAGER.
SQL> SELECT DEPTNO, COUNT(*)
  2  FROM EMP
  3  WHERE JOB='MANAGER'
  4  GROUP BY DEPTNO
  5  HAVING COUNT(*)=2;

no rows selected





SQL> SELECT DEPTNO, COUNT(*)
  2  FROM EMP
  3  WHERE JOB='CLERK'
  4  GROUP BY DEPTNO
  5  HAVING COUNT(*)=2;

    DEPTNO   COUNT(*)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
        20          2     



                                                                                                                                                                              

SQL> --5. MAQTD JOB AND MAX SAL OF EMP IN EACH JOB IF THE MAX SAL EXCEEDS 2600.
SQL> 
SQL> SELECT JOB, MAX(SAL)
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MAX(SAL)>2600;

JOB         MAX(SAL)                                                                                                                                                                                    
--------- ----------                                                                                                                                                                                    
PRESIDENT       5000                                                                                                                                                                                    
MANAGER         2975                                                                                                                                                                                    
ANALYST         3000                                                                                                                                                                                    

SQL> --6. MAQED THE SALARIES WHICH ARE REPEATED IN EMP TABLE;
SQL> 
SQL> SELECT SAL
  2  FROM EMP
  3  GROUP BY SAL
  4  HAVING COUNT(*)>1;

       SAL                                                                                                                                                                                              
----------                                                                                                                                                                                              
      1250                                                                                                                                                                                              
      3000                                                                                                                                                                                              

SQL> --7. MAQED THE HIREDATE WHICH ARE DUPLICATED IN EMP TABLE
SQL> SELECT HIREDATE
  2  FROM EMP
  3  GROUP BY HIREDATE
  4  HAVING COUNT(*)>1;

HIREDATE                                                                                                                                                                                                
---------                                                                                                                                                                                               
03-DEC-81                                                                                                                                                                                               

SQL> --8.MAQTO AVG SALARY OF EACH DEPT IF AVG SAL IS LESS THAN 3000.
SQL> SELECT DEPTNO, AVG(SAL)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING AVG(SAL)<3000;

    DEPTNO   AVG(SAL)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
        30 1566.66667                                                                                                                                                                                   
        20       2175                                                                                                                                                                                   
        10 2916.66667                                                                                                                                                                                   

SQL> --9. HAQTO DEPTNO IF THERE ARE ATLEAST 3 EMP IN EACH DEPT WHOS NAME HAS CHAR 'A' OR 'S'.
SQL> SELECT DEPTNO
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%' OR ENAME LIKE '%S%'
  4  GROUP BY DEPTNO
  5  HAVING COUNT(*)>2;

    DEPTNO                                                                                                                                                                                              
----------                                                                                                                                                                                              
        30                                                                                                                                                                                              
        20                                                                                                                                                                                              

SQL> --10. WAQTO MIN AND MAX SALARIES OF EACH JOB IF MIN SAL IS MORE THAN 1000 AND MAX SAL IS LESS THAN 5000.
SQL> SELECT MIN(SAL), MAX(SAL)
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MIN(SAL)>1000 AND MAX(SAL)<5000;

  MIN(SAL)   MAX(SAL)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
      1250       1600                                                                                                                                                                                   
      2450       2975                                                                                                                                                                                   
      3000       3000                                                                                                                                                                                   

SQL> SELECT MIN(SAL), MAX(SAL), JOB
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MIN(SAL)>1000 AND MAX(SAL)<5000;

  MIN(SAL)   MAX(SAL) JOB                                                                                                                                                                               
---------- ---------- ---------                                                                                                                                                                         
      1250       1600 SALESMAN                                                                                                                                                                          
      2450       2975 MANAGER                                                                                                                                                                           
      3000       3000 ANALYST                                                                                                                                                                           

SQL> SPOOL OFF
