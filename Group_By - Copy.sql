SQL> --1. WAQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPARTEMENT EXCEPT PRESIDENT.
SQL> SELECT COUNT(*), DEPTNO
  2  FROM EMP
  3  GROUP BY DEPTNO;

  COUNT(*)     DEPTNO                                                           
---------- ----------                                                           
         6         30                                                           
         5         20                                                           
         4         10                                                           

SQL> --2. TOTAL SALARY NEEDED TO PAY ALL THE EMPLOYEES IN EACH JOB.
SQL> SELECT SUM(SAL), JOB
  2  FROM EMP
  3  GROUP BY JOB;

  SUM(SAL) JOB                                                                  
---------- ---------                                                            
     25000 DEV                                                                  
      4150 CLERK                                                                
      5600 SALESMAN                                                             
      5000 PRESIDENT                                                            
      8275 MANAGER                                                              
      6000 ANALYST                                                              

6 rows selected.

SQL> --3. WAQTD NUMBER OF EMPLOYEEES WORKING AS MANAGER IN EACH DEPARTMENT.
SQL> 
SQL> SELECT COUNT(*), DEPTNO
  2  FROM EMP
  3  WHERE ENAME='MANAGER'
  4  GROUP BY DEPTNO;

no rows selected

SQL> SELECT COUNT(*), DEPTNO
  2  FROM EMP
  3  WHERE JOB='MANAGER'
  4  GROUP BY DEPTNO;

  COUNT(*)     DEPTNO                                                           
---------- ----------                                                           
         1         30                                                           
         1         20                                                           
         1         10                                                           

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7933 JEET       DEV             7698 15-JUL-25      25000       5000      
        10                                                                      
                                                                                
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500      
        30                                                                      
                                                                                
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                 
        30                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                 
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                 
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5000                 
        10                                                                      
                                                                                
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0      
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                 
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

15 rows selected.

SQL> SET LINES 200 PAGES 100
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

SQL> --4. WAQTD AVG SALARY NEEDED TO PAY ALL THE EMPLOYEES IN EACH DEPARTMENT EXCLUDING THE EMPLOYEES OF DEPTNO 20.
SQL> 
SQL> SELECT AVG(SAL), DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO <> 20
  4  GROUP BY DEPTNO;

  AVG(SAL)     DEPTNO                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
1566.66667         30                                                                                                                                                                                   
    8437.5         10                                                                                                                                                                                   

SQL> --5. MAQTO NUMBER OF EMPLOYEES HAVING CHARACTER 'A' IN THEIR NAMES IN EACH JOB.
SQL> 
SQL> SELECT COUNT(*), ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  GROUP BY JOB;
SELECT COUNT(*), ENAME
                 *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> SELECT COUNT(*), JOB
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  GROUP BY JOB;

  COUNT(*) JOB                                                                                                                                                                                          
---------- ---------                                                                                                                                                                                    
         3 SALESMAN                                                                                                                                                                                     
         2 CLERK                                                                                                                                                                                        
         2 MANAGER                                                                                                                                                                                      

SQL> --6. WAQTD NUMBER OF EMPLOYEES AND AVG SALARY NEEDED TO PAY THE EMPLOYEES WHO SALARY IN GREATER THAN 2000 IN EACH DEPT.
SQL> 
SQL> SELECT COUNT(*), AVG(SAL), DEPTNO
  2  FROM EMP
  3  WHERE SAL>2000
  4  GROUP BY DEPTNO;

  COUNT(*)   AVG(SAL)     DEPTNO                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
         1       2850         30                                                                                                                                                                        
         3 2991.66667         20                                                                                                                                                                        
         3 10816.6667         10                                                                                                                                                                        

SQL> --7. WAQDTD TOTAL SALARY NEEDED TO PAY AND NUMBER OF SALESMANS IN EACH DEPT.
SQL> 
SQL> SELECT SUM(SAL), DEPTNO
  2  FROM EMP
  3  WHERE JOB='SALESMAN'
  4  GROUP BY DEPTNO;

  SUM(SAL)     DEPTNO                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
      5600         30                                                                                                                                                                                   

SQL> --8. NUMBER OF EMPLOYEES WITH THEIR MAXIMUM SALARIES IN EACH JOB.
SQL> 
SQL> SELECT COUNT(*), MAX(SAL), JOB
  2  FROM EMP
  3  GROUP BY JOB;

  COUNT(*)   MAX(SAL) JOB                                                                                                                                                                               
---------- ---------- ---------                                                                                                                                                                         
         1      25000 DEV                                                                                                                                                                               
         4       1300 CLERK                                                                                                                                                                             
         4       1600 SALESMAN                                                                                                                                                                          
         1       5000 PRESIDENT                                                                                                                                                                         
         3       2975 MANAGER                                                                                                                                                                           
         2       3000 ANALYST                                                                                                                                                                           

6 rows selected.

SQL> --9. WAQTO MAXIMUM SALARIES GIVEN TO AN EMPLOYEE WORKING IN EACH DEPT.
SQL> 
SQL> SELECT MAX(SAL), DEPTNO
  2  FROM EMP
  3  GROUP BY DEPTNO;

  MAX(SAL)     DEPTNO                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
      2850         30                                                                                                                                                                                   
      3000         20                                                                                                                                                                                   
     25000         10                                                                                                                                                                                   

SQL> --10. WAQTD NUMBER OF TIMES THE SALARIES PRESENT IN EMPLOYEE TABLE.
SQL> 
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE SAL IS NOT NULL
  4  ;

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
        15                                                                                                                                                                                              

SQL> SPOOL OFF
