CREATE TABLE Jurusan
(
  id_jurusan VARCHAR(14) PRIMARY KEY NOT NULL,
  nama_jurusan CHAR(25) NOT NULL
);
CREATE TABLE Mahasiswa
(
  nim VARCHAR(14) PRIMARY KEY NOT NULL,
  nama CHAR(15) NOT NULL,
  alamat VARCHAR(25) NOT NULL,
  umur SMALLINT(4) NOT NULL,
  id_jurusan VARCHAR(14) NOT NULL,
  FOREIGN KEY (id_jurusan) REFERENCES Jurusan(id_jurusan)
);


CREATE TABLE Mata_Kuliah
(
  id_mk VARCHAR (14) PRIMARY KEY  NOT NULL,
  nama_kuliah CHAR(25) NOT NULL,
  sks INT NOT NULL
);

CREATE TABLE Dosen
(
  id_dosen VARCHAR(14) PRIMARY KEY NOT NULL,
  nama_dosen CHAR(25) NOT NULL
);

CREATE TABLE kontrak
( 
  id_kontrak VARCHAR(14) PRIMARY KEY NOT NULL,
  nim VARCHAR(14) NOT NULL,
  id_mk VARCHAR(14) NOT NULL,
  id_dosen VARCHAR(14) NOT NULL,
  nilai VARCHAR(14) NOT NULL,
  FOREIGN KEY (nim) REFERENCES Mahasiswa(nim),
  FOREIGN KEY (id_mk) REFERENCES Mata_Kuliah(id_mk),
  FOREIGN KEY (id_dosen) REFERENCES Dosen(id_dosen)
);

