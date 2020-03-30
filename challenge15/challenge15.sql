INSERT into Mata_Kuliah(id_mk,nama_kuliah,sks)VALUES ( "mk001",'algoritma program',3);
INSERT into Mata_Kuliah(id_mk,nama_kuliah,sks)VALUES ( "mk002",'robotic',4);
INSERT into Mata_Kuliah(id_mk,nama_kuliah,sks)VALUES ( "mk003",'photoshop',4);
INSERT into Mata_Kuliah(id_mk,nama_kuliah,sks)VALUES ( "mk004",'data mining',3);
INSERT into Mata_Kuliah(id_mk,nama_kuliah,sks)VALUES ( "mk005",'matrix',3);

INSERT into Jurusan(id_jurusan,nama_jurusan)VALUES ("j01","IT");
INSERT into Jurusan(id_jurusan,nama_jurusan)VALUES ("j02",'TI');
INSERT into Jurusan(id_jurusan,nama_jurusan)VALUES ("j03",'disgn');

INSERT into Dosen(id_dosen,nama_dosen)VALUES ("d52",'Joko');
INSERT into Dosen(id_dosen,nama_dosen)VALUES ("d51",'Rubi');

INSERT into Mahasiswa(nim,nama,alamat,id_jurusan,umur)VALUES ("n01",'adi','jakarta','j02',21);
INSERT into Mahasiswa(nim,nama,alamat,id_jurusan,umur)VALUES ("n02",'bayu','bogor','j01',19);
INSERT into Mahasiswa(nim,nama,alamat,id_jurusan,umur)VALUES ("n03",'budi','bekasi','j01',19);

INSERT into kontrak(id_kontrak,nim,id_mk,id_dosen,nilai)VALUES(01,"n01","mk004","d51","A");
INSERT into kontrak(id_kontrak,nim,id_mk,id_dosen,nilai)VALUES(02,"n01","mk001","d52","B");
INSERT into kontrak(id_kontrak,nim,id_mk,id_dosen,nilai)VALUES(03,"n02","mk004","d51","C");
INSERT into kontrak(id_kontrak,nim,id_mk,id_dosen,nilai)VALUES(04,"n03","mk002","d51","B");
INSERT into kontrak(id_kontrak,nim,id_mk,id_dosen,nilai)VALUES(05,"n03","mk005","d52","C");
INSERT into kontrak(id_kontrak,nim,id_mk,id_dosen,nilai)VALUES(06,"n03","mk004","d52","C");
INSERT into kontrak(id_kontrak,nim,id_mk,id_dosen,nilai)VALUES(07,"n01","mk002","d51","A");
INSERT into kontrak(id_kontrak,nim,id_mk,id_dosen,nilai)VALUES(08,"n01","mk005","d51","A");
--1)
  SELECT * FROM Mahasiswa NATURAL JOIN Jurusan WHERE Jurusan.id_jurusan = Mahasiswa.id_jurusan;
--2)
  SELECT nama,umur FROM Mahasiswa WHERE umur < 20;
--3)
  SELECT * FROM kontrak NATURAL JOIN Mahasiswa WHERE nilai <= "B";
--4)
  SELECT nama,sum(sks) FROM kontrak NATURAL JOIN Mata_Kuliah NATURAL JOIN Mahasiswa group by nim HAVING sum(sks) > 10;
--5)
  SELECT nama,umur,nilai,nama_kuliah,nama_dosen FROM kontrak NATURAL JOIN Mahasiswa NATURAL JOIN Mata_Kuliah NATURAL JOIN Dosen WHERE nama_kuliah = "data mining"; 
--6)
   SELECT nama_dosen,count(DISTINCT nama)total_mahasiswa FROM kontrak NATURAL JOIN Dosen GROUP BY id_dosen;
--8)
  SELECT * FROM kontrak NATURAL JOIN Mahasiswa NATURAL JOIN Dosen NATURAL JOIN Mata_Kuliah NATURAL JOIN Jurusan WHERE nilai > "B";