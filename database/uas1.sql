-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2025 at 05:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas1`
--

-- --------------------------------------------------------

--
-- Table structure for table `dewan_direksi`
--

CREATE TABLE `dewan_direksi` (
  `dewan_id` int(5) NOT NULL,
  `nip` char(8) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(9) DEFAULT NULL,
  `jabatan` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dewan_direksi`
--

INSERT INTO `dewan_direksi` (`dewan_id`, `nip`, `nama`, `jenis_kelamin`, `jabatan`) VALUES
(1, '1000001', 'Mohammad Abdul Ghani', 'Laki-laki', 'Direktur Utama'),
(2, '1000002', 'Denaldy Mulino Mauna', 'Laki-laki', 'Wakil Direktur Utama'),
(3, '1000003', 'M Ismahyudi', 'Laki-laki', 'Direktur Keuangan'),
(4, '1000004', 'Sucipto Prayitno', 'Laki-laki', 'Direktur Sumber daya Manu'),
(5, '1000005', 'Dwi Sutoro', 'Laki-laki', 'Direktur Pemasaran'),
(6, '1000006', 'M Arifin Firdaus', 'Laki-laki', 'Direktur Manajemen Risiko');

-- --------------------------------------------------------

--
-- Table structure for table `dewan_komisaris`
--

CREATE TABLE `dewan_komisaris` (
  `komisaris_id` int(5) NOT NULL,
  `nip` char(8) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(9) DEFAULT NULL,
  `jabatan` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dewan_komisaris`
--

INSERT INTO `dewan_komisaris` (`komisaris_id`, `nip`, `nama`, `jenis_kelamin`, `jabatan`) VALUES
(1, '2000001', 'Zulkifli Zaini', 'Laki-laki', 'Komisaris Utama'),
(2, '2000002', 'R wisto Prihadi', 'Laki-laki', 'Komisaris Independen'),
(3, '2000003', 'Askep Subarkah Yusuf', 'Laki-laki', 'Komisaris'),
(4, '2000004', 'Ardan Adi Perdana', 'Laki-laki', 'Komisaris'),
(5, '2000005', 'Alhilal Hamdi', 'Laki-laki', 'Komisaris'),
(6, '2000006', 'Tsamara Amany Alatas', 'Perempuan', 'Komisaris'),
(7, '2000007', 'Suyus Windayana', 'Laki-laki', 'Komisaris');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_pelaksana`
--

CREATE TABLE `karyawan_pelaksana` (
  `pelaksana_id` int(5) NOT NULL,
  `nrk` char(8) NOT NULL,
  `nama_pelaksana` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(9) DEFAULT NULL,
  `jabatan_pelaksana` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `karyawan_pelaksana`
--

INSERT INTO `karyawan_pelaksana` (`pelaksana_id`, `nrk`, `nama_pelaksana`, `jenis_kelamin`, `jabatan_pelaksana`) VALUES
(1, '98000062', 'Ihsan Sawal Sinuraya,SP', 'Laki-laki', 'Pj.Manajer'),
(2, '98000065', 'H.Bunyamin Siregar,SP', 'Laki-laki', 'Asisten Kepala'),
(3, '93003049', 'Ronal Situmorang,SP', 'Laki-laki', 'Asisten Afdelling II Kare'),
(4, '00000070', 'Zulkifli Nasution,ST', 'Laki-laki', 'Asisten Afdelling III K.S'),
(5, '93000058', 'Dian Hansori Saragih,SP', 'Laki-laki', 'Asisten Afdelling IV Kare'),
(6, '98000064', 'Faisal Joened', 'Laki-laki', 'Asisten Tata Usaha'),
(7, '94000059', 'Julipar,SH', 'Laki-laki', 'Asisten Personalia Kebun'),
(8, '547900', 'Peltu. Sukidi', 'Laki-laki', 'Kepala Keamanan');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_pimpinan1`
--

CREATE TABLE `karyawan_pimpinan1` (
  `pimpinan_id` int(5) NOT NULL,
  `nrk` char(8) NOT NULL,
  `nama_karyawan` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(9) DEFAULT NULL,
  `jabatan_karyawan` varchar(25) DEFAULT NULL,
  `unit_kerja_karyawan` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `karyawan_pimpinan1`
--

INSERT INTO `karyawan_pimpinan1` (`pimpinan_id`, `nrk`, `nama_karyawan`, `jenis_kelamin`, `jabatan_karyawan`, `unit_kerja_karyawan`) VALUES
(1, '15000115', 'Rizal Ariansyah', 'Laki-laki', 'Kepala divisi sekretariat', 'PTPN-IV'),
(2, '98000064', 'Desmanto,SP', 'Laki-laki', 'Kepala divisi operasional', 'PTPN-IV'),
(3, '15000114', 'Putu Sukarmen,SP', 'Laki-laki', 'Kepala divisi operasional', 'PTPN-XI'),
(4, '15000004', 'H.Suhendri,SE,MM', 'Laki-laki', 'Kepala divisi keuangan', 'PTPN-II'),
(5, '93000057', 'IR.Ospin Sembiring,QIA', 'Laki-laki', 'Kepala bagian tanaman', 'PTPN-III'),
(6, '90000051', 'Rediman Silalahi,ST,M.Si', 'Laki-laki', 'Kepala bagian teknik', 'PTPN-VI'),
(7, '00000067', 'Anastasia Indriyani M.pertiwi,ST,MM,ERMCP,CRMP', 'Perempuan', 'Kepala bagian perencanaan', 'PTPN-I'),
(8, '00000070', 'Donny Amril,SE', 'Perempuan', 'Kepala bagian akuntansi', 'PTPN-IV');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`komentar_id`, `nama`, `email`, `pesan`, `date`) VALUES
(2, 'liza', 'inekelizahafifah43@gmail.com', 'Website nya cukup lengkap, tetapi sebaiknya dilakukan update secara berkala pada bagian karir supaya semua orang mengetahui informasi tentang loker terbaru', '2024-12-18 03:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(254) NOT NULL,
  `email` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'inekelizahafifah43@gmail.com', '2025-02-15 11:16:44'),
(0, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'pidadinda@gmail.com', '2025-02-13 10:37:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dewan_direksi`
--
ALTER TABLE `dewan_direksi`
  ADD PRIMARY KEY (`dewan_id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `unique_nip` (`nip`);

--
-- Indexes for table `dewan_komisaris`
--
ALTER TABLE `dewan_komisaris`
  ADD PRIMARY KEY (`komisaris_id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `unique_nip` (`nip`);

--
-- Indexes for table `karyawan_pelaksana`
--
ALTER TABLE `karyawan_pelaksana`
  ADD PRIMARY KEY (`pelaksana_id`),
  ADD UNIQUE KEY `nrk` (`nrk`),
  ADD UNIQUE KEY `unique_nrk` (`nrk`);

--
-- Indexes for table `karyawan_pimpinan1`
--
ALTER TABLE `karyawan_pimpinan1`
  ADD PRIMARY KEY (`pimpinan_id`),
  ADD UNIQUE KEY `nrk` (`nrk`),
  ADD UNIQUE KEY `unique_nrk` (`nrk`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `unique_username_email` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dewan_direksi`
--
ALTER TABLE `dewan_direksi`
  MODIFY `dewan_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dewan_komisaris`
--
ALTER TABLE `dewan_komisaris`
  MODIFY `komisaris_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `karyawan_pelaksana`
--
ALTER TABLE `karyawan_pelaksana`
  MODIFY `pelaksana_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `karyawan_pimpinan1`
--
ALTER TABLE `karyawan_pimpinan1`
  MODIFY `pimpinan_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
