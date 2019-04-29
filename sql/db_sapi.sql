-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Apr 2019 pada 19.06
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kelompok_gejala_id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kelompok_gejala_id`, `kode`, `keterangan`) VALUES
(13, 1, 'G001', 'Membengkak'),
(15, 1, 'G002', 'Kurus'),
(16, 2, 'G003', 'Nafsu Makan Hilang'),
(17, 1, 'G004', 'Suhu Badan Tinggi'),
(18, 2, 'G005', 'Mengeluarkan Cairan'),
(19, 1, 'G006', 'Lesu'),
(20, 3, 'G007', 'Gangguan Pernafasan'),
(21, 1, 'G008', 'Tubuh Kering'),
(22, 2, 'G009', 'Gangguan Pencernaan'),
(23, 2, 'G010', 'Bau Busuk'),
(24, 1, 'G011', 'Gangguan Saraf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala_penyakit`
--

CREATE TABLE `gejala_penyakit` (
  `id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `md` float NOT NULL,
  `mb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `md`, `mb`) VALUES
(1, 13, 6, 0.1, 0.2),
(2, 15, 6, 0.3, 0.4),
(3, 16, 6, 0.5, 0.4),
(4, 17, 6, 0.3, 0.4),
(5, 18, 6, 0, 0.1),
(6, 19, 6, 0.3, 0.3),
(7, 20, 6, 0.1, 0.2),
(8, 21, 6, 0.8, 0.5),
(12, 13, 7, 0.1, 0.3),
(13, 15, 7, 0.2, 0.4),
(14, 16, 7, 0.4, 0.7),
(15, 17, 7, 0.4, 0.6),
(16, 18, 7, 0.1, 0.4),
(17, 19, 7, 0.3, 0.7),
(18, 20, 7, 0.6, 1),
(20, 22, 7, 0.3, 0.5),
(23, 13, 8, 0.2, 0.4),
(24, 15, 8, 0.3, 0.4),
(25, 16, 8, 0.1, 0.4),
(28, 19, 8, 0.4, 0.6),
(29, 20, 8, 0.2, 0.6),
(30, 22, 8, 0.3, 0.8),
(34, 13, 9, 0.1, 0.4),
(35, 18, 9, 0.2, 0.4),
(36, 21, 9, 0.3, 0.6),
(37, 23, 9, 0.2, 0.4),
(42, 24, 9, 0.6, 1),
(45, 15, 10, 0.2, 0.8),
(46, 22, 10, 0.1, 0.6),
(47, 17, 10, 0.3, 0.6),
(48, 18, 10, 0.4, 0.8),
(49, 16, 10, 0.3, 0.4),
(50, 19, 10, 0, 0),
(51, 20, 10, 0, 0),
(52, 21, 10, 0, 0),
(53, 22, 10, 0, 0),
(54, 23, 10, 0, 0),
(55, 24, 10, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_gejala`
--

CREATE TABLE `kelompok_gejala` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompok_gejala`
--

INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(1, 'Gejala Fisik', 'Mengalami tanda - tanda masalah pada fisik'),
(2, 'Gejala Pencernaan', 'Mengalami masalah pada saluran pencernaan'),
(3, 'Gejala Pernafasan', 'Mengalami masalah pada saluran pernafasan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(6, 'P01', 'Mulut dan Kuku', 'Penyakit Mulut dan Kuku (PMK) atau Aphthae epizooticae, Foot and mouth disease (FMD) adalah salah satu penyakit menular pada sapi. Penyakit Mulut dan Kuku (PMK) atau Apthae epizootica (AE) atau ­Foot and mouth desease (FMD) disebabkan oleh virus genus Aphthovirus Famili Picornaviridae. Virus ini merupakan virus RNA genom rantai tunggal RNA linier yang memiliki kapsid icosahedral dan tidak beramplop. Virus famili Picornaviridae merupakan virus RNA terkecil dengan diameter 25-30nm dengan replikasinya di dalam sitoplasma. \r\n\r\nPengendalian PMK:\r\n\r\nIsolasi, ternak yang terjangkit penyakit PMK dari sapi ke sapi lainnya pada kandang tertentu. Isolasi bertujuan untuk menghambat penyebaran penyakit, memudahkan perawatan dan pengobatan penyakit PMK.\r\nSanitasi, dengan menjaga kebersihan kandang, lokasi kandang, peralatan kandang dan tempat pakan dan minum.\r\nPenyemprotan desinfektan dan insektisida, bertujuan untuk menghindari dan menghambat penyebaran lebih luas penyakit PMK di lokasi peternakan.\r\nPemberian antibiotik dan vitamin, bertujuan untuk meningkatkan kekebalan dan menjaga kesehatan ternak agar ternak lain tidak mudah terserang penyakit PMK.\r\nVaksinasi, harus dilakukan sebelum terjangkit penyakit PMK. Biasanya vaksin yang digunakan adalah vaksin virus aktif yang mengandung adjuvant.\r\nMelakukan biosekuriti agar peternak dan ternak tidak terjangkit penyakit PMK, bertujuan untuk mengurangi penyebaran penyakit.\r\nPemusnahan bangkai, sampah dan semua produk hewan yang sudah terinfeksi oleh penyakit PMK.\r\nPengobatan PMK:\r\n\r\nPemotongan dan pembuangan jaringan tubuh ternak sapi yang sudah terinfeksi.\r\nKaki yang terinfeksi biasanya diterapi dengan Chloramphenicol atau Cuprisulfat.\r\nBisa juga dilakukan Injeksi Intravena Preparat Sulfadimidine, Immunoglobulin IV (IGIV) bila terkena juga Imonokompromis atau Neonatus.\r\nBisa juga diberikan antiseptik pada daerah bagian yang terjangkit, seperti mulut. Dengan menggunakan obat analgesil, misalnya parasetamol.\r\nSelain itu, bisa juga diolesi dengan larutan Cuprisulfat 5% setiap hari selama 1 minggu.'),
(7, 'P02', 'Ngorok', 'Penyakit ngorok atau dalam bahasa ilmiah disebut Septicemia apizootica(SE), bersifat akut, dan ternak yang mati sangat tinggi, bisa mencapai 90%, khususnya pada ternak yang telah menunjukkan cirri-ciri penyakit ngrorok. Ternak kita yang biasa diserang adalah sapi, kerbau, kuda, kambin, domba.\r\n\r\nPenyakit ngorok merupakan sejenis bakteri yang dalam bahasa latin disebut Pasteurella multcida. Penyakit ngorok ini akan menular dengan kontak langsung dari satu ternak ke ternak yang lainnya, dan dapat menular juga dari pakan yang diberikan, minuman, dan alat-alat peternakn yang tercemar bakteri ini.\r\nPencegahan dan Pengobatan Penyakit Ngorok\r\n\r\nLangkah pertama yang mesti Anda lakukan adalah menghubungi petugas peternakan, bila ternak anda sakit.\r\nKita harus memisahkan ternak yang sakit atau yang sedang mengalami gejala penyakit, dengan ternak yang tidak sakit.\r\nDihimbau agar peternak mempunyai kesadaran, untuk melakukan vaksinasi secara teratur untuk setiap tahun.\r\nTernak anda yan sedang sakit, agar disintik antibiotic dengan dosis untuk pencegahaaan.\r\nPeternak harus memperhatikan kandang ternak yang sudah terkena dampak penyakit ngorok dengan melakukan pembersihan atau disanitasi dengan benar\r\nTernak yang telah mati, karena penyakit ngorok untuk segera ditanam atau dibakar, jangan diahanyutkan dalam sungai, karena akan mengakibat gangguan lingkungan, dan akan menular pada ternak lain.\r\nPengawasan yang hati-hati terhadap ternak yang keluar masuk dari luar. Ternak yang baru tiba dipertanakan agar dipisahkan terlebih dahulu.'),
(8, 'P03', 'Radang Paha', 'Blacklegdisebut juga Radang paha merupakan penyakit infeksi, tidak menular secara kontak, menyerang hewan ruminansia yang ditandai dengan gangrene otot dan miositis emphysematosa terbatas,penyebabnya adalah clostridium Chauvoei.Penyakit Randang paha ditemukan di berbagai penjuru dunia, termasuk Indonesia. Clostridium Chauvoei bisa membentuk sporan sehingga tahan terhadap pengaruh fisisk maupun kimiawi (Walker, P.D. 1990).\r\nPenyebab penyakit ini merupakan kuman yang dapat bertahan di dalam tanah, sehingga penyakit ini dikenal sebagai penyakit tanah (bodem ziekte, Belanda). Penyakit radang paha biasanya ditemukan pada sapi yang berumur 6-18 bulan, meskipun kadang-kadang juga ditemukan pada hewan-hewan yang lebih tua. Jarang menyerang pedet karena pada pedet sudah terdapat imun dalam beberapa bulan setelah kelahiran, yang mungkin disebabkan karena adanya imunisasi pasif yang berasal dari induknya. Pencegahan dan Pengobatan\r\n\r\nPencegahan adalah hal utama untuk terhindar dari penyakit ini dengan jalan melakukan pembakaran atau semprot dengan desinfektan terhadap permukaan lantai atau tanah yang terindikasi adanya bakteri clostridium chauvoei. Jaga selalu kandang dalam keadaan bersih dan juga pakan dan air minum harus dalam keadaan bersih.\r\n\r\nLakukan pemisahan sapi dan domba yang sakit ke kandang karantina. Berikan vaksinasi berupa formol vaksi tiap 10 ml tiap sapi dengan cara di suntik. Selain itu berikan imunisasi pasif berupa antiserum disuntikkan ke dalam pembuluh darah vena. Jika ditemukan sapi atau domba mati mendadak segera dilakukan pembakaran dan jangan dikubur, karena bisa menyebarkan bakteri melalui tanah.'),
(9, 'P04', 'Surra', 'Penyakit Surra merupakan penyakit infeksi darah  yang disebabkan oleh protozoa Trypanosoma evansi yang ditularkan melalui gigitan lalat penghisap daerah (haematophagus files). Umumnya penyakit ini dapat menyerang semua jenis hewan / ternak. Di Asia Tenggara khususnya Indonesia penyakit Surra sering menyerang Sapi dan Kerbau terkadang juga kuda. Penyakit ini ditularkan melalui gigitan lalat penghisap darah (vector) terutama Tabanus sp yang membawa parasit. Parasit ini dapat ditemukan di dalam sirkulasi darah pada fase infeksi akut. Parasit Trypanosoma evansi dapat membelah diri untuk memperbanyak diri. Penularan penyakit surra erat kaitannya dengan transportasi ternak atau lalu lintas ternak baik nasional maupun internasional. Penyebarannya terjadi secara sporadik yang artinya penyakit surra dapat muncul kapan saja tergantung pada kondisi lingkungan, kondisi imunitas hewan (kekebalan tubuh), dan pupulasi lalat (vector).  Itu artinya pada musim penghujan adalah waktu yang tepat bagi lalat untuk berkembang biak. Dan hidupnya menyukai tempat-tempat yang banyak mengandung air. Pengobatan dan Pencegahan\r\n\r\nTernak yang diduga sakit segera dilakukan pemisahan dengan ternak yang sehat dalam kandang karantina yang tertutup agar terbebas dari gigitan lalat. Pengobatan dapat diberilakn dengan Arsokol atau Atocyl.\r\n\r\nTindakan pencegahan dapat dilakukan dengan cara melakukan pembasmian  serangga yang menjadi penyebab penyakit surra secara rutin pada kandang dan lingkungan sekitar. Penyemprotan dapat dilakukan pada ternak menggunakan  insektisida yang aman bagi ternak.  Pembersihan tempat pembuangan kotoran dan sampah sisa makanan ternak. Jaga selalu agar kondisi kandang tetap bersih, tidak lembab, selain itu berikan makanan dan minuman pada ternak dalam keadaaan bersih.\r\n'),
(10, 'P05', 'Anthrax', 'Nama lain dari penyakit Anthrax yaitu : radang limpa.\r\n\r\nAnthrax adalah penyakit menular yang akut atau perakut, bisa menyerang semua jenis ternak berdarah panas bahkan manusia. Penyakit ini bisa mengakibatkan  angka kematian tinggi. Penyebab penyakit anthrax pada sapi adalah Bacillus anthracis. Kuman Anthrax bisa membentuk spora yang bisa bertahan hidup berpuluh-puluh tahun di tanah, tahan terhadap kondisi atau lingkungan yang panas, dan bahan kimia atau desinfektan. Olehkarena itu, hewan yang mati yang terjangkit Anthrax dilarang melakukan pembedahan pada bangkainya supaya tidak membuka peluang bagi organisme untuk membentuk spora. Penyakit ini tersebar di seluruh dunia terutama daerah tropis. Infeksi pada ternak bisa berasal dari tanah yang tercemar organisme atau  kuman Anthrax. Kuman masuk tubuh ternak melalui luka, terhirup bersama udara atau tertelan. Pada manusia infeksi biasanya terjadi dengan perantaraan luka,bisa juga dengan melalui pernafasan para pekerja penyeleksi bulu domba atau melalui saluran pencernaan bagi orang yang memakan daging hewan penderita Anthrax yang dimasak tidak secara sempurna.Pencegahan Penyakit Anthrax\r\n\r\nDilakukannya vaksinasi yang teratur tiap tahun di daerah wabah.\r\nPengawasan yang ketat dan teratur terhadap lalulintas atau keluar masuknya ternak.\r\nMengasingkan ternak yang sakit atau diduga sakit.\r\nBangkai ternak yang saki atau diduga sakit tidak boleh dibuka, namun harus dibakar atau dikubur dalam-dalam.\r\nPengobatan Peenyakit Anthrax PadaTernak Sapi atau ternak Ruminansia\r\n\r\na. Memberikan antibiotika berspektrum luas.\r\n\r\nProcain penisilin G, dosis untuk ruminansia besar (sapi, kerbau): 6.000 – 20.000 IU/Kg berat badan , sedang untuk ruminansia kecil (kambing, domba) : 20.000 – 40.000 IU/Kg berat badan.\r\nStreptomycin, dosis untuk ruminansia besar: 5 – 10 mg/Kg BB, sedang untuk ruminansia kecil : 50 – 100 mg/Kg BB.\r\nKombinasi antara Procain Penisilin G dengan Streptomycin.\r\nOksitetrasiklin , untuk ruminansia besar: 50 mg/10 Kg BB, sedang untuk ruminansia kecil: 50 mg/5 Kg BB.\r\nb.Memberikan antiserum yang tinggi titernya ( 100 – 150 ml )\r\n\r\nAnthrax adalah penyakit zoonosis (suatu penyakit yang bisa ditularkan antara hewan dan manusia) yang sangat berbahaya, oleh sebab itu ternak  yang menderita Anthrax dilarang keras untuk dipotong.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_gejala_id` (`kelompok_gejala_id`);

--
-- Indeks untuk tabel `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `penyakit_id` (`penyakit_id`);

--
-- Indeks untuk tabel `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`kelompok_gejala_id`) REFERENCES `kelompok_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD CONSTRAINT `gejala_penyakit_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gejala_penyakit_ibfk_2` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
