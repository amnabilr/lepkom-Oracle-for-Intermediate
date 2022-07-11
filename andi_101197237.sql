--1
--A
CREATE TABLE DATA_MAHASISWA_10119723 (
NPM NUMBER(15),
NAMA VARCHAR2(30),
TEMPAT_LAHIR VARCHAR2(30),
TGL_LAHIR DATE,
ALAMAT VARCHAR2(50),
JURUSAN VARCHAR2(50),
IPK NUMBER(3,2));

--B
INSERT INTO DATA_MAHASISWA_10119723 
VALUES (53210985, 'Dio Hari Susilo', 'BOGOR', '16-AUG-1992', 'Jl. Kenari', 'Teknik Informatika', 2.92);
INSERT INTO DATA_MAHASISWA_10119723 
VALUES (18111525, 'Hardi', 'JAKARTA', '11-JUL-1993', 'Jl. Jereng', 'Sistem Informasi', 3.76);
INSERT INTO DATA_MAHASISWA_10119723 
VALUES (52409380, 'Fadel Andreza', 'DEPOK', '21-APR-1991', 'Jl. Dluk', 'Teknik Informatika', 3.15);
INSERT INTO DATA_MAHASISWA_10119723 
VALUES (12111274, 'Dwiki Arif Witoro', 'Jl. Meteor No.8 Ambon', '10-DEC-1993', 'Kampung Pulo', 'Sistem Informasi', 3.98);
INSERT INTO DATA_MAHASISWA_10119723 
VALUES (36112029, 'Rara Dwi Natasha', 'JAKARTA', '04-MAY-1994', 'Jl. Kapuk', 'Manajemen Informatika', 4.00);

--2
CREATE VIEW V_DATA_MAHASISWA AS SELECT * FROM DATA_MAHASISWA_10119723 WHERE JURUSAN = 'Teknik Informatika';

SELECT * FROM V_DATA_MAHASISWA;

--3
CREATE OR REPLACE VIEW V_DATA_MAHASISWA AS SELECT 
NPM, NAMA NAME, TEMPAT_LAHIR, TGL_LAHIR, ALAMAT ADDRESS, JURUSAN, IPK GPA FROM DATA_MAHASISWA_10119723
WHERE JURUSAN = 'Teknik Informatika';

--4
SELECT * FROM V_DATA_MAHASISWA;

--5
DROP VIEW V_DATA_MAHASISWA;