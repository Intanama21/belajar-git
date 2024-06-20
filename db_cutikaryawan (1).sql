-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 05:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cutikaryawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_cuti`
--

CREATE TABLE `data_cuti` (
  `id` int(15) NOT NULL,
  `nik` varchar(15) NOT NULL,
  `nama` date NOT NULL,
  `jabatan` text NOT NULL,
  `divisi` text NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `jenis_cuti` varchar(15) NOT NULL,
  `status_cuti` varchar(20) NOT NULL,
  `catatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `kode` int(10) NOT NULL,
  `nama_departemen` varchar(20) NOT NULL,
  `nama_divisi` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `jumlah_karyawan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`kode`, `nama_departemen`, `nama_divisi`, `jabatan`, `jumlah_karyawan`) VALUES
(1, 'Logistik', 'Driver', 'Anggota', '4'),
(7, 'Finance', 'Accounting', 'Leader', '9');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `Id` varchar(15) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `departemen` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`Id`, `nik`, `nama`, `tanggal_lahir`, `jenis_kelamin`, `departemen`, `alamat`, `no_hp`, `tgl_masuk`) VALUES
('', 1231, 'Ayu Ningsih', '2024-06-01', 'Perempuan', 'Produksi', 'Jl. Purnama', '896543128', '2024-06-09'),
('0', 1231, 'Ayu Ningsih', '2024-06-01', 'Perempuan', 'Produksi', 'Jl. Purnama', '896543128', '2024-06-09'),
('017', 1233, 'Heidy', '2000-02-07', 'Perempuan', 'PD02-Plating', 'Jl Kristal', '81399880077', '2024-06-01'),
('019', 0, 'Faris', '1997-09-28', '', 'STII', 'Jl Mangga', '091299005522', '2023-12-20'),
('020', 0, 'Firhan', '1998-05-18', '', 'STII', 'Jl bumi', '098811223344', '2022-10-25'),
('022', 0, 'George', '2002-11-28', '', 'Sales', 'Jl Teratai', '091928374650', '2023-11-27'),
('026', 0, 'Fina', '2023-12-29', '', 'Accounting', 'Jl apa', '081233333333', '2023-12-23'),
('033', 0, 'Jennie', '2011-05-21', '', 'Accounting', 'Jl Seoul', '098787987098', '2023-12-06'),
('050', 0, 'Nisa', '2023-11-28', '', 'Accounting', 'Jl Kamila', '098998889992', '2023-12-06'),
('11', 0, 'Syahputra', '2002-01-28', 'Laki-laki', 'PD02-Plating', 'Jl Menanti', '087791120029', '2024-06-06'),
('111', 0, 'Dwihanda', '2000-01-01', '', 'PD01-T.R', 'Jl Delima', '089233445500', '2021-06-09'),
('112', 0, 'Azizah', '2004-02-29', '', 'Sales', 'Jl Orchid', '081300110022', '2020-12-01'),
('113', 0, 'Jerome', '1998-05-09', '', 'Accounting', 'Jl Sakura', '081322446688', '2021-10-11'),
('115', 12315, 'Ganesha', '2001-08-14', 'Perempuan', 'STII', 'Jl Teratai', '81300991122', '2024-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_cuti`
--

CREATE TABLE `pengajuan_cuti` (
  `id_pengajuan` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `departemen` varchar(20) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `jenis_cuti` varchar(20) NOT NULL,
  `alasan` varchar(70) NOT NULL,
  `tgl_mengajukan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengajuan_cuti`
--

INSERT INTO `pengajuan_cuti` (`id_pengajuan`, `nik`, `nama`, `departemen`, `tgl_mulai`, `tgl_selesai`, `jenis_cuti`, `alasan`, `tgl_mengajukan`) VALUES
(1, '12321', 'Andi', 'Keuangan', '2023-11-15', '2023-11-17', '', 'sakit', '2024-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(15) NOT NULL,
  `nama_email` varchar(20) NOT NULL,
  `sandi` varchar(10) NOT NULL,
  `grup` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_email`, `sandi`, `grup`) VALUES
('121212', 'intanamalia515@gmail', 'intan123', 'Karyawan'),
('123123', 'tasya@gmail.com', 'tasya', 'Admin'),
('12345', 'rahayu03@gmail.com', '12345', 'Karyawan'),
('1238', 'winda@gmail.com', '123', 'Admin'),
('1245', 'coba@gmail.com', '123', 'Karyawan'),
('181020010', 'andiwijaya1@gmail.co', '827ccb0eea', 'Karyawan'),
('181020055', 'riskatri12@gmail.com', 'intana', 'Karyawan'),
('2023', 'coba@gmail.com', '123', 'Admin'),
('2024', 'coba@gmail.com', '123', 'Admin'),
('2025', 'winda@gmail.com', '123', 'Admin'),
('2031', '123', '123', 'Karyawan'),
('2032', 'coba@gmail.com', '123', 'Admin'),
('2033', 'mutia@gmail.com', '123', 'Supervisor'),
('32151', 'coba@gmail.com', '12345', 'Admin'),
('54321', 'abc@gmail.com', 'abc123', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_cuti`
--
ALTER TABLE `data_cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pengajuan_cuti`
--
ALTER TABLE `pengajuan_cuti`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_cuti`
--
ALTER TABLE `data_cuti`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengajuan_cuti`
--
ALTER TABLE `pengajuan_cuti`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
