-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Apr 2025 pada 15.28
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_sholat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id` int(11) NOT NULL,
  `waktuid` int(11) NOT NULL,
  `santriid` int(11) NOT NULL,
  `ket` enum('hadir','sakit','izin','alfa') NOT NULL,
  `alasan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `santri`
--

CREATE TABLE `santri` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `santri`
--

INSERT INTO `santri` (`id`, `nama`, `kelas`, `foto`) VALUES
(122201, 'Abdul Dava Maulana', '3', '122201 - Abdul Dava Maulana.png'),
(122202, 'Adly Firman Efendi', '3', '122202 - Adly Firman Efendi.png'),
(122203, 'Adrian Muhammad Azhar', '3', '122203 - Adrian Muhammad Azhar.png'),
(122204, 'Agus Ramdani Alfariji', '3', '122204 - Agus Ramdani Alfariji.png'),
(122205, 'Aldian Ahmad', '3', '122205 - Aldian Ahmad.png'),
(122206, 'Alif Ahmad Hidayat', '3', '122206 - Alif Ahmad Hidayat.png'),
(122207, 'Arvin Galen Pratama', '3', '122207 - Arvin Galen Pratama.png'),
(122208, 'Damar Harpa Komara', '3', '122208 - Damar Harpa Komara.png'),
(122209, 'Dandhi Surya Maulana', '3', '122209 - Dandhi Surya Maulana.png'),
(122210, 'Fadhil Fazliansyah Irawan', '3', '122210 - Fadhil Fazliansyah Irawan.png'),
(122211, 'Faiz Lathif Sundara', '3', '122211 - Faiz Lathif Sundara.png'),
(122212, 'Fakhri Farzal Rafif', '3', '122212 - Fakhri Farzal Rafif.png'),
(122213, 'Fakhri Nur Mubarak', '3', '122213 - Fakhri Nur Mubarak.png'),
(122214, 'Girelbi Ilmanaufal Ramadhan', '3', '122214 - Girelbi Ilmanaufal Ramadhan.png'),
(122215, 'Hadi Luqmanul Hakim', '3', '122215 - Hadi Luqmanul Hakim.png'),
(122216, 'Ikhwan Nudin Ismail', '3', '122216 - Ikhwan Nudin Ismail.png'),
(122217, 'Indra Lesmana Permana', '3', '122217 - Indra Lesmana Permana.png'),
(122218, 'Iwan Sopandi', '3', '122218 - Iwan Sopandi.png'),
(122219, 'Jajang Kurniawan', '3', '122219 - Jajang Kurniawan.png'),
(122220, 'Kosasih', '3', '122220 - Kosasih.png'),
(122221, 'M. Fikri', '3', '122221 - M. Fikri.png'),
(122222, 'Margana Rizki Andriana', '3', '122222 - Margana Rizki Andriana.png'),
(122223, 'Muhammad Aryya Saifullah', '3', '122223 - Muhammad Aryya Saifullah.png'),
(122224, 'Muhammad Fahmi Tammami', '3', '122224 - Muhammad Fahmi Tammami.png'),
(122225, 'Muhammad Naufal Kholil', '3', '122225 - Muhammad Naufal Kholil.png'),
(122226, 'Muhammad Nur Azmi', '3', '122226 - Muhammad Nur Azmi.png'),
(122227, 'Muhammad Taufi Qurrohman', '3', '122227 - Muhammad Taufi Qurrohman.png'),
(122228, 'Muhhamad Daffa Setyaputra', '3', '122228 - Muhhamad Daffa Setyaputra.png'),
(122229, 'Nazryl Leza Rizalul Mutaqin', '3', '122229 - Nazryl Leza Rizalul Mutaqin.png'),
(122230, 'Nikky Wildan Rehandi', '3', '122230 - Nikky Wildan Rehandi.png'),
(122231, 'Racka Syahputra Wagiu', '3', '122231 - Racka Syahputra Wagiu.png'),
(122232, 'Rafael Daud Firmansyah', '3', '122232 - Rafael Daud Firmansyah.png'),
(122233, 'Rahmat Hidayat', '3', '122233 - Rahmat Hidayat.png'),
(122234, 'Reihan Iqbal Prasetio', '3', '122234 - Reihan Iqbal Prasetio.png'),
(122235, 'Revan Ikhsan Kharisna', '3', '122235 - Revan Ikhsan Kharisna.png'),
(122236, 'Rezky Firaihan', '3', '122236 - Rezky Firaihan.png'),
(122237, 'Rido Akbar Novani', '3', '122237 - Rido Akbar Novani.png'),
(122238, 'Ridzly', '3', '122238 - Ridzly.png'),
(122239, 'Rifan Alipermana', '3', '122239 - Rifan Alipermana.png'),
(122240, 'Ripan Nurjaman', '3', '122240 - Ripan Nurjaman.png'),
(122241, 'Rizki Chandra Putra Pratama', '3', '122241 - Rizki Chandra Putra Pratama.png'),
(122242, 'Rizky Akmal Agustian', '3', '122242 - Rizky Akmal Agustian.png'),
(122243, 'Rizqi Rizkulah', '3', '122243 - Rizqi Rizkulah.png'),
(122244, 'Roni Haetami', '3', '122244 - Roni Haetami.png'),
(122245, 'Yoga Ramadhan', '3', '122245 - Yoga Ramadhan.png'),
(122246, 'Yudi Hidayat', '3', '122246 - Yudi Hidayat.png'),
(122247, 'Zahwan Abdul Aziz', '3', '122247 - Zahwan Abdul Aziz.png'),
(122248, 'Zehan Althaf Falaah', '3', '122248 - Zehan Althaf Falaah.png'),
(122249, 'Zidan Hadi Albanie', '3', '122249 - Zidan Hadi Albanie.png'),
(122501, 'Andi Nugraha', '6', '122501 - Andi Nugraha.png'),
(122502, 'Ardhika Nesa Adi Pratama', '6', '122502 - Ardhika Nesa Adi Pratama.png'),
(122503, 'Fauzi Ahmad Yasseer', '6', '122503 - Fauzi Ahmad Yasseer.png'),
(122504, 'Firman Ramadhan', '6', '122504 - Firman Ramadhan.png'),
(122505, 'Jeri Jaenudin Majid', '6', '122505 - Jeri Jaenudin Majid.png'),
(122506, 'Mochammad Rifki Fadillah', '6', '122506 - Mochammad Rifki Fadillah.png'),
(122507, 'Muhamad Alamsyah', '6', '122507 - Muhamad Alamsyah.png'),
(122508, 'Muhammad Anwar Sanusi', '6', '122508 - Muhammad Anwar Sanusi.png'),
(122509, 'Muhammad Ridho Alfarizi', '6', '122509 - Muhammad Ridho Alfarizi.png'),
(122510, 'Muhammad Ridwan', '6', '122510 - Muhammad Ridwan.png'),
(122511, 'Qomarul Zaman', '6', '122511 - Qomarul Zaman.png'),
(122512, 'Fahry Zainuddin', '6', '122512 - Fahry Zainuddin.png'),
(122513, 'Muhamad Agra Rizkia Mulyana', '6', '122513 - Muhamad Agra Rizkia Mulyana.png'),
(122514, 'Muhammad Iqbal Maulana', '6', '122514 - Muhammad Iqbal Maulana.png'),
(122515, 'Muhammad Najib Husaini Faturrohman', '6', '122515 - Muhammad Najib Husaini Faturrohman.png'),
(123101, 'Abdul Hadi', '2', '123101 - Abdul Hadi.png'),
(123102, 'Abdul Ihsan Sadiqin', '2', '123102 - Abdul Ihsan Sadiqin.png'),
(123103, 'Abian Aeruliansyah', '2', '123103 - Abian Aeruliansyah.png'),
(123104, 'Agus Suhendar', '2', '123104 - Agus Suhendar.png'),
(123105, 'Ahmad Rizki Mubarok', '2', '123105 - Ahmad Rizki Mubarok.png'),
(123106, 'Ardhiansah', '2', '123106 - Ardhiansah.png'),
(123109, 'Arya Aidil Nugraha', '2', '123109 - Arya Aidil Nugraha.png'),
(123110, 'Azzam Althaaf Dzaki', '2', '123110 - Azzam Althaaf Dzaki.png'),
(123111, 'Eki Ramdani', '2', '123111 - Eki Ramdani.png'),
(123112, 'Evan Maulidin', '2', '123112 - Evan Maulidin.png'),
(123113, 'Fadli Nur Fadillah', '2', '123113 - Fadli Nur Fadillah.png'),
(123114, 'Fajar Hanafi', '2', '123114 - Fajar Hanafi.png'),
(123116, 'Gauza Dafa Alfaiz', '2', '123116 - Gauza Dafa Alfaiz.png'),
(123117, 'Hamdan Hilmawan', '2', '123117 - Hamdan Hilmawan.png'),
(123118, 'Jajang Jaenudin', '2', '123118 - Jajang Jaenudin.png'),
(123119, 'Jajang Putra Permana', '2', '123119 - Jajang Putra Permana.png'),
(123120, 'Luthfi Adriansyah', '2', '123120 - Luthfi Adriansyah.png'),
(123121, 'Muhamad Shidqi Zaidan Khoirusabri', '2', '123121 - Muhamad Shidqi Zaidan Khoirusabri.png'),
(123122, 'Mochamad Ilyas Nurfalah', '2', '123122 - Mochamad Ilyas Nurfalah.png'),
(123123, 'Muhamad Azzam Ramadhan', '2', '123123 - Muhamad Azzam Ramadhan.png'),
(123124, 'Muhamad Galang Hendrayana', '2', '123124 - Muhamad Galang Hendrayana.png'),
(123125, 'Muhamad Rizki Dwi Aditya', '2', '123125 - Muhamad Rizki Dwi Aditya.png'),
(123126, 'Muhamad Samsul Maarif', '2', '123126 - Muhamad Samsul Maarif.png'),
(123127, 'Muhammad Aditya Ramli', '2', '123127 - Muhammad Aditya Ramli.png'),
(123129, 'Muhammad Ikhwan Fauzan', '2', '123129 - Muhammad Ikhwan Fauzan.png'),
(123130, 'Muhammad Ilham Firdaus', '2', '123130 - Muhammad Ilham Firdaus.png'),
(123132, 'Muhammad Rauf Rizqullah', '2', '123132 - Muhammad Rauf Rizqullah.png'),
(123133, 'Muhammad Reza Nugraha', '2', '123133 - Muhammad Reza Nugraha.png'),
(123134, 'Muhammad Risal Al Hafiizh', '2', '123134 - Muhammad Risal Al Hafiizh.png'),
(123135, 'Muhammad Syafiq Abdillah', '2', '123135 - Muhammad Syafiq Abdillah.png'),
(123136, 'Muhammad Zen Hadiputra', '2', '123136 - Muhammad Zen Hadiputra.png'),
(123137, 'Nasir Ilham Ramdani', '2', '123137 - Nasir Ilham Ramdani.png'),
(123138, 'Oki Murhakim', '2', '123138 - Oki Murhakim.png'),
(123139, 'Rafi Yazid Zidan', '2', '123139 - Rafi Yazid Zidan.png'),
(123141, 'Reffa Jaelani', '2', '123141 - Reffa Jaelani.png'),
(123142, 'Reza As Suhendar', '2', '123142 - Reza As Suhendar.png'),
(123143, 'Ribat Dudiara Satya', '2', '123143 - Ribat Dudiara Satya.png'),
(123144, 'Rido Ahmad Solihin', '2', '123144 - Rido Ahmad Solihin.png'),
(123145, 'Ridwan Arsyil Maulana', '2', '123145 - Ridwan Arsyil Maulana.png'),
(123146, 'Rizky Sahal Mahpud', '2', '123146 - Rizky Sahal Mahpud.png'),
(123147, 'Syairazy Miftahul Arifin Ratnadi', '2', '123147 - Syairazy Miftahul Arifin Ratnadi.png'),
(123148, 'Wildan Irawan', '2', '123148 - Wildan Irawan.png'),
(123149, 'Zam Zam Bani Khairi', '2', '123149 - Zam Zam Bani Khairi.png'),
(123401, 'Agni Abdul Aziz', '5', '123401 - Agni Abdul Aziz.png'),
(123402, 'Dadan Ramdani', '5', '123402 - Dadan Ramdani.png'),
(123404, 'Muhamad Roby Rahmawan', '5', '123404 - Muhamad Roby Rahmawan .png'),
(123405, 'Muhammad Kholil Ash Shidiq', '5', '123405 - Muhammad Kholil Ash Shidiq.png'),
(123406, 'Rasya Auliandri Syaputra', '5', '123406 - Rasya Auliandri Syaputra.png'),
(123407, 'Rijal Ahmad Tantowi', '5', '123407 - Rijal Ahmad Tantowi .png'),
(123408, 'Didit Fathul Mubin', '5', '123408 - Didit Fathul Mubin.png'),
(123409, 'Fadhlurrohman Azhar', '5', '123409 - Fadhlurrohman Azhar.png'),
(123410, 'Fahmi Raafiulhaqq', '5', '123410 - Fahmi Raafiulhaqq.png'),
(123411, 'Fariq Irsyad', '5', '123411 - Fariq Irsyad .png'),
(123412, 'Fauzan Hafidz Sundara', '5', '123412 - Fauzan Hafidz Sundara.png'),
(123413, 'Panji Purnama', '5', '123413 - Panji Purnama.png'),
(123414, 'Rendi Nurcahyadin', '5', '123414 - Rendi Nurcahyadin.png'),
(123415, 'Rezza Asrafal Huda', '5', '123415 - Rezza Asrafal Huda.png'),
(123416, 'Rian Nugraha', '5', '123416 - Rian Nugraha.png'),
(123417, 'Rizqi Muhamad Fahri', '5', '123417 - Rizqi Muhamad Fahri.png'),
(124108, 'Abdurohman', '1', '124108 - Abdurohman.png'),
(124109, 'Ahmad Bakri', '1', '124109 - Ahmad Bakri.png'),
(124110, 'Aldi Hendra Saputra Sonjaya', '1', '124110 - Aldi Hendra Saputra Sonjaya.png'),
(124111, 'Andri Pirmansyah', '1', '124111 - Andri Pirmansyah.png'),
(124112, 'Anjar Nur Alam', '1', '124112 - Anjar Nur Alam.png'),
(124113, 'Azam Nur Alamsyah', '1', '124113 - Azam Nur Alamsyah.png'),
(124115, 'Derry Ahmad Al Jabar', '1', '124115 - Derry Ahmad Al Jabar.png'),
(124116, 'Dimas Nurdiansah', '1', '124116 - Dimas Nurdiansah.png'),
(124117, 'Erik Permana', '1', '124117 - Erik Permana.png'),
(124118, 'Fathan Rizqillah', '1', '124118 - Fathan Rizqillah.png'),
(124119, 'Hasbi Abdul Ghopur', '1', '124119 - Hasbi Abdul Ghopur.png'),
(124120, 'Ilham Akbar Ramdani', '1', '124120 - Ilham Akbar Ramdani.png'),
(124121, 'Ilham Maulana', '1', '124121 - Ilham Maulana.png'),
(124122, 'Imam Dwi Karman', '1', '124122 - Imam Dwi Karman.png'),
(124123, 'Indra Herdiansyah', '1', '124123 - Indra Herdiansyah.png'),
(124124, 'Maulana Landif Aritmatika', '1', '124124 - Maulana Landif Aritmatika               .png'),
(124125, 'Muhamad Fauzan Alfariji', '1', '124125 - Muhamad Fauzan Alfariji.png'),
(124126, 'Muhamad Rizky Ramadani', '1', '124126 - Muhamad Rizky Ramadani.png'),
(124127, 'Muhammad Akmal Ramadhan', '1', '124127 - Muhammad Akmal Ramadhan.png'),
(124128, 'Muhammad Arif Fadliansyah', '1', '124128 - Muhammad Arif Fadliansyah.png'),
(124129, 'Muhammad Fachri', '1', '124129 - Muhammad Fachri.png'),
(124130, 'Muhammad Hadiningrat Hidayat', '1', '124130 - Muhammad Hadiningrat Hidayat.png'),
(124131, 'Muhammad Hisyam Zaedan Ibrahim', '1', '124131 - Muhammad Hisyam Zaedan Ibrahim .png'),
(124132, 'Muhammad Husni Abdul Rouf', '1', '124132 - Muhammad Husni Abdul Rouf.png'),
(124133, 'Muhammad Iqbal Maulana Yusuf', '1', '124133 - Muhammad Iqbal Maulana Yusuf.png'),
(124134, 'Muhammad Muzakki Rivana', '1', '124134 - Muhammad Muzakki Rivana.png'),
(124135, 'Muhammad Nizam Al Musyfiq', '1', '124135 - Muhammad Nizam Al Musyfiq.png'),
(124138, 'Rakha Janvier Rijalluda', '1', '124138 - Rakha Janvier Rijalluda.png'),
(124139, 'Reva Triana', '1', '124139 - Reva Triana.png'),
(124140, 'Rizky Muhamad Furqon', '1', '124140 - Rizky Muhamad Furqon.png'),
(124141, 'Zaenal Muthaqin', '1', '124141 - Zaenal Muthaqin.png'),
(124142, 'Zain Ahmad Shah Arridho', '1', '124142 - Zain Ahmad Shah Arridho.png'),
(124143, 'Arul Sapari', '1', '124143 - Arul Sapari.png'),
(124401, 'Farrel Imadudin Al Ashari', '4', '124401 - Farrel Imadudin Al Ashari.png'),
(124402, 'Gumerlar Ramadhan Nugraha', '4', '124402 - Gumerlar Ramadhan Nugraha.png'),
(124403, 'Lupi Maulana', '4', '124403 - Lupi Maulana.png'),
(124404, 'Muhammad Abdul Kholiq', '4', '124404 - Muhammad Abdul Kholiq.png'),
(124405, 'Muhammad Adzka Satria Pratama', '4', '124405 - Muhammad Adzka Satria Pratama.png'),
(124406, 'Nandra Rizky Al Pauzan', '4', '124406 - Nandra Rizky Al Pauzan.png'),
(124407, 'Zahran Fauzan Zamzami', '4', '124407 - Zahran Fauzan Zamzami.png'),
(124408, 'Hamzah Alafi Iskandar', '4', '124408 - Hamzah Alafi Iskandar.png'),
(124409, 'Wildan Azmi Muzaki', '4', '124409 - Wildan Azmi Muzaki.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu`
--

CREATE TABLE `waktu` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` enum('shubuh','duhur','asar','magrib','isya') NOT NULL,
  `pengabsen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waktuid` (`waktuid`),
  ADD KEY `santriid` (`santriid`);

--
-- Indeks untuk tabel `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `santri`
--
ALTER TABLE `santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124410;

--
-- AUTO_INCREMENT untuk tabel `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_ibfk_1` FOREIGN KEY (`waktuid`) REFERENCES `waktu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `absen_ibfk_2` FOREIGN KEY (`santriid`) REFERENCES `santri` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
