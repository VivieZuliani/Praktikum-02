CREATE DATABASE praktikum2;

USE praktikum2; 

CREATE TABLE mahasiswa (
nim VARCHAR(10) NOT NULL PRIMARY KEY,
nama VARCHAR(100) NOT NULL,
jenis_kelamin VARCHAR(10) NOT NULL,
tgl_lahir DATE NOT NULL,
jalan VARCHAR(20) NOT NULL,
kota VARCHAR(50) NOT NULL,
kode_pos VARCHAR(50) NOT NULL,
no_hp VARCHAR(50) NOT NULL,
kode_dosen VARCHAR(50) NOT NULL
);

create table dosen (
kode_dosen VARCHAR(50) NOT NULL PRIMARY KEY,
nama VARCHAR(100) NOT NULL
);

create table matakuliah (
kode_matakuliah VARCHAR(50) NOT NULL PRIMARY KEY,
nama VARCHAR(100) NOT NULL,
sks INT NOT NULL
);

create table jadwal_mengajar (
kode_dosen VARCHAR(50) NOT NULL,
kode_matakuliah VARCHAR(50) NOT NULL,
hari ENUM('Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'),
jam TIME NOT NULL,
ruang VARCHAR(20) NOT NULL,
PRIMARY KEY (kode_dosen, kode_matakuliah, hari, jam)
);


create table KRSmahasiswa (
nim VARCHAR(10) NOT NULL,
kode_matakuliah VARCHAR(50) NOT NULL,
kode_dosen VARCHAR(50) NOT NULL,
semester VARCHAR(20) NOT NULL,
nilai INT NOT NULL,
PRIMARY KEY (nim, kode_matakuliah, kode_dosen)
);

insert into mahasiswa (
nim, nama, jenis_kelamin, tgl_lahir, jalan, kota, kode_pos, no_hp, kd_ds)
values ('11223344', 'Ari Santoso', 'Laki-laki', '1998-10-12', 'Mawar', 'Bekasi', '1210', '08223098', '211');

insert into mahasiswa (
nim, nama, jenis_kelamin, tgl_lahir, jalan, kota, kode_pos, no_hp, kd_ds)
values ('11223345', 'Ario Talib', 'Laki-laki', '1999-11-16', 'Tulip', 'Cikarang', '1211', '08135080', '212');

insert into mahasiswa (
nim, nama, jenis_kelamin, tgl_lahir, jalan, kota, kode_pos, no_hp, kd_ds)
values ('11223346', 'Dina Marlina', 'Perempuan', '1997-12-01', 'Teratai', 'Karawang', '1212', '08576640', '213');

insert into mahasiswa(
nim, nama, jenis_kelamin, tgl_lahir, jalan, kota, kode_pos, no_hp, kd_ds)
values ('11223347', 'Lisa Ayu', 'Perempuan', '1996-01-02', 'Lily', 'Bekasi', '1210', '08589932', '211');

insert into mahasiswa (
nim, nama, jenis_kelamin, tgl_lahir, jalan, kota, kode_pos, no_hp, kd_ds)
values ('11223348', 'Tiara Wahidah', 'Perempuan', '1980-02-05', 'Melati', 'Bekasi', '1210', '08776593', '211');

insert into mahasiswa (
nim, nama, jenis_kelamin, tgl_lahir, jalan, kota, kode_pos, no_hp, kd_ds)
values ('11223349', 'Anton Sinaga', 'Laki-laki', '1988-03-10', 'Dahlia', 'Cikarang', '1211', '08572046', '212');


UPDATE `praktikum2`.`mahasiswa` SET tgl_lahir = '1979-08-31' WHERE ('nim' = '11223344');

SELECT * FROM mahasiswa;

SELECT * FROM mahasiswa WHERE nama = 'Ari Santoso';

DELETE FROM mahasiswa WHERE nim = '11223346';

SELECT * FROM mahasiswa WHERE tgl_lahir >= '1996-01-02';

SELECT * FROM mahasiswa WHERE kota = 'Bekasi' AND jenis_kelamin = 'Perempuan';

SELECT * FROM mahasiswa WHERE (kota = 'Bekasi' AND jenis_kelamin = 'laki-laki') OR (jenis_kelamin = 'Perempuan' AND tgl_lahir <= DATE_SUB(CURDATE(), INTERVAL 22 YEAR));

SELECT nama, jalan, kota FROM mahasiswa;

SELECT * FROM mahasiswa ORDER BY nama ASC;