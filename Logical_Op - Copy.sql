SQL> --1.WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK AND EARNING LESS THAN 1500.
SQL> SELECT * FROM EMP WHERE JOB='CLERK' AND SAL < 1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                 
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

SQL> SET LINES 100 PAGES 100
SQL>  --1.WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK AND EARNING LESS THAN 1500.
SQL> CL SCR
SQL>  --1.WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK AND EARNING LESS THAN 1500.
SQL>  SELECT * FROM EMP WHERE JOB='CLERK' AND SAL < 1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

SQL> --2.WAQTD NAME AND HIREDATE OF THE EMPLOYEES WORKING AS MANAGER IN DEPT 30.
SQL> SELECT ENAME, HIREDATE FROM EMP WHERE JOB='MANAGER' AND DEPTNO=30;

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
BLAKE      01-MAY-81                                                                                

SQL> --3.WAOTD DETAILS OF THE EMP ALONG WITH ANNUAL SALARY IF THEY ARE WORKING IN DEPT 30 AS SALESMA
SQL> --3.WAOTD DETAILS OF THE EMP ALONG WITH ANNUAL SALARY IF THEY ARE WORKING
SQL> --  IN DEPT 30 AS SALESMAN AND THEIR ANNUAL SALARY HAS TO BE
SQL> --  GREATER THAN 14000.
SQL> SELECT *, SAL*12 ANNUAL_SAL FROM EMP WHERE (DEPTNO=30 AND JOB='SALESMAN') AND SAL*12>14000;
SELECT *, SAL*12 ANNUAL_SAL FROM EMP WHERE (DEPTNO=30 AND JOB='SALESMAN') AND SAL*12>14000
        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT EMP.*, SAL*12 ANNUAL_SAL FROM EMP WHERE (DEPTNO=30 AND JOB='SALESMAN') AND SAL*12>14000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_SAL    
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------    
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200    
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30      15000    
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30      15000    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000    

SQL> /*
SQL> 4.WAQTD ALL THE DETAILS OF THE EMP WORKING IN DEPT 30 OR AS ANALYST
SQL> */
SQL> SELECT * FROM EMP WHERE DEPTNO=30 OR JOB='ANALYST';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

8 rows selected.

SQL> /*
SQL> 5. WAOTD NAMES OF THE EMPMLOYEES WHOS SALARY IS LESS THAN 1100 AND THEIR DESIGNATION IS CLERK
SQL> */
SQL> SELECT ENAME, SAL, JOB FROM EMP WHERE SAL<1100 AND JOB='CLERK';

ENAME             SAL JOB                                                                           
---------- ---------- ---------                                                                     
SMITH             800 CLERK                                                                         
JAMES             950 CLERK                                                                         

SQL> SET LINES 200 PAGES 100
SQL> /*
SQL> 6.WAQTD NAME AND SAL, ANNUAL SAL AND DEPTNO IF DEPTNO IS 20 EARNING MORE THAN 1100 AND ANNUAL SALARY EXCEEDS 12000
SQL> */
SQL> SELECT ENAME, SAL, SAL*12 ANNUAL_SAL, DEPTNO FFROM EMP WHERE DEPTNO=20 AND SAL>1100 AND SAL*12>
  2  12000;
SELECT ENAME, SAL, SAL*12 ANNUAL_SAL, DEPTNO FFROM EMP WHERE DEPTNO=20 AND SAL>1100 AND SAL*12>
                                                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> */
SP2-0042: unknown command "*/" - rest of line ignored.
SQL> SELECT ENAME, SAL, SAL*12 ANNUAL_SAL, DEPTNO FFROM EMP WHERE DEPTNO=20 AND SAL>1100
  2  AND SAL*12>12000;
SELECT ENAME, SAL, SAL*12 ANNUAL_SAL, DEPTNO FFROM EMP WHERE DEPTNO=20 AND SAL>1100
                                                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT ENAME, SAL, SAL*12 ANNUAL_SAL, DEPTNO FROM EMP WHERE DEPTNO=20 AND SAL>1100
  2  AND SAL*12>12000;

ENAME             SAL ANNUAL_SAL     DEPTNO                                                                                                                                                             
---------- ---------- ---------- ----------                                                                                                                                                             
JONES            2975      35700         20                                                                                                                                                             
SCOTT            3000      36000         20                                                                                                                                                             
FORD             3000      36000         20                                                                                                                                                             

SQL> */
SP2-0042: unknown command "*/" - rest of line ignored.
SQL> /*
SQL> 7.WAQTD EMPNO AND NAMES OF THE EMPLOYEES WORKING AS MANAGER IN DEPT 20
SQL> */
SQL> SELECT EMPNO, ENAME FROM EMP WHERE JOB ='MANAGER' AND DEPT=20;
SELECT EMPNO, ENAME FROM EMP WHERE JOB ='MANAGER' AND DEPT=20
                                                      *
ERROR at line 1:
ORA-00904: "DEPT": invalid identifier 


SQL> SELECT EMPNO, ENAME FROM EMP WHERE JOB ='MANAGER' AND DEPTNO=20;

     EMPNO ENAME                                                                                                                                                                                        
---------- ----------                                                                                                                                                                                   
      7566 JONES                                                                                                                                                                                        

