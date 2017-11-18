-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Des 2016 pada 12.15
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_monitoringbb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_bb`
--

CREATE TABLE `t_bb` (
  `id_BB` char(4) NOT NULL,
  `nama_BB` varchar(10) NOT NULL,
  `harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_bb`
--

INSERT INTO `t_bb` (`id_BB`, `nama_BB`, `harga`) VALUES
('BB01', 'SOLAR', 5000),
('BB02', 'Solar', 5500),
('BB03', 'Pertalite', 7150);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kendaraan`
--

CREATE TABLE `t_kendaraan` (
  `No_Plat` char(9) NOT NULL,
  `Jenis` varchar(20) NOT NULL,
  `Tahun` char(4) NOT NULL,
  `id_BB` char(4) NOT NULL,
  `literKM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kendaraan`
--

INSERT INTO `t_kendaraan` (`No_Plat`, `Jenis`, `Tahun`, `id_BB`, `literKM`) VALUES
('KH1111CV', 'Mitsubishi Fuso', '2004', 'BB02', 6),
('KH1234FK', 'AVP', '2012', 'BB02', 10),
('KH2001RE', 'Toyota BOX', '2007', 'BB02', 7),
('KH7634JK', 'Canter Box Large', '2008', 'BB02', 6),
('KH9876GL', 'AVG', '2016', 'BB01', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pemakaian`
--

CREATE TABLE `t_pemakaian` (
  `id_Pemakaian` int(4) NOT NULL,
  `No_Plat` char(9) NOT NULL,
  `KM_Awal` int(7) DEFAULT NULL,
  `Jarak_Tempuh` int(7) DEFAULT NULL,
  `Biaya_Perjalanan` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pemakaian`
--

INSERT INTO `t_pemakaian` (`id_Pemakaian`, `No_Plat`, `KM_Awal`, `Jarak_Tempuh`, `Biaya_Perjalanan`) VALUES
(1115, 'KH7634JK', 1, 1, ''),
(1116, 'KH1234FK', 2, 100, 'RP.60000'),
(1117, 'KH1234FK', 25, 23, 'Rp. 11000'),
(1118, 'KH1111CV', 1, 0, 'Rp. 0'),
(1119, 'KH2001RE', 1, 0, 'Rp. 0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_bb`
--
ALTER TABLE `t_bb`
  ADD PRIMARY KEY (`id_BB`);

--
-- Indexes for table `t_kendaraan`
--
ALTER TABLE `t_kendaraan`
  ADD PRIMARY KEY (`No_Plat`),
  ADD KEY `id_BB` (`id_BB`);

--
-- Indexes for table `t_pemakaian`
--
ALTER TABLE `t_pemakaian`
  ADD PRIMARY KEY (`id_Pemakaian`),
  ADD KEY `No_Plat` (`No_Plat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_pemakaian`
--
ALTER TABLE `t_pemakaian`
  MODIFY `id_Pemakaian` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1120;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_kendaraan`
--
ALTER TABLE `t_kendaraan`
  ADD CONSTRAINT `t_kendaraan_ibfk_1` FOREIGN KEY (`id_BB`) REFERENCES `t_bb` (`id_BB`);

--
-- Ketidakleluasaan untuk tabel `t_pemakaian`
--
ALTER TABLE `t_pemakaian`
  ADD CONSTRAINT `t_pemakaian_ibfk_1` FOREIGN KEY (`No_Plat`) REFERENCES `t_kendaraan` (`No_Plat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
