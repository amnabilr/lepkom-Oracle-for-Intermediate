SELECT*FROM EMP
SELECT*FROM DEPT

--No.1
SELECT EMP.ENAME, DEPT.DEPTNO, DEPT.DNAME 
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

--No.2
SELECT EMP.ENAME, DEPT.DNAME
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND EMP.ENAME LIKE '%A%';

--No.3 
SELECT EMP.ENAME, EMP.JOB, DEPT.DEPTNO, DEPT.DNAME
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND DEPT.LOC = 'DALLAS';

--No.4
SELECT EMP.ENAME, DEPT.DNAME, DEPT.LOC
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND EMP.COMM IS NOT NULL;

--No.5 
SELECT DISTINCT EMP.JOB, DEPT.LOC
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND DEPT.DEPTNO = 30;