SQL> --8.WARTD DETAILS OF EMPLOYEES WORKING IN DEPT 20 OR 30.
SQL> SELECT * FROM EMP WHERE DEPTNO=20 OR 30;
SELECT * FROM EMP WHERE DEPTNO=20 OR 30
                                      *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> SELECT * FROM EMP WHERE DEPTNO=20 OR DEPTNO=30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   

11 rows selected.

SQL> --9.WAQTD DETAILS OF EMPLOYEES WORKING AS ANALYST IN DEPT 10.
SQL> SELECT * FROM EMP WHERE JOB='ANALYST' AND DEPTNO=10;

no rows selected

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

SQL> --10.WAQTD DETAILS OF EMPLOYEE WORKING AS PRESIDENT WITH SALARY OF RUPEES 4000.
SQL> SELECT * FROM EMP WHERE JOB='PRESIDENT' AND SAL=4000;

no rows selected

SQL> --11.WAQTD NAMES AND DEPTNO, JOB OF EMPS WORKING AS CLERK IN DEPT 10 OR 20.
SQL> SELECT ENAME, DEPTNO, JOB FROM EMP WHERE JOB='CLERK' AND (DEPTNO=10 OR DEPTNO=20);

ENAME          DEPTNO JOB                                                                                                                                                                               
---------- ---------- ---------                                                                                                                                                                         
SMITH              20 CLERK                                                                                                                                                                             
ADAMS              20 CLERK                                                                                                                                                                             
MILLER             10 CLERK                                                                                                                                                                             

SQL> --12.WAQTD DETAILS OF EMPLOYEES WORKING AS CLERK OR MANAGER IN DEPT 10.
SQL> SELECT * FROM EMP WHERE (JOB='CLERK' OR JOB='MANAGER') AND DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

SQL> --13.WAQTD NAMES OF EMPLOYEES WORKING IN DEPT 10, 20, 30, 40.
SQL> SELECT ENAME FROM EMP WHERE DEPTNO=10 OR DEPTNO=20 OR DEPTNO=30 OR DEPTNO=40;

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

SQL> --14.WAQTD DETAILS OF EMPLOYEES WITH EMPNO 7902.7839.
SQL> SELECT * FROM EMP WHERE EMPNO=7902 OR EMPNO=7839;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   

SQL> --15.WAQTD DETAILS OF EMPLOYEES WORKING AS MANAGER OR SALESMAN OR CLERK.
SQL> SELECT * FROM EMP WHERE JOB='MANAGER' OR JOB='SALESMAN' OR JOB='CLERK';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

11 rows selected.

SQL> --16. WAOTD NAMES OF EMPLOYEES HIRED AFTER 81 AND BEFORE 87.
SQL> SELECT ENAME FROM EMP WHERE HIREDATE>'31-DEC-1981' AND HIREDATE<'01-JAN-1987';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
MILLER                                                                                                                                                                                                  

SQL> --17. WAQTD DETAILS OF EMPLOYEES EARNING MORE THAN 1250 BUT LESS THAN 3000.
SQL> SELECT * FROM EMP WHERE SAL>1250 AND SAL <3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

6 rows selected.

SQL> --18.WAQTD NAMES OF EMPLOYEES HIRED AFTER 81 INTO DEPT 10 OR 30.
SQL> SELECT ENAME FROM EMP WHERE HIREDATE>'31-JAN-1981' AND (DEPTNO=10 OR DEPTNO=30);

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JEET                                                                                                                                                                                                    
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
MARTIN                                                                                                                                                                                                  
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
KING                                                                                                                                                                                                    
TURNER                                                                                                                                                                                                  
JAMES                                                                                                                                                                                                   
MILLER                                                                                                                                                                                                  

10 rows selected.

SQL> */
SP2-0042: unknown command "*/" - rest of line ignored.
SQL> /*
SQL> 19. WAQTD NAMES OF EMPLOYEES ALONG WITH ANNUAL SALARY FOR THE
SQL> EMPLOYEES WORKING AS MANAGER OR CLERK INTO DEPT 10 OR 30
SQL> */
SQL> SELECT ENAME, SAL*12 ANNUAL_SAL FROM EMP WHERE (JOB='MANAGER' OR JOB='CLERK') AND (DEPTNO=10 OR
  2  DEPTNO=30);

ENAME      ANNUAL_SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
BLAKE           34200                                                                                                                                                                                   
CLARK           29400                                                                                                                                                                                   
JAMES           11400                                                                                                                                                                                   
MILLER          15600                                                                                                                                                                                   

SQL> --20. WAQTD ALL THE DETAILS ALONG WITH ANNUAL SALARY IF SAL IS BETWEEN 1000 AND 4000 ANNUAL SAL
SQL> --MORE THAN 15000
SQL> SELECT EMP.*,SAL*12 ANNUAL_SAL FROM EMP WHERE (SAL>1000 AND SAL<4000) AND SAL*12 >15000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_SAL                                                                                                        
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------                                                                                                        
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200                                                                                                        
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20      35700                                                                                                        
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30      34200                                                                                                        
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400                                                                                                        
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20      36000                                                                                                        
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000                                                                                                        
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20      36000                                                                                                        
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600                                                                                                        

8 rows selected.

SQL> SPOOL OFF
