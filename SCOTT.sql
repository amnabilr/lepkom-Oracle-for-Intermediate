--Menampilkan Tabel EMP
SELECT*FROM EMP

--Menampilkan Tabel DEPT
SELECT*FROM DEPT

--Menampilkan Tabel SALGRADE
SELECT*FROM SALGRADE

--No. 1
SELECT ENAME AS NAMA, DNAME AS DEPARTEMEN, SAL AS GAJI, GRADE AS GOLONGAN 
FROM EMP, DEPT, SALGRADE
WHERE (DNAME = DNAME AND (
SAL <= HISAL AND SAL >= LOSAL)) AND DNAME = 'RESEARCH'
ORDER BY GAJI ASC;

--NO. 2 
SELECT EMPNO AS NOMOR_PEGAWAI, ENAME AS NAMA, DEPTNO AS NOMOR_DEPARTEMEN
FROM EMP
WHERE ENAME IN (SELECT ENAME FROM EMP WHERE ENAME LIKE '%O%') 
AND ENAME <> 'FORD'
ORDER BY ENAME ASC;

--No. 3
SELECT ENAME AS NAMA, JOB AS PEKERJAAN, HIREDATE AS TGL_MASUK, SAL AS GAJI FROM EMP 
WHERE SAL > 2500
ORDER BY ENAME ASC;

--Soal Tipe. C
SET SERVEROUTPUT ON
SET ECHO OFF
ACCEPT P_EMPNO PROMPT 'Masukkan No. Pegawai: ';
DECLARE
V_EMPNO NUMBER(4) := &P_EMPNO;
V_ENAME EMP.ENAME%TYPE;
V_DEPT EMP.DEPTNO%TYPE;
V_DEPTNO DEPT.DEPTNO%TYPE;
V_DNAME DEPT.DNAME%TYPE;
V_JOB EMP.JOB%TYPE;
V_SAL EMP.SAL%TYPE;
V_LOC DEPT.LOC%TYPE;
BEGIN
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO INTO V_EMPNO, V_ENAME, V_JOB, V_SAL, V_DEPT
FROM EMP WHERE EMPNO = V_EMPNO;
SELECT DEPTNO, DNAME, LOC INTO V_DEPTNO, V_DNAME, V_LOC
FROM DEPT WHERE DEPTNO = V_DEPT;
DBMS_OUTPUT.PUT_LINE('NO PEGAWAI ANDA ADALAH:'||V_EMPNO);
DBMS_OUTPUT.PUT_LINE('NAMA ANDA ADALAH:'||V_ENAME);
DBMS_OUTPUT.PUT_LINE('NO DEPARTEMEN ANDA:'||V_DEPTNO);
DBMS_OUTPUT.PUT_LINE('DEPARTEMEN:'||V_DNAME);
DBMS_OUTPUT.PUT_LINE('ANDA BEKERJA SEBAGAI:'||V_JOB);
DBMS_OUTPUT.PUT_LINE('UPAH GAJI ANDA:'||V_SAL);
DBMS_OUTPUT.PUT_LINE('Lokasi Bekerja Anda :'||V_LOC);
    
DBMS_OUTPUT.PUT_LINE('TERIMAKASIH.');
END;
/