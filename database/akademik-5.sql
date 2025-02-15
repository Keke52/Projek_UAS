-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2023 at 05:36 AM
-- Server version: 5.7.26
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`komentar_id`, `nama`, `email`, `pesan`, `date`) VALUES
(2, 'liza', 'inekelizahafifah43@gmail.com', 'Website nya cukup lengkap, tetapi sebaiknya dilakukan update secara berkala pada bagian karir supaya semua orang mengetahui informasi tentang loker terbaru', '2024-12-18 03:05:51');


-- --------------------------------------------------------

--
-- Struktur tabel untuk tabel `dewan_direksi`
--

CREATE TABLE Dewan_direksi (
  dewan_id int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nip CHAR(8) NOT NULL UNIQUE,
  nama VARCHAR(50) DEFAULT NULL,
  jenis_kelamin VARCHAR(9) DEFAULT NULL,
  jabatan VARCHAR(25) DEFAULT NULL,
  UNIQUE KEY unique_nip (nip)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Menambahkan data untuk tabel `Dewan_direksi`
INSERT INTO `dewan_direksi` (`dewan_id`, `nip`, `nama`, `jenis_kelamin`, `jabatan`) VALUES
(1, '1000001', 'Mohammad Abdul Ghani', 'Laki-laki', 'Direktur Utama'),
(2, '1000002', 'Denaldy Mulino Mauna', 'Laki-laki', 'Wakil Direktur Utama'),
(3, '1000003', 'M Ismahyudi', 'Laki-laki', 'Direktur Keuangan'),
(4, '1000004', 'Sucipto Prayitno', 'Laki-laki', 'Direktur Sumber daya Manusia & Umum'),
(5, '1000005', 'Dwi Sutoro', 'Laki-laki', 'Direktur Pemasaran'),
(6, '1000006', 'M Arifin Firdaus', 'Laki-laki', 'Direktur Manajemen Risiko');

-- --------------------------------------------------------

--
-- Struktur tabel untuk tabel `dewan_komisaris`
--

CREATE TABLE Dewan_komisaris (
  komisaris_id int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nip CHAR(8) NOT NULL UNIQUE,
  nama VARCHAR(50) DEFAULT NULL,
  jenis_kelamin VARCHAR(9) DEFAULT NULL,
  jabatan VARCHAR(25) DEFAULT NULL,
  UNIQUE KEY unique_nip (nip)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Menambahkan data untuk tabel `Dewan_komisaris`
INSERT INTO `dewan_komisaris` (`komisaris_id`, `nip`, `nama`, `jenis_kelamin`, `jabatan`) 
VALUES 
(1, '2000001', 'Zulkifli Zaini', 'Laki-laki', 'Komisaris Utama'),
(2, '2000002', 'R wisto Prihadi', 'Laki-laki', 'Komisaris Independen'),
(3, '2000003', 'Askep Subarkah Yusuf', 'Laki-laki', 'Komisaris'),
(4, '2000004', 'Ardan Adi Perdana', 'Laki-laki', 'Komisaris'),
(5, '2000005', 'Alhilal Hamdi', 'Laki-laki', 'Komisaris'),
(6, '2000006', 'Tsamara Amany Alatas', 'Perempuan', 'Komisaris'),
(7, '2000007', 'Suyus Windayana', 'Laki-laki', 'Komisaris');
-- --------------------------------------------------------

--
-- Struktur tabel untuk tabel `karyawan_pimpinan1`
--

CREATE TABLE Karyawan_pimpinan1 (
  pimpinan_id int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nrk CHAR(8) NOT NULL UNIQUE,
  nama_karyawan VARCHAR(50) DEFAULT NULL,
  jenis_kelamin VARCHAR(9) DEFAULT NULL,
  jabatan_karyawan VARCHAR(25) DEFAULT NULL,
  unit_kerja_karyawan VARCHAR(25) DEFAULT NULL,
  UNIQUE KEY unique_nrk (nrk)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Menambahkan data untuk tabel `karyawan_pimpinan1`
INSERT INTO `karyawan_pimpinan1` (`pimpinan_id`, `nrk`, `nama_karyawan`, `jenis_kelamin`, `jabatan_karyawan`, `unit_kerja_karyawan`)
VALUES
(1, '150001154', 'Rizal Ariansyah', 'Laki-laki', 'Kepala divisi sekretariat perusahaan','PTPN-IV'),
(2, '980000645', 'Desmanto,SP', 'Laki-laki', 'Kepala divisi operasional kelapa sawit dan karet','PTPN-IV'),
(3, '150001147', 'Putu Sukarmen,SP', 'Laki-laki', 'Kepala divisi operasional tebu dan aneka tanaman','PTPN-XI'),
(4, '150000046', 'H.Suhendri,SE,MM', 'Laki-laki', 'Kepala divisi keuangan','PTPN-II'),
(5, '930000576', 'IR.Ospin Sembiring,QIA', 'Laki-laki', 'Kepala bagian tanaman','PTPN-III'),
(6, '900000519', 'Rediman Silalahi,ST,M.Si', 'Laki-laki', 'Kepala bagian teknik','PTPN-VI'),
(7, '000000678', 'Anastasia Indriyani M.pertiwi,ST,MM,ERMCP,CRMP', 'Perempuan', 'Kepala bagian perencanaan dan pengembangan','PTPN-I'),
(8, '000000706', 'Donny Amril,SE', 'Perempuan', 'Kepala bagian akuntansi','PTPN-IV');
-- --------------------------------------------------------

--
-- Struktur tabel untuk tabel `karyawan_pelaksana`
--

CREATE TABLE karyawan_pelaksana (
  pelaksana_id int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nrk CHAR(8) NOT NULL UNIQUE,
  nama_pelaksana VARCHAR(50) DEFAULT NULL,
  jenis_kelamin VARCHAR(9) DEFAULT NULL,
  jabatan_pelaksana VARCHAR(25) DEFAULT NULL,
  UNIQUE KEY unique_nrk (nrk)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Menambahkan data untuk tabel `karyawan_pelaksana`
INSERT INTO `karyawan_pelaksana` (`pelaksana_id`, `nrk`, `nama_pelaksana`, `jenis_kelamin`, `jabatan_pelaksana`)
VALUES
(1, '980000621', 'Ihsan Sawal Sinuraya,SP', 'Laki-laki', 'Pj.Manajer'),
(2, '980000653', 'H.Bunyamin Siregar,SP', 'Laki-laki', 'Asisten Kepala'),
(3, '930030492', 'Ronal Situmorang,SP', 'Laki-laki', 'Asisten Afdelling II Karet'),
(4, '000000705', 'Zulkifli Nasution,ST', 'Laki-laki', 'Asisten Afdelling III K.Sawit/Karet'),
(5, '930000581', 'Dian Hansori Saragih,SP', 'Laki-laki', 'Asisten Afdelling IV Karet'),
(6, '980000640', 'Faisal Joened', 'Laki-laki', 'Asisten Tata Usaha'),
(7, '940000597', 'Julipar,SH', 'Laki-laki', 'Asisten Personalia Kebun'),
(8, '547900', 'Peltu. Sukidi', 'Laki-laki', 'Kepala Keamanan');
-- --------------------------------------------------------

--
-- Table structure for table `user`
CREATE TABLE `user` (
  `user_id` INT(5) NOT NULL,
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(254) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `last_login` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY unique_username_email (`username`, `email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `last_login`) 
VALUES 
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'inekelizahafifah43@gmail.com', '2023-12-18 08:59:58');

-- --------------------------------------------------------

-- Indexes for dumped tables
-- Indexes for table `komentar`
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`komentar_id`);


--
-- Indexes for table `Dewan_direksi`
--
  ALTER TABLE `dewan_direksi` 
  ADD PRIMARY KEY (`dewan_id`);

--
-- Indexes for table `Dewan_komisaris`
--
  ALTER TABLE `dewan_komisaris` 
  ADD PRIMARY KEY (`komisaris_id`);

--
-- Indexes for table `karyawan_pimpinan1`
--
  ALTER TABLE `karyawan_pimpinan1` 
  ADD PRIMARY KEY (`pimpinan_id`);

--
-- Indexes for table `karyawan_pelaksana`
--
  ALTER TABLE `karyawan_pelaksana` 
  ADD PRIMARY KEY (`pelaksana_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `komentar_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dewan_direksi`
--
ALTER TABLE `dewan_direksi`
  MODIFY `nip` char(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dewan_komisaris`
--
ALTER TABLE `dewan_komisaris`
  MODIFY `nip` char(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `karyawan_pimpinan1`
--
ALTER TABLE `karyawan_pimpinan1`
  MODIFY `nrk` char(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `karyawan_pelaksana`
--
ALTER TABLE `karyawan_pelaksana`
  MODIFY `nrk` char(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
