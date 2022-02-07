-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2020 pada 22.59
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_jogja`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinasi`
--

CREATE TABLE `destinasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `opration_hours` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewer` int(11) DEFAULT '0',
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `destinasi`
--

INSERT INTO `destinasi` (`id`, `nama`, `nama_en`, `alamat`, `deskripsi`, `deskripsi_en`, `opration_hours`, `category`, `viewer`, `updated_at`, `created_at`) VALUES
(1, 'Bukit Teletubis', 'Teletubis Hill', 'Sumberharjo, Candisari, Wukirharjo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55572', '<hr />\r\n<p><tt>Kawasan Prambanan ternyata memiliki banyak pilihan obyek<strong> </strong>wisata, sebut saja Candi Prambanan, Candi Ijo, Tebing Breksi, dan yang baru saja diresmikan tahun 2017 ini adalah Bukit Teletubbies. Berbeda dengan bukit teletubbies Candi Abang, Bukit Teletubbies disini adalah bukit dimana wisatawan bisa melihat pemandangan rumah dome Desa Teletubbies dari atas bukit</tt></p>\r\n\r\n<p><tt>Selain menikmati keindahan alam pedesaan dan uniknya rumah dome dari atas gardu pandang yang ada, tempat ini juga menjadi tempat yang menyenangkan untuk menghabiskan waktu menjelang malam sembari menikmati panorama matahari tenggelam. Bukit Teletubbies juga bisa menjadi tempat yang pas untuk bermain anak-anak dengan adanya taman yang cukup luas.</tt></p>\r\n\r\n<p><tt>Jarak lokasi bukit teletubbies dari kota yogyakarta sekitar 21 km. Ada dua rute menuju Bukit Teletubbies, yang pertama melewati jalan beraspal ke arah kanan sebelum memasuki Desa Wisata Domes dan yang kedua melalui jalan disamping perkampungan rumah domes.</tt></p>', '<hr />\r\n<p> <tt> The Prambanan area turned out to have a large selection of tourist objects, call it Prambanan Temple, Ijo Temple, Breksi Cliff, and which was recently inaugurated in 2017 is Teletubbies Hill. Unlike the Teletubbies hill of Abang Temple, Teletubbies Hill here is a hill where tourists can see the dome view of the Teletubbies Village from the top of the hill </tt> </p>\r\n\r\n<p> <tt> Besides enjoying the natural beauty of the countryside and the unique dome house from above the viewing post, this place is also a pleasant place to spend time before night while enjoying the panoramic sunset. Bukit Teletubbies can also be an appropriate place for children\'s play with a fairly large park. </tt> </p>\r\n\r\n<p> <tt> The distance of the teletubbies hill from Yogyakarta is around 21 km. There are two routes to Bukit Teletubbies, the first through the paved road to the right before entering the Domes Tourism Village and the second through the road beside the domes\' house. </tt> </p>', '06:00 - 20:00', 'wisata_alam', 3, '2020-01-29', '0000-00-00'),
(2, 'Kampung Edukasi Watu Lumbung', ' Watu Lumbung Education Village', 'Jalan Panglima Sudirman, Parangtritis, Kretek, Kecamatan Kretek, Duwuran, Parangtritis, Kec. Kretek, Bantul', '<hr />\r\n<p><tt>Kampung Edukasi Watu Lumbung bisa jadi pilihan untuk liburan. Berlokasi di Bukit Parangtritis, Kretek, Bantul, Yogyakarta, Watu Lumbung menawarkan keindahan pemandangan khas pinggiran Yogyakarta sekaligus wisata edukasi yang tak terlupakan. Kampung Edukasi Watu Lumbung didirikan tahun 2003 oleh Muhammad Boy Rifai yang sejak awal ingin memberdayakan dan membantu perekonomian masyarakat sekitar melalu sector pariwisata. Kawasan ini memiliki beberapa area seperti area outbond, perpustakaan, warung santai, taman bermain anak, flying fox, dan sebagainya.&nbsp;</tt></p>\r\n\r\n<p><tt>Kampung Edukasi Watu Lumbung didirikan di tengah area perkebunan pohon jati. Konsep alam juga melekat di kontruksi bangunan di kawasan ini. Penggunaan bambu digunakan untuk membuat gubuk santai diantara pohon-pohon jati. Beberapa bangunan berupa rumah pohon dibuat hingga tiga lantai dengan batang pohon jati yang masih hidup sebagai tiang penopangnya. Dari sini, pengunjung bisa menikmati indahnya pemandangan dari atas bukit.</tt></p>\r\n\r\n<p><tt>Pengunjung bebas memilih warung sambil menikmati dari warung-warung yang ada. Beberapa warung yang ada di Kampung Edukasi Watu Lumbung antara lain Kedai Wedangan, Pusat Sate Kiloan, Lembayung, Kedai Susu, dan Alas Kuliner.</tt></p>\r\n\r\n<p><tt>Salah satu daya tarik Kampung Edukasi Watu Lumbung adalah gardu pohon yang dibangun di salah satu pohon jati. Konsep gardu pohon ini meniru dengan gardu pohon yang ada di Kalibiru Kulon Progo. Keamanan dan keselamatan juga tidak luput dari pengawasan pengelola. Dari atas gardu pohon, pengunjung bisa menikmati pemandangan liukan Kali Opak dan Jembatan Opak yang ikonik.</tt></p>', '<hr /><p><tt>Watu Lumbung Education Village could be an option for a vacation. Located in Bukit Parangtritis, Kretek, Bantul, Yogyakarta, Watu Lumbung offers the beauty of a distinctive scenic suburb of Yogyakarta as well as an unforgettable educational tour. Watu Lumbung Education Village was founded in 2003 by Muhammad Boy Rifai who from the beginning wanted to empower and help the local economy through the tourism sector. This area has several areas such as outbound areas, libraries, casual stalls, children&#39;s playgrounds, flying fox, and so on.&nbsp;</tt></p>  <p><tt>Watu Lumbung Education Village was established in the middle of an teak plantation area. The concept of nature is also inherent in the construction of buildings in this region. The use of bamboo is used to make relaxing huts between teak trees. Some buildings in the form of tree houses are made up to three floors with teak trees that are still alive as pillars. From here, visitors can enjoy the beautiful view from the top of the hill.</tt></p>  <p><tt>Visitors are free to choose a stall while enjoying the stalls there. Some stalls in Watu Lumbung Education Village include Kedai Wedangan, the Sate Kiloan Center, Lembayung, Kedai Susu, and Alas Kuliner.</tt></p>  <p><tt>One of the attractions of Watu Lumbung Education Village is a treehouse built in one of the teak trees. The concept of this tree house is like a tree house in Kalibiru Kulon Progo. Security and safety are also not immune from the supervision of managers. From the top of the tree house, visitors can enjoy views of the Opak River liukan and the iconic Opak Bridge.</tt></p>', '07:00 - 17:00', 'wisata_alam', 0, '2020-01-22', '0000-00-00'),
(3, 'Seribu batu Songgo Langit', 'A Thousand Stones Songgo Langit', 'Jl. Hutan Pinus Nganjir, Sukorame, Mangunan, Dlingo, Bantul', '<hr />\r\n<p><tt>Sekilas&nbsp;<strong>Seribu Batu Songgo Langit</strong>&nbsp;terdengar unik. Tapi memang tak salah jika tempat ini dinamakan seribu batu karena memang banyak terdapat bebatuan besar di tempat yang masih dalam satu kawasan Hutan Pinus Mangunan ini.</tt></p>\r\n\r\n<p><tt>Selain menarik wisatawan dengan bebatuan raksasa yang ada di tengah-tengah hutan pinus, disini juga terdapat banyak spot-spot selfie unik yang masih sangat jarang ditemukan di tempat lain. Beberapa spot unik yang ada di Seribu Batu Songgo Langit antara lain Rumah Hobbit seperti yang ada di Taman Kelinci Pujon Malang, Rumah Kayu, Jembatan Kayu yang menghubungkan antara pepohonan, gardu pandang, dan rumah pohon, dan beberapa spot unik lainnya.</tt></p>\r\n\r\n<p>&nbsp;</p>', '<hr /><p> <tt> &nbsp;<strong>A Thousand Stones Songgo Sky </strong>&nbsp;sounds unique. But it is not wrong if this place is called a thousand stones because there are indeed many large rocks in a place that is still within an area of the Pine Forest Mangunan this. </tt> </p>  <p> <tt> Besides attracting tourists with giant rocks in the middle of the pine forest, here there are also many unique selfie spots that are still very rarely found elsewhere. Some unique spots in Seribu Batu Songgo Langit include Hobbit Houses such as the one in Malang Pujon Rabbit Park, Wooden House, Wooden Bridge that connects trees, viewing posts and tree houses, and several other unique spots. </tt> </p>', '07:00 - 17:00', 'wisata_alam', 0, '2020-01-22', '0000-00-00'),
(4, 'Bukit Panguk Kediwung', 'Panguk Kediwung Hill', 'Kediwung, Mangunan, Dlingo, Bantul Regency, Special Region of Yogyakarta 55783', '<hr />\r\n<p><tt>Selain menjadi tempat melepas penat, tidak sedikit wisatawan yang datang ke sebuah obyek wisata untuk&nbsp;hunting&nbsp;foto keren. Bahkan tren&nbsp;photo hunting&nbsp;ini bisa jadi alasan utama para wisatawan untuk datang. Melihat tren yang sedang booming ini pun membuat para pengelola wisata berlomba-lomba memperindah wisata yang mereka kelola.</tt></p>\r\n\r\n<p><tt>Sebagian besar wisatawan memilih mengunjungi wisata alam yang berada di atas perbukitan pada pagi hari ketika kabut masih menyelimuti perbukitan dan matahari masih enggan menampakan sinarnya. Begitu pula pengunjung Bukit Panguk Kediwung. Sejuknya udara dan putihnya lautan awan pada pagi hari serta hangatnya sinar matahari menjadi alasan utama para wisatawan untuk datang pagi-pagi buta kesini.</tt></p>\r\n\r\n<p><tt>Tentu saja belum lengkap datang ke Bukit Panguk Kediwung sebelum berfoto ria di spot-spot selfi yang ada disini. Seperti dilihat di akun Instagram @bukitpanguk_kediwung, ada beberapa spot selfie dengan berbagai bentuk seperti bentuk bunga, delman, perahu, tanda cinta dan ada beberapa lagi yang lain.</tt></p>', '<hr /><p> <tt> Besides being a place to unwind, not a few tourists who come to the tourist attraction to hunt cool photos. Hunting photos of this latest trend could be the main reason for tourists to come. Seeing this booming trend, tour operators are competing to beautify the tours they manage. </tt> </p>  <p> <tt> Most tourists choose natural tourism which is above the hills in the morning the compilation of fog still covers the hills and the sun is still reluctant to reveal its rays. Similarly, visitors to the Panguk Kediwung Hill. The cool air and white sea of ​​clouds in the morning and the warm sun are the main reasons for tourists to come here early in the morning. </tt> </p>  <p> <tt> Of course it is not complete to come to Panguk Kediwung Hill before taking pictures at selfi spots here. Like seen on Instagram account @bukitpanguk_kediwung, there are several selfie places with various forms such as flowers, delmans, boats, signs of love and several others. </tt> </p>', '00:00 - 24:00', 'wisata_alam', 0, '2020-01-22', '0000-00-00'),
(5, 'Bukit Paralayang Parangtritis', 'Paralayang Parangteritis Hill', 'Area Hutan, Giricahyo, Purwosari, Gunung Kidul Regency, Special Region of Yogyakarta 55872', '<hr />\r\n<p>Menikmati keindahan Parangtritis tak melulu harus menginjakan kaki di pasir atau berbasah-basahan di pantainya saja. Cobalah mengunjungi&nbsp;Bukit Paralayang Parangtritis. Disini pengunjung akan mendapatkan sensasi yang berbeda menikmati keindahan Pantai Parangtritis.</p>\r\n\r\n<p>Dinamakan Bukit Paralayang karena memang bukit ini menjadi tempat dimana aktivitas Paralayang diselenggarakan. Lokasinya yang berada di perbukitan yang langsung menghadap ke lautan luas memang sangat pas untuk melakukan paralayang.</p>\r\n\r\n<p>Meskipun menjadi lokasi olahraga paralayang, tidak sedikit juga pengunjung yang datang kesini hanya untuk menikmati pemandangan yang disuguhkan di tempat ini. Dengan ketinggian mencapai 900 Mdpl, pengunjung dapat menikmati keindahan garis Pantai Parangtritis yang bertemu langsung dengan luasnya Laut Selatan.</p>\r\n\r\n<p>Waktu favorit untuk mengunjungi tempat ini adalah saat matahari tenggelam. Senja yang dramatis di ufuk barat benar-benar akan menjadi pengalaman yang tidak akan pernah terlupakan.</p>', '<hr /><p> Enjoying the beauty of Parangtritis is not merely having to set foot in the sand or get wet in the beach. Try visiting Parangtritis Paragliding Hill. Here visitors will get a different sensation of enjoying the beauty of Parangtritis Beach. </p><p> Named Bukit Paragliding because this hill is indeed a place where Paragliding activities are held. Its location in the hills directly facing the vast ocean is indeed very fitting for paragliding. </p><p> Despite being a paragliding sport location, not a few visitors come here just to enjoy the view that is served in this place. With a height of 900 meters above sea level, visitors can enjoy the beauty of the Parangtritis coastline that meets directly the vast South Sea. </p><p> The favorite time to visit this place is when the sun sets. Dramatic twilight in the western horizon will truly be an experience that will never be forgotten. </p>', '05:00-18:30', 'wisata_alam', 0, '2020-01-22', '0000-00-00'),
(6, 'Gumuk Pasir Parangkusumo Bantul', 'Parangkusumo Sand Gumuk Bantul', 'Jl. Pantai Parangkusumo RT. 1, Grogol 10, Kretek, Parangtritis, Pantai, Parangtritis, Kec. Kretek, Bantul', '<hr />\r\n<p><tt>Melihat film-film timur tengah pastinya bisa memunculkan rasa penasaran kita pada gurun pasir bukan? Gurun pasir digambarkan dengan area yang sangat luas dan sejauh mata memandang hanya ada pasir. Bicara tentang cuacanya, gurun pasir termasuk memiliki cuaca yang ekstrim, sangat panas pada siang hai, dan dingin yang menusuk saat malam hari. Gurun pasir biasanya hanya ditemukan di daerah-daerah afrika atau Timur Tengah. Tapi siapa sangka, ternyata wilayah tropis dengan curah hujan tinggi seperti Indonesia juga memiliki gurun pasir. </tt></p>\r\n\r\n<p><tt>Terletak di Parangtritis, Yogyakarta, disini pengunjung bisa memuaskan rasa penasaran terhadap gurun pasir. Gumuk Pasir, begitu orang-rang menyebutnya. Gumuk itu sendiri berasal dari bahasa Jawa yang artinya adalah gundukan. Jadi, Gumuk Pasir adalah gundukan-gundukan pasir yang terhampar luas. Gumuk pasir ini terletak di sebelah barat Pantai Parangtritis, Bantul, Yogyakarta.&nbsp;</tt></p>', '<hr />\r\n<p> <tt> Seeing Middle Eastern films can certainly bring our curiosity to the desert, right? Deserts are represented by a very large area and as far as the eye can see there is only sand. Speaking of the weather, deserts include extreme weather, very hot during the day, and piercing cold at night. Deserts are usually only found in areas of Africa or the Middle East. But who would have thought, it turns out that tropical regions with high rainfall such as Indonesia also have deserts. </tt> </p>\r\n\r\n<p> <tt> Located in Parangtritis, Yogyakarta, here visitors can satisfy their curiosity about the desert. Sand Dune, as people call it. Gumuk itself comes from Javanese language which means it is a mound. So, Sand Dune is a vast sand dune. This sand dune is located west of Parangtritis Beach, Bantul, Yogyakarta. </tt> </p>', '07:00 - 17:00', 'wisata_alam', 0, '2020-01-23', '0000-00-00'),
(7, 'Puncak Suroloyo', 'Suroloyo Peak', 'Dusun Keceme, Onggosoro, Giritengah, Borobudur, Kulonprogo', '<hr />\r\n<p><tt>Bagi para pecinta wisata alam, Kulon Progo bisa menjadi pilihan tepat untuk berlibur. Wilayah Kulon Progo bagian utara berada di kawasan Perbukitan Menoreh yang menyimpan banyak potensi wisata alam. Perbukitan Menoreh sendiri merupakan kawasan perbukitan yang membentang di wilayah Kabupaten Kulon Progo, Magelang, dan Purworejo. Perbukitan Menoreh memiliki titik tertinggi yang bernama Puncak Suroloyo. </tt></p>\r\n\r\n<p><tt>Puncak Suroloyo memiliki ketinggian kurang lebih 1.091 Mdpl. Dari puncak ini wisatawan bisa melihat pemandangan empat gunung sekaligus, yaitu Merapi, Merbabu, Sindoro, dan Sumbing. Karena itu tidak heran jika Puncak Suroloyo menjadi destinasi favorit para wisatawan. </tt></p>\r\n\r\n<p><tt>Puncak Suroloyo memiliki tiga gardu pandang untuk menikmati bentang alam Perbukitan Menoreh. Wisatawan harus menaiki ratusan anak tangga sebelum akhirnya bisa sampai di puncak. Akan tetapi lelah selama perjalanan akan langsung terbayarkan dengan pemandangan yang membuat hati berdecak kagum. Waktu yang disarankan untuk</tt></p>', '<hr /> <p> <tt> For nature lovers, Kulon Progo can be the right choice for a vacation. The northern part of Kulon Progo is in the Menoreh Hills which has a lot of natural tourism potential. Menoreh hills itself is a hilly area that stretches across the regions of Kulon Progo, Magelang and Purworejo Regencies. Menoreh hills have the highest point named Suroloyo Peak. </tt> </p>  <p> <tt> Suroloyo Peak has an altitude of approximately 1,091 meters above sea level. From this peak, tourists can see the view of four mountains at once, namely Merapi, Merbabu, Sindoro, and Sumbing. Because it is not surprising that Suroloyo Peak is a favorite destination for tourists. </tt> </p>  <p> <tt> Suroloyo Peak has three viewing posts to enjoy the Menoreh Hills landscape. Tourists must climb hundreds of steps before finally reaching the top. But tired during the trip will immediately pay off with a view that makes the heart chuckle in awe. Suggested time for </tt> </p>', '07:00 - 17:00', 'wisata_alam', 0, '2020-01-23', '0000-00-00'),
(8, 'Watu Lawang Mangunan', 'Watu Lawang Mangunan', 'Cempuk, Mangunan, Dlingo, Bantul Regency', '<hr />\r\n<p><tt>Mangunan merupakan salah satu kawasan wisata di Bantul yang memiliki beberapa spot wisata yang sayang kalau dilewatkan. Mulai dari kebun buah mangunan, hutan pinus, bukit panguk, bukit mojo, dan sekarang yang belum lama opening adalah Watu Lawang. Watu lawang merupakan spot wisata yang masih berada satu lokasi dengan Kebun Buah Mangunan. Watu Lawang sendiri diambil dari kata lawing yang artinya pintu dalam bahasa Indonesia. Ini karena, puncak bukit yang terbelah sehingga terlihat seperti pintu. </tt></p>\r\n\r\n<p><tt>Obyek wisata Watu Lawang berada di sebelah barat kebun buah mangunan. Watu Lawang terkenal dengan pemandangan area persawahan Desa Wisata Kedungmiri dan jembatan gantung imogiri sebagai latar belakangnya. Karena itu tidak heran, beberapa warga bantul sudah mengetahui spot wisata ini. Untuk mencapai spot watu lawang, pengunjung harus berjalan menelusuri anak tangga dan jalan setapak yang berada di pinggiran tebing.&nbsp;</tt></p>', '<hr /> <p> <tt> For nature lovers, Kulon Progo can be the right choice for a vacation. The northern part of Kulon Progo is in the Menoreh Hills which has a lot of natural tourism potential. Menoreh hills itself is a hilly area that stretches across the regions of Kulon Progo, Magelang and Purworejo Regencies. Menoreh hills have the highest point named Suroloyo Peak. </tt> </p>  <p> <tt> Suroloyo Peak has an altitude of approximately 1,091 meters above sea level. From this peak, tourists can see the view of four mountains at once, namely Merapi, Merbabu, Sindoro, and Sumbing. Because it is not surprising that Suroloyo Peak is a favorite destination for tourists. </tt> </p>  <p> <tt> Suroloyo Peak has three viewing posts to enjoy the Menoreh Hills landscape. Tourists must climb hundreds of steps before finally reaching the top. But tired during the trip will immediately pay off with a view that makes the heart chuckle in awe. Suggested time for </tt> </p>', '07:00 - 17:00', 'wisata_alam', 1, '2020-01-27', '0000-00-00'),
(9, 'Desa Wisata Kembang Arum', 'Arum Flower Tourism Village', 'Kembangarum 13, Donokerto, Turi, Wetan Kali, Donokerto, Kec. Turi, Kabupaten Sleman', '<hr />\r\n<p><tt>Gapura desa yang menuliskan motto Anda datang senang, pulang tambah pintar adalah motto&nbsp;Desa Wisata Kembang Arum. Sebuah desa yang berjarak 20 km dari pusat kota Yogyakarta. Memasuki desa ini, anda akan disambut dengan perkebunan salak yang tertata rapi serta yang berada di pinggir jalan desa ini. Keindahan tidak berakhir pada perkebunan salak ini, sawah hijau terbentang, sungai dengan air jernih dan udara yang segar.</tt></p>\r\n\r\n<p><tt>Memanfaatkan tanah seluas 22 hektar yang terdiri dari tanah warga, kas desa dan milik sanggar Pratista, Pak Hery Kustriyatmo sebagai pengelola mampu menggerakkan ekonomi lokal dengan merespon potensi alam yang ditata dengan indah sehingga desa ini sudah didatangani sekitar 65.000 orang baik wisnu maupun wisman.</tt></p>\r\n\r\n<p><tt>Hal ini membuktikan bahwa pedesaan mempunyai potensi wisata tersendiri. Dan program desa wisata pun digalakkan untuk mengopimalkan potensi pedesaan. Hal ini sesuai dengan konsep sustainable development yang bisa diartikan sebagai pengelolaan yang baik mewujudkan keseimbangan antara kebutuhan manusia untuk meningkatkan gaya hidup dan memelihara sumber daya alam dan ekosistem tempat kita dan generasi beikutnya bergantung. Sustainable development merupakan pertumbuhan ekonomi bersama-sama dengan perlindungan atas kualitas lingkungan yang saling mendukung satu sama lain. Implikasi konsep ini harus melibatkan kerjasama antar inisiator dengan warga masyarakat yang menempati lingkungan tersebut. (Mintzer, 1992, dikutip dari http://www.gdrc.org/sustdev/definitions.html)</tt></p>', '<hr /> <p> <tt> The village gate that writes the motto that you come happy, coming home more smart is the motto & nbsp; Kembang Arum Tourism Village. A village which is 20 km from the center of Yogyakarta. Entering this village, you will be greeted with salak plantation which is neatly arranged and located on the roadside of this village. The beauty does not end at this salak plantation, green rice paddies, rivers with clear water and fresh air. </tt> </p>  <p> <tt> Utilizing 22 hectares of land consisting of community land, village treasury and the property of Pratista Studio, Mr. Hery Kustriyatmo as the manager is able to move the local economy by responding to the beautifully arranged natural potential so that this village has been signed by around 65,000 people both wisnu and wisman. </tt> </p>  <p> <tt> This proves that rural areas have their own tourism potential. And the village tourism program was promoted to optimize the rural potential. This is in accordance with the concept of sustainable development which can be interpreted as good management creating a balance between human needs to improve lifestyles and maintain natural resources and the ecosystems on which we and subsequent generations depend. Sustainable development is economic growth together with the protection of environmental qualities that support one another. The implication of this concept must involve collaboration between the initiator and the community members who occupy the environment. (Mintzer, 1992, quoted from http://www.gdrc.org/sustdev/definitions.html) </tt> </p>', '08:00 - 15:30', 'wisata_alam', 1, '2020-01-27', '0000-00-00'),
(10, 'Pantai Jungwok', 'Jungwok  Beach', 'Pendowo, Jepitu, Girisubo, Gunung Kidul Regency, Special Region of Yogyakarta', '<hr />\r\n<p><tt>Selain keunikan alam yang ada di pantai selatan Gunungkidul, wisata pantai di Gunungkidul juga dikunjungi karena aktivitas yang bisa dilakukan di pantai tersebut. Contohnya saja snorkeling di Pantai Sadranan, Surfing di Pantai Wediombo, dan yang baru-baru ini booming adalah camping di pinggir pantai. Dari beberapa pantai yang biasa digunakan sebagai tempat berkemah, salah satu yang paling direkomendasikan dan menjadi langganan untuk berkemah adalah Pantai Jungwok. </tt></p>\r\n\r\n<p><tt>Seperti khusus diperuntukan untuk berkemah, Pantai Jungwok memang berbeda dengan Pantai Indrayanti yang memiliki full fasilitas. Disini benar-benar sepi, sangat minim fasilitas, sehingga yang ada disini hanyalah hamparan pasir putih, ombak dan lautan luas, serta perbukitan hijau di sekitar pantai. Benar-benar terasa seperti pantai pribadi. Lokasi Pantai Jungwok Gunungkidul berada di sebelah timur kawasan Pantai Wediombo sejauh kurang lebih satu kilometer jadi kita bisa ambil rute menuju Pantai Wediombo.&nbsp;</tt></p>', '<hr /><p> <tt> In addition to the unique nature on the south coast of Gunungkidul, beach tourism in Gunungkidul is also visited because of activities that can be done on the beach. For example, snorkeling at Sadranan Beach, Surfing at Wediombo Beach, and the most recent boom is camping on the beach. Of the several beaches that are commonly used as camping spots, one of the most recommended and become a subscription for camping is Jungwok Beach. </tt> </p>  <p> <tt> As specifically intended for camping, Jungwok Beach is indeed different from Indrayanti Beach which has full facilities. Here is really quiet, very minimal facilities, so that there is only a stretch of white sand, waves and the vast ocean, and green hills around the beach. Really feels like a private beach. The location of Jungwok Gunungkidul Beach is east of the Wediombo Beach area for about one kilometer so we can take the route to Wediombo Beach. </tt> </p>', '00:00 - 24:00', 'wisata_pantai', 0, '2020-01-22', '0000-00-00'),
(11, 'Pantai Pok Tunggal', 'Pok Tunggal Beach', 'Desa Tepus, Kec Tepus, Kab Gunungkidul', '<hr />\r\n<p><tt>Kawasan Pantai Selatan Gunungkidul sudah banyak dikenal memiliki keindahan yang khas mulai dari ujung barat hingga ujung timur, salah satu pantai yang indah dan menjadi wisata baru yaitu&nbsp;Pantai Pok Tunggal, Tepus Gunungkidul. Pantai yang landai dengan pasir putihnya menawarkan berbagai keindahan bersama sanak keluarga, handai taulan dan teman-teman.</tt></p>\r\n\r\n<p><tt>Pemberian nama Pok Tunggal adalah pemberian warga setempat dikarenakan di area pantai ini terdapat sebuah pohon besar yang kini masih kokoh berdiri. Pohon inilah yang menjadi ciri khas dan menjadi keunikan tersendiri. Lebih lanjut lagi Puspitasari menjelaskan kepada kami, potensi yang dimiliki Pantai Pok Tunggal adalah pantai yang landai dengan pasir putih dapat digunakan untuk kegiatan olah raga pantai, mulai dari volley pantai, treking tebing, spektakuler sunset, makan malam romantis di tepi pantai, pesta ikan bakar dan lobster, menginap di pantai dengan tenda dan lain-lain.</tt></p>\r\n\r\n<p><tt>Meskipun rute menuju pantai Pok Tunggal sedikit menantang karena jalan yang dilalui masih belum di aspal, namun pantai tersebut sudah mempunyai fasilitas parkir, toilet, warung makan dan mushola yang dikelola masyarakat setempat.</tt></p>', '<hr /><p> <tt> The Gunungkidul South Coast area is already known to have a distinctive beauty from the west to the east end, one of the beautiful beaches and a new tourist attraction namely Pok Tunggal Beach, Tepus Gunungkidul. Sloping beach with white sand offers a variety of beauty with family, friends, friends and friends. </tt> </p>  <p> <tt> Giving the name Pok Tunggal is given by local residents because in this beach area there is a large tree that is still standing strong. This tree is a characteristic and unique. Furthermore Puspitasari explained to us, the potential possessed by Pok Tunggal Beach is a sloping beach with white sand that can be used for beach sports activities, ranging from beach volleyball, rock climbing, spectacular sunset, romantic dinner by the beach, grilled fish party and lobsters, stay on the beach with tents and more. </tt> </p>  <p> <tt> Although the route to Pok Tunggal beach is a bit challenging because the road is not asphalted, the beach already has parking facilities, toilets, food stalls and prayer rooms managed by the local community. </tt> </p>', '00:00 - 24:00', 'wisata_pantai', 1, '2020-01-29', '0000-00-00'),
(12, 'Pantai Wedi Ombo', 'Wedi Ombo Beach', 'Pendowo, Jepitu, Girisubo, Gunung Kidul Regency, Special Region of Yogyakarta', '<hr />\r\n<p><tt>Pantai Wedi ombo secara administratif masuk wilayah Desa Jepitu, Kecamatan Girisubo, Kabupaten Gunung Kidul. Pantai ini termasuk pantai yang ada di ujung timur wilayah Daerah istimewa Yogyakarta. Akses menuju pantai ini sangatlah mudah dijangkau setelah sebelumnya datang ke Pantai Siung.</tt></p>\r\n\r\n<p><tt>Pantai Wedi ombo ini memiliki kontur tanah yang lebih rendah dibandingkan daratan di sekitarnya. Beberapa puluh anak tangga menjadi akses awal kita untuk menikmati keindahan Wedi ombo. Sembari menapaki jalan turun kita bisa melihat hamparan ladang pertanian dan rumah penduduk yang berada di sekita pantai tidak ketinggalan pula vegetasi mangrove yang masih tersisa. Perbukitan yang curam dan terjal menjadikan kawasan Pantai Wediombo ini menjadi ajang bagi para pemancing untuk merasakan nikmatnya memancing diatas bukit. Kebiasaan dari penduduk setempat ini akhirnya menular kepada para mincing mania yang berada di luar daerah tersebut.</tt></p>\r\n\r\n<p><tt>Tidak jauh berbeda dengan penduduk di pesisir pantai, penduduk sekitar Pantai Wedi Ombo melakukan upacara budaya yang sering disebut Ngalangi yang diadakan setahun sekali. Upacara ini mirip Labuhan Besar yang tujuan utamanya yaitu mengungkapkan rasa syukur pada Tuhan atas anugerah yang dilimpahkan dan memohon rejeki yang lebih baik untuk masa mendatang. Ngalangi atau menghalangi adalah prosesi penangkapan ikan dengan cara menggunakan gawar yang terbuat dari akar pohon wawar yang menjalar sebagai jaring yang dipancangkan dari bukit Kedungwok dan dihalau bersama-sama ke laut oleh masyarakat setempat.</tt></p>', '<hr /> <p> <tt> Pantai Wedi Omo is administratively included in the area of ​​Jepitu Village, Girisubo District, Gunung Kidul Regency. This beach is one of the beaches at the eastern end of the Special Region of Yogyakarta. Access to this beach is very easy to reach after previously coming to Siung Beach. </tt> </p>  <p> <tt> This Wedi Omo Beach has lower land contours than the surrounding land. Several tens of steps become our initial access to enjoy the beauty of Wedi Omo. While walking down the road we can see the expanse of agricultural fields and homes of residents around the coast not to miss the remaining mangrove vegetation. The steep and steep hills make this Wediombo Beach area a place for anglers to feel the pleasure of fishing on the hill. Habits of the local population is finally transmitted to the fishing mania that are outside the area. </tt> </p>  <p> <tt> Not much different from residents on the coast, residents around Wedi Ombo Beach conduct cultural ceremonies often called Ngalangi which are held once a year. This ceremony is similar to Labuhan Besar whose main purpose is to express gratitude to God for the gift bestowed and to ask for a better fortune for the future. Ngalangi or hindering is a procession of fishing by using rawar which is made from the roots of the wawar tree which propagates as a net which is anchored from the Kedungwok hill and driven together to the sea by the local community. </tt> </p>', '00:00 - 24:00', 'wisata_pantai', 0, '2020-01-22', '0000-00-00'),
(13, 'Pantai Ngrenehan', 'Ngrenehan Beach', 'Desa Kanogoro,saptosari, kabupaten gunki, Daerah Istimewa Yogyakarta', '<hr />\r\n<p><tt>Pantai ngrenehan, terletak di Desa Kanigoro, Kecamatan Saptosari, Kabupaten Gunungkidul, DIY. Berjarak sekitar 30km dari Wonosari atau sekitar 60km dari pusat kota Jogja.</tt></p>\r\n\r\n<p><tt>Masih belum banyak orang yang tau keberadaan pantai ini, karena letaknya yang tersembunyi, melewati jalan kecil yang meliuk dan berombak, dan masih belum terdapat sarana transportasi yang menuju langsung ke lokasi.<br />\r\nSama dengan Pantai Depok di Kabupaten Bantul,anda juga dapat menikmati sajian menu sea food di sini, karena di Pantai Ngrenehan juga terdapat Tempat Pelelangan Ikan, sehingga anda dapat langsung membeli aneka hasil laut yang masih segar. Dan untuk anda yang tidak mau repot masak sendiri, terdapat pula warung-warung makan yang menyediakan aneka makanan olahan hasil laut juga. Tak heran, karena di sekitar pantai ini terdapat kampung nelayan.</tt></p>\r\n\r\n<p><tt>Lokasi menuju Pantai Ngrenehan kita bisa ambil jalur dari kota Yogyakarta menuju kota Wonosari, setiba di lapangan Gading, belok arah Playen, Paliyan, kemudian perjalanan dilanjutkan menuju Trowono.</tt></p>\r\n\r\n<p><tt>Rute Paliyan-Trowono merupakan rute yang sangat menarik bagi penyuka penjelajah. Rute ini kita melewati hutan Sodong dengan jalanan naik turun dengan panorama alami dimana sesekali kehadiran monyet kita temui sedang menyeberang jalan.</tt></p>', '<hr /> <p> <tt> Ngrenehan Beach, located in Kanigoro Village, Saptosari District, Gunungkidul Regency, DIY. It is about 30km from Wonosari or around 60km from downtown Jogja. </tt> </p>  <p> <tt> There are still not many people who know the existence of this beach, because of its hidden location, through a small road that swerves and is choppy, and there is still no means of transportation that goes directly to the location. Same with Depok Beach in Bantul Regency, you can also enjoy sea food menu offerings here, because at Ngrenehan Beach there is also a Fish Auction Place, so you can immediately buy a variety of fresh seafood. And for those of you who don\'t want to bother cooking by yourself, there are also food stalls that provide a variety of processed seafood products as well. No wonder, because around this beach there is a fishing village. </tt> </p>  <p> <tt> Location to Ngrenehan Beach we can take the path from the city of Yogyakarta to the city of Wonosari, after arriving at Gading field, turn towards Playen, Paliyan, then continue the journey to Trowono. </tt> </p>  <p> <tt> The Paliyan-Trowono route is a very attractive route for explorer enthusiasts. This route we pass through the Sodong forest with roads up and down with a natural panorama where occasionally the presence of monkeys we encounter is crossing the road. </tt> </p>', '00:00 - 24:00', 'wisata_pantai', 0, '2020-01-22', '0000-00-00'),
(14, 'Pantai Ngobaran', 'Ngobaran Beach', 'Desa Kanigoro, Kecamatan Saptosari, Kabupaten Gunungkidul', '<hr />\r\n<p><tt>Jika selama ini orang pergi ke pantai untuk menikmati keindahan alam yang ditawarkan, maka anda akan mendapatkan hal yang lebih dari itu jika berkunjung ke<strong>&nbsp;</strong>pantai Ngobaran.</tt></p>\r\n\r\n<p><tt>Di pantai yang berada di Desa Kanigoro, Kecamatan Saptosari, Kabupaten Gunungkidul, Daerah Istimewa Yogyakarta, wisata budaya dan sejarah juga bisa pengunjung dapatkan.</tt></p>\r\n\r\n<p><tt>Ngobaran bukanlah pantai yang memiliki garis pantai yang panjang dengan hamparan pasir putih. Pantai ini berupa tebing yang menghadap langsung ke Samudra Hindia.</tt></p>\r\n\r\n<p><tt>Tebing karst yang berdiri gagah berpadu dengan deburan ombak pantai selatan menghadirkan pemandangan yang cukup cantik.</tt></p>\r\n\r\n<p><tt>Jika air laut sedang surut, pengunjung bisa menyaksikan hamparan rumput laut alga&nbsp;yang juga tidak kalah eksotis.</tt></p>\r\n\r\n<p><tt>Daya tarik budaya dan sejarah, menjadikan Ngobaran begitu unik dan berbeda dari pantai lainnya di Kabupaten Gunungkidul. Di tepi tebing yang menghadap laut, terdapat bangunan menyerupai pura.</tt></p>\r\n\r\n<p><tt>Di area tersebut terdapat sejumlah patung dewa berwarna putih dan tokoh semar. Di sini pula terdapat prasasti yang menyebutkan komplek yang menyerupai pura tersebut dibangun sebagai pertanda bahwa pantai Ngobaran adalah lokasi moksanya Brawijaya V, keturunan Raja Majapahit.</tt></p>', '<hr /><p> <tt> If all this time people go to the beach to enjoy the beauty of nature has to offer, then you will get more than that if you visit Ngobaran beach. </tt> </p>  <p> <tt> On the beach in Kanigoro Village, Saptosari District, Gunungkidul Regency, Special Region of Yogyakarta, visitors can also get cultural and historical tourism. </tt> </p>  <p> <tt> Ngobaran is not a beach that has a long coastline with white sand. This beach is a cliff that faces directly to the Indian Ocean. </tt> </p>  <p> <tt> Karst cliffs that stand proudly combined with the pounding waves of the south coast present a pretty beautiful view. </tt> </p>  <p> <tt> If the sea water is receding, visitors can watch the expanse of algae seaweed that is also no less exotic. </tt> </p>  <p> <tt> Cultural and historical appeal, making Ngobaran so unique and different from other beaches in Gunungkidul Regency. On the edge of a cliff facing the sea, there is a temple-like building. </tt> </p>  <p> <tt> In the area there are a number of white deities and semar figures. There is also an inscription which mentions that the temple-like complex was built as a sign that Ngobaran beach is the location of Brawijaya V\'s moxa, descendant of King Majapahit. </tt> </p>', '00:00 - 24:00', 'wisata_pantai', 0, '2020-01-22', '0000-00-00'),
(15, 'Musium Pendidikan Indonesia', ' Indonesian Education Museum', 'Kampus Pusat Universitas Negeri Yogyakarta, Jalan Colombo No. 1, Caturtunggal, Depok, Karang Malang, Caturtunggal', '<hr />\r\n<p><tt>Melihat sejarah panjang pendidikan di Indonesia dan tidak ada satu pihak pun yang concern untuk mendokumentasikannya, kegelisahan dan kegundahan almarhum Prof. Dr. Sugeng Mardiono Phd membulatkan tekadnya untuk membangun sebuah museum pendidikan. Setelah melalui proses panjang , berdirilah Museum Pendidikan Indonesia yang dikelola oleh Universitas Negeri Yogyakarta. </tt></p>\r\n\r\n<p><tt>Tanggal 8 Juli 2008 merupakan hari lahirnya Museum Pendidikan Indonesia (MPI) dan di resmikan oleh Sri Sultan HB X. Museum Pendidikan Indonesia berdiri di gedung bekas Rektorat Pertama yang berada di area komplek UNY. Museum Pendidikan Indonesia merupakan yang pertama dan satu-satunya museum yang menyimpan dan mengoleksi barang-barang yang berhubungan dengan sejarah pendidikan di Indonesia. Museum Pendidikan Indonesia ini berlantai dua, lantai satu berisi koleksi lantai satu berisi koleksi barang-barang yang bernilai sejarah pendidikan dan perkembangan dalam komuniasi, seperti surat-surat, akta-akta, ijazah, buku-buku</tt></p>', '<hr /> <p> <tt> Seeing the long history of education in Indonesia and no one was concerned to document it, the anxiety and anxiety of the late Prof. Dr. Sugeng Mardiono Phd made up his mind to build an educational museum. After a long process, the Indonesian Education Museum was established which is managed by Yogyakarta State University. </tt> </p>  <p> <tt> July 8, 2008 was the day of the birth of the Indonesian Education Museum (MPI) and was inaugurated by Sri Sultan HB X. The Indonesian Education Museum stands in the former First Rectorate building in the area of ​​the UNY complex. The Indonesian Education Museum is the first and only museum that stores and collects items related to the history of education in Indonesia. The Indonesian Education Museum has two floors, the first floor contains a collection of the first floor containing a collection of items that are of educational history and developments in communication, such as letters, deeds, diplomas, books </tt> </p>', '08:00 - 15:30', 'wisata_museum', 1, '2020-01-29', '0000-00-00'),
(16, 'Musium Keraton Yogyakarta', 'Yogyakarta Palace Museum', 'Jl. Rotowijayan Blok No. 1, Panembahan, Kraton, Kota Yogyakarta', '<hr />\r\n<p><tt>Keraton Yogyakarta sebagai salah satu pilar utama berdirinya Republik Indonesia tentunya memiliki sejarah panjang perjuangannya dari era Kolonial hingga sekarang ini. Sejarah panjang tersebut tentunya berguna bagi masa depan generasi muda untuk bisa mengetahui serta memahani perjuangan yang telah dilakukan. Oleh karena itu Keraton Yogyakarta sebagai institusi budaya dan perjuangan bangsa berkewajiban mendokumentasikan perjuangannya kepada masyarakat dengan membangun wisata museum sebagai pusat dokumentasi sejarah perjuangan Keraton Yogyakarta.</tt></p>\r\n\r\n<p><tt>Museum Keraton Yogyakarta berdiri di atas tanah seluas 14.000 m2, bangunan berarsitektur khas Jawa ini memiliki berbagai macam koleksi mulai dari peralatan rumah tangga, keris, tombak, wayang, gamelan, naskah kuno, foto dan lukisan diantaranya ada yang berusia sampai 200 tahun.</tt></p>\r\n\r\n<p><tt>Banyaknya koleksi yang dimiliki oleh museum Keraton Yogyakarta, perlengkapan jumenengan atau penobatan raja paling banyak menarik perhatian pengunjung di tempat ini. Peralatan atau ubo rampe penobatan raja terdiri dari dalang, sawung, galing, hardawalika, kutuk, kandil, kacu mas, dan cepuri yang dibuat dari bahan kuningan sehingga semua peralatan tersebut berwarna kuning keemasan.</tt></p>\r\n\r\n<p><tt>Koleksi benda-benda pusaka milik Museum Keraton Yogyakarta terbuat dari berbagai macam bahan baku mulai dari, dari perunggu, kayu jati, kertas, kaca besi dan kulit.</tt></p>', '<hr /> <p> <tt> Yogyakarta Palace as one of the main pillars of the establishment of the Republic of Indonesia certainly has a long history of struggle from the Colonial era to the present. This long history is certainly useful for the future of the younger generation to be able to know and understand the struggles that have been done. Therefore the Yogyakarta Palace as a cultural institution and the nation\'s struggle is obliged to document its struggle to the community by building a museum tour as a historical documentation center for the struggle of the Yogyakarta Palace. </tt> </p>  <p> <tt> Yogyakarta Palace Museum stands on an area of ​​14,000 m2, this Javanese architecture building has various collections ranging from household appliances, keris, spears, puppets, gamelan, ancient manuscripts, photographs and paintings of which are aged up to 200 years. </tt> </p>  <p> <tt> The many collections that are owned by the Yogyakarta Keraton Museum, the jumenengan equipment or the coronation of the king most attract visitors to this place. Equipment or ubo rampe king coronation consists of puppeteers, sawung, galing, hardawalika, curses, candlesticks, goldfish, and cepuri made of brass so that all the equipment is golden yellow. </tt> </p>  <p> <tt> Yogyakarta Palace Museum\'s collection of heirlooms is made of various raw materials, ranging from bronze, teak wood, paper, iron glass and leather. </tt> </p>', '08:00 - 13:30', 'wisata_museum', 0, '2020-01-22', '0000-00-00'),
(17, 'Musium Perjuangan Yogyakarta', 'Yogyakarta Struggle Museum', 'Jl. Kolonel Sugiyono No.24, Brontokusuman, Kec. Mergangsan, Kota Yogyakarta', '<hr />\r\n<p><tt>Museum Perjuangan Yogyakarta&nbsp;adalah salah satu penanda sejarah pentingnya Hari Kebangkitan Nasional yang diprakarsai oleh Dr. Sutomo pada tanggal 20 Mei 1908. Pada tanggal tersebut lahir sebuah pergerakan Budi Utomo yang didirikan beliau bersama dengan para mahasiswa STOVIA Jakarta yang dijadikan sebagai Hari Kebangkitan Nasional</tt></p>\r\n\r\n<p><tt>Sebagai bentuk apresiasi pemerintah untuk mengenang setengah abad Hari Kebangkitan Nasional, berdirilah Museum Perjuangan Yogyakarta. Pembangunan museum dimulai dengan peletakan batu pertama oleh Sri Paku Alam VIII pada tanggal 29 Juni 1961. Pembangunan museum ini selesai pada tahun 1963.<br />\r\nGedung Museum Perjuangan Yogyakarta memadukan gaya arsitektur zaman kekaisaran Romawi Kuno dan bentuk candi di bagian bawahnya. Bentuk bangunan melingkar seperti silinder yang dikenal dengan istilah Ronde Tempel. Jika Anda perhatikan, atap gedung museum menyerupai topi baja dengan 5 buah bambu runcing berdiri di atas bola dunia.</tt></p>\r\n\r\n<p><tt>Pintu masuk utama bagi para pengunjung berada di bagian depan gedung ini dan langsung berada di lantai II. Di lantai II, pengunjung bisa melihat interior gedung ini dipenuhi dengan jendela sebagai jalur cahaya matahari yang berjumlah 45 buah. Salah satu sudut dari ruangan ini, tampak anak tangga menuju lantai dasar (lantai dasar ini sempat dimanfaatkan sebagai Museum Sandi Negara yang memanjang koleksi aneka persandian).</tt></p>\r\n\r\n<p><tt>Di lantai utama ini, terdapat banyak koleksi pernak-pernik perjuangan mulai dari meja dan peralatan makan yang pernah dipakai Presiden Soekarno, selain itu terdapat peninggalan sepeda tua, alat komunikasi radio perjuangan, dan tas milik Bung Hatta.</tt></p>', '<hr /> <p> <tt> The Yogyakarta Struggle Museum is one of the historical markers of the importance of the National Awakening Day initiated by Dr. Sutomo on May 20, 1908. On that date was born a Budi Utomo movement which he founded together with the students of STOVIA Jakarta which was used as National Awakening Day </tt> </p>  <p> <tt> As a form of appreciation from the government to commemorate half a century of National Awakening Day, the Yogyakarta Struggle Museum stands. The construction of the museum began with the laying of the first stone by Sri Paku Alam VIII on June 29, 1961. Construction of the museum was completed in 1963. <br /> Yogyakarta Struggle Museum Building combines the architectural style of the Ancient Roman Empire and the shape of the temple at the bottom. The shape of a circular building like a cylinder is known as the Outboard Round. If you notice, the roof of the museum building resembles a helmet with 5 spiky bamboo standing on a globe. </tt> </p>  <p> <tt> The main entrance for visitors is at the front of this building and directly on the second floor. On the second floor, visitors can see the interior of this building filled with windows as a path of sunlight, amounting to 45 pieces. In one corner of this room, steps appear to the ground floor (this ground floor was once used as the State Code Museum that extends a collection of various encodings). </tt> </p>  <p> <tt> On this main floor, there is a large collection of struggle trinkets ranging from tables and cutlery that President Soekarno used, besides that there were old bicycle relics, struggle radio communication tools, and Bung Hatta\'s bag. </ tt> </p>', '07:30 - 16:00', 'wisata_museum', 0, '2020-01-22', '0000-00-00'),
(18, 'Musium Sasana Wiratama', ' Sasana Wiratama Museum', 'Jl. Tegalrejo,Kota Yogyakarta', '<hr />\r\n<p><tt>Sebagai salah satu pangeran di Kraton Kasultanan Yogyakarta, Pangeran Diponegoro lebih memilih hidup di luar tembok istana dan menyatu dengan masyarakat biasa. Hidup di luar tembok istana adalah bentuk dari perjuangan beliau terhadap campur tangan Belanda di dalam kehidupan politik Kraton Kasultanan Yogyakarta pada waktu itu.</tt></p>\r\n\r\n<p><tt>Museum ini adalah salah satu destinasi wisata sejarah yang cukup banyak dikunjungi wisatawan baik domestik maupun mancanegara. Bangunan dengan arsitektur khas Jawa, dulunya adalah kediaman Pangeran Diponegoro (menjadi titik awal pecahnya Perang Jawa), yang dijadikan museum sebagai bentuk penghormatan terhadap beliau.</tt></p>\r\n\r\n<p><tt>Museum Sasana Wiratama&nbsp;ini diresmikan pada tanggal 9 Agustus 1969 oleh Presiden Soeharto. Museum yang didominasi dengan warna hijau ini memang didirikan untuk mengenang perjuangan Pangeran Diponegoro. Sejarah perjuangan beliau dalam membela kemerdekaan bisa Anda ketahui lewat benda-benda peninggalannya yang dipajang di museum ini.</tt></p>', '<hr /> <p> <tt> As one of the princes in the Sultanate Palace of Yogyakarta, Prince Diponegoro prefers to live outside the palace walls and unite with ordinary people. Life outside the palace walls was a form of his struggle against Dutch interference in the political life of the Sultanate of Yogyakarta Palace at that time. </tt> </p>  <p> <tt> This museum is one of the historical tourist destinations that are quite visited by both domestic and foreign tourists. Building with Javanese architecture, it used to be the residence of Prince Diponegoro (the starting point for the outbreak of the Java War), which was used as a museum to pay homage to him. </tt> </p>  <p> <tt> The Sasana Wiratama Museum was inaugurated on 9 August 1969 by President Soeharto. The museum, which is dominated by green, was founded to commemorate the struggle of Prince Diponegoro. You can find out the history of his struggle in defense of independence through his inheritance items displayed in this museum. </tt> </p>', '08:00 - 13:00', 'wisata_museum', 0, '2020-01-22', '0000-00-00');
INSERT INTO `destinasi` (`id`, `nama`, `nama_en`, `alamat`, `deskripsi`, `deskripsi_en`, `opration_hours`, `category`, `viewer`, `updated_at`, `created_at`) VALUES
(19, 'Candi Prambanan', ' Prambanan Temple', 'Jl. Raya Solo - Yogyakarta No.16, Kranggan, Bokoharjo, Kec. Prambanan, Kabupaten Sleman', '<hr />\r\n<p><tt>Bagi yang akan mengunjungi Yogyakarta, maka&nbsp;Candi Prambanan&nbsp;adalah salah satu destinasi wisata yang wajib anda kunjungi. Kecantikannya yang telah dikenal hingga keluar negeri membuat Candi Prambanan tak hanya dikunjungi oleh turis dari dalam negeri saja, tetapi juga oleh turis manca negara. Letaknya yang berdekatan dengan kompleks Candi Borobudur (Candi Budha) menggambarkan bagaimana keharmonisan antara umat Hindu dan umat Budha.</tt></p>\r\n\r\n<p><tt>Prambanan adalah salah satu kompleks candi terbesar di Asia Tenggara yang kaya dengan arca dan relief. Kompleks candi ini terletak di Desa Prambanan dan secara administratif masuk dalam dua kabupaten dan dua provinsi sekaligus. Yaitu Kabupaten Sleman Provinsi DIY dan Kabupaten Klaten Provinsi Jawa Tengah. Jaraknya sekitar 20 km dari kota Yogyakarta dan 40 km dari kota Surakarta. Selain karena berada di perbatasan, kompleks candi juga terjangkau dari berbagai arah karena berada langsung di pinggir Jalan Raya Yogyakarta &ndash; Solo.</tt></p>\r\n\r\n<p><tt>Kompleks candi Prambanan dibangun sekitar tahun 850 Masehi. Masih belum pasti apakah Prambanan dibangun oleh Rakai Pikatan, raja kedua Wngsa Mataram I atau Balitung Maha Sambu semasa Wangsa Sanjaya. Namun para peneliti besepakat bahwa kompleks candi Prambanan ditinggalkan dan mulai rusak tidak lama setelah selesai dibangun. Candi Prambanan juga dikenal dengan nama lain, yaitu candi Rara Jonggrang atau Lara Jonggrang. Nama yang kedua ini terkait dengan legenda dibangunnya candi.</tt></p>', '<hr /> <p> <tt> For those who will visit Yogyakarta, the Prambanan Temple is one of the tourist destinations that you must visit. Her beauty that has been known to foreign countries makes Prambanan Temple not only visited by tourists from within the country, but also by foreign tourists. Its location adjacent to the Borobudur Temple complex (Buddhist Temple) illustrates how harmony between Hindus and Buddhists. </tt> </p>  <p> <tt> Prambanan is one of the largest temple complexes in Southeast Asia which is rich in statues and reliefs. This temple complex is located in Prambanan Village and is administratively included in two regencies and two provinces at the same time. Namely Sleman Regency of Yogyakarta Province and Klaten Regency of Central Java Province. The distance is about 20 km from the city of Yogyakarta and 40 km from the city of Surakarta. Apart from being on the border, the temple complex is also affordable from various directions because it is located directly on the edge of the Yogyakarta Solo Highway. </tt> </p>  <p> <tt> Prambanan temple complex was built around 850 AD. It is still uncertain whether Prambanan was built by Rakai Pikatan, the second king of Wngsa Mataram I or Balitung Maha Sambu during the Sanjaya Dynasty. However, researchers agree that the Prambanan temple complex was abandoned and began to be damaged shortly after it was completed. Prambanan Temple is also known by another name, namely Rara Jonggrang or Lara Jonggrang temples. The second name is related to the legend of the temple construction. </tt> </p>', '08:00 - 17:00', 'wisata_sejarah', 0, '2020-01-22', '0000-00-00'),
(20, 'Candi Sojiwan', 'Sojiwan Temple', 'Jl. Banjarsari, Kwaron, Kb. Dalem Kidul, Kec. Prambanan, Kabupaten Klaten', '<hr />\r\n<p><tt>Candi Sojiwan merupakan cermin dan salah satu bukti kerukunan umat beragama di masa silam. Menurut Prasasti Rukam (907 M), Raja Balitung dari kerajaan Mataram Kuno mempersembahkan bangunan suci yang bercirikan agama Budha untuk neneknya yang sangat dihormati. Raja Balitung beragama Hindu, sedangkan neneknya beragama Budha.</tt></p>\r\n\r\n<p><tt>Candi Sojiwan berada di sebuah area terbuka yang panjang halamannya lebih dari 100 m. Ciri khas candi ini adalah adanya sekitar 20 relief di kaki candi yang berhubungan dengan cerita-cerita Pancatantra atau Jataka dari India. Dari 20 relief ini, tinggal 19 relief yang sekarang masih ada. Cerita-cerita tersebut tertuang dalam relief yang terpahat pada bagian kaki candi, berupa fabel berisi pesan-pesan moral agama Bhuda.</tt></p>', '<hr /> <p> <tt> Sojiwan Temple is a mirror and one of the proofs of religious harmony in the past. According to the Rukam Inscription (907 AD), the Balitung King of the Ancient Mataram kingdom presented a sacred building characterized by Buddhism for his highly respected grandmother. Raja Balitung is Hindu, while his grandmother is Buddhist. </tt> </p>  <p> <tt> Sojiwan Temple is in an open area whose yard length is more than 100 m. The distinctive feature of this temple is that there are around 20 reliefs at the foot of the temple which are related to the stories of Pancatantra or Jataka from India. Of these 20 reliefs, only 19 reliefs are still available. The stories are contained in reliefs carved into the foot of the temple, in the form of a fable containing moral messages of Bhuda religion. </tt> </p>', '08:00 - 17:00', 'wisata_sejarah', 0, '2020-01-22', '0000-00-00'),
(21, 'Candi Ratu Boko', 'Ratu Boko Temple', 'Jl. Raya Piyungan - Prambanan No.KM.2, Gatak, Bokoharjo, Kec. Prambanan, Kabupaten Sleman', '<hr />\r\n<p><tt>Candi Ratu Boko&nbsp;terletak di kecamatan Bokoharjo, kabupaten Sleman. Luasnya yang mencapai 16 ha. membuat wilayah Ratu Boko masuk dalam dua desa, Dawung dan Sambirejo. Lokasinya kurang-lebih 17 km di sebelah timur kota Jogja dan dapat diakses lewat jalan raya Yogyakarta-Solo.</tt></p>\r\n\r\n<p><tt>Candi Ratu Boko lebih mirip istana atau kraton ketimbang candi. Ini karena fungsinya dahulu yang bukan hanya tempat ibadah, tapi juga benteng pertahanan. Ratu Boko terletak 196 meter di atas permukaan laut. Areal istana seluas 250.000 m2 terbagi menjadi empat, yaitu tengah, barat, tenggara, dan timur. Bagian tengah terdiri dari bangunan gapura utama, lapangan, Candi Pembakaran, kolam, batu berumpak, dan Paseban. Sementara, bagian tenggara meliputi Pendopo, Balai-Balai, 3 candi, kolam, dan kompleks Keputren. Kompleks gua, Stupa Budha, dan kolam terdapat di bagian timur. </tt></p>\r\n\r\n<p><tt>Sedangkan bagian barat hanya terdiri atas perbukitan. Ratu Boko didirikan di masa pemerintahan Rakai Panangkaran. Hal ini dapat dilihat di Prasasti Kalasan tahun 779 Masehi, Prasati Mantyasih 907 Masehi, dan Prasasti Wanua Tengah III tahun 908 Masehi. Rakai Panangkaran adalah pengikut Budha, namun di kompleks Ratu Boko terdapat unsur-unsur Hindu yang memuja dewa Siwa. Menurut para ahli, ini membuktikan adanya toleransi beragama pada masa itu.</tt></p>', '<hr /> <p> <tt> Ratu Boko Temple is located in Bokoharjo sub-district, Sleman Regency. The extent of which reaches 16 ha. making Ratu Boko region included in two villages, Dawung and Sambirejo. The location is approximately 17 km east of the city of Jogja and can be accessed via the Yogyakarta-Solo highway. </tt> </p>  <p> <tt> Ratu Boko Temple looks more like a palace or palace than a temple. This is because its function was not only a place of worship, but also a fortress. Ratu Boko is located 196 meters above sea level. The palace area of ​​250,000 m2 is divided into four, namely central, west, southeast and east. The middle part consists of the main gate building, field, Burning Temple, ponds, stone piles, and Paseban. Meanwhile, the southeast includes Pendopo, Balai, 3 temples, ponds and the Keputren complex. The cave complex, Buddhist Stupa, and pond are in the east. </tt> </p>  <p> <tt> Whereas the western part only consists of hills. Ratu Boko was established during the reign of Rakai Panangkaran. This can be seen in the Kalasan Inscription of 779 AD, Prasati Mantyasih 907 AD, and Central Wanua Inscription III in 908 AD. Rakai Panangkaran is a Buddhist follower, but in the Ratu Boko complex there are Hindu elements who worship the god Shiva. According to experts, this proves the existence of religious tolerance at that time. </tt> </p> ', '08:00 - 17:00', 'wisata_sejarah', 0, '2020-01-22', '0000-00-00'),
(22, 'Candi Ijo', 'Ijo Temple', 'Kikis, Sambirejo, Prambanan, Sleman Regency', '<hr />\r\n<p><tt>Candi Ijo&nbsp;merupakan candi tertinggi yang ada di Yogyakarta. Nama Candi Ijo sendiri diambil dari lokasi candi berada, yaitu Bukit Ijo yang terletak di Desa Sambirejo, Prambanan, Sleman, Yogyakarta. Bukit Ijo sendiri berada di ketinggian 410 mdpl, sehingga tidak heran jika Candi Ijo dikatakan sebagai candi tertinggi di Yogyakarta.</tt></p>\r\n\r\n<p><tt>Kompleks candi terdiri dari 17 struktur bangunan yang terbagi dalam 11 teras berundak. Teras pertama merupakan teras berundak yang membujur dari barat ke timur. Sedangkan bangunan pada teras teratas berupa pagar keliling, delapan buah lingga patok, serta empat bangunan candi yaitu satu candi utama dan tiga candi perwara. Pada candi utama, terdapat sebuah bilik yang didalamnya terdapat Lingga Yoni yang melambangkan Dewa Siwa yang menyatu dengan Dewi Parwati. Sedangkan di dalam tiga candi perwara lainnya, pengunjung dapat melihat arca candi yang konon merupakan kendaraan Dewa Siwa dan meja batu atau disebut padmasana.</tt></p>\r\n\r\n<p><tt>Halaman candi yang ditumbuhi rumput hijau dan landscap yang membentang di depan mata membuat Candi Ijo tidak hanya incaran para pecinta sejarah dan budaya saja, tetapi juga menjadi tempat favorit bagi pengunjung yang sekedar ingin refreshing menghilangkan kepenatan. Dari Candi Ijo, pengunjung akan disuguhi pemandangan dari hamparan areal persawahan dan kampung penduduk, pesawat take off dan landing di Bandara Adi Sucipto, serta kegagahan Gunung Merapi. Candi Ijo juga masuk dalam list teratas tempat menyaksikan senja terindah di Jogja.</tt></p>', '<hr /> <p> <tt> Ijo Temple is the highest temple in Yogyakarta. The name Ijo Temple itself is taken from the location of the temple, which is Bukit Ijo which is located in Sambirejo Village, Prambanan, Sleman, Yogyakarta. Bukit Ijo itself is at an altitude of 410 masl, so it is not surprising that Ijo Temple is said to be the highest temple in Yogyakarta. </tt> </p>  <p> <tt> The temple complex consists of 17 building structures which are divided into 11 terraces. The first terrace is a terrace terraces that stretch from west to east. While the buildings on the top terrace are perimeter fences, eight lingga pegs, and four temple buildings, namely one main temple and three ancillary temples. In the main temple, there is a booth in which there is a Lingga Yoni symbolizing Lord Shiva who merges with Dewi Parwati. While in the other three ancillary temples, visitors can see the statue of the temple which is said to be a vehicle of Lord Shiva and a stone table or called padmasana. </tt> </p>  <p> <tt> The yard of the temple which is overgrown with green grass and landscap that stretches in front of the eyes makes the Ijo Temple not only a target of history and culture lovers, but also a favorite place for visitors who just want to refresh, relieve fatigue. From Ijo Temple, visitors will be treated to views of the expanse of paddy fields and residents\' villages, take off and landing planes at Adi Sucipto Airport, as well as the splendor of Mount Merapi. Ijo Temple is also included in the top list where you can see the most beautiful twilight in Jogja. </tt> </p>', '08:00 - 17:00', 'wisata_sejarah', 0, '2020-01-22', '0000-00-00'),
(23, 'Tugu Jogja', 'Jogja Monument', 'Gowongan, Jetis, Kota Yogyakarta', '<hr />\r\n<p><tt>Biasanya Tugu atau monumen dijadikan simbol suatu daerah sebagai ciri khas sebuah daerah. Begitu juga dengan&nbsp;<strong>Tugu Jogja</strong>&nbsp;yang merupakan salah satu ikon utama Yogyakarta. Tugu Jogja ini berada tepat di tengah perempatan antara jl. Mangkubumi, jl. Jendral Sudirman, Jl. A.M Sangaji, dan Jl. Dipenogoro. Dengan berbagai sejarah yang melatarbelakanginya, Tugu Jogja juga menjadi ikon sejarah bagi kota Jogja.</tt></p>\r\n\r\n<p><tt>Tugu yang dibangun pada tahun 1755 oleh Hamengkubuwono I, pendiri Kraton Yogyakarta, mempunyai nilai simbolis dan merupakan garis yang bersifat magis yang menghubungkan laut selatan, Kraton Jogja, dan Gunung Merapi. Konon Sultan pada saat melakukan meditasi menjadikan tugu ini sebagai patokan arah menghadap Gunung Merapi.</tt></p>\r\n\r\n<p><tt>Keberadaan Tugu ini juga sebagai patokan arah ketika Sri Sultan Hamengku Buwono I pada waktu itu melakukan meditasi, yang menghadap puncak gunung Merapi. Bangunan Tugu Jogja saat awal dibangun berbentuk tiang silinder yang mengerucut ke atas, sementara bagian dasarnya berupa pagar yang melingkar, sedangkan bagian puncaknya berbentuk bulat. Ketinggian bangunan tugu golong gilig ini pada awalnya mencapai 25 meter.</tt></p>', '<hr /> <p> <tt> Usually monuments or monuments are used as symbols of an area as a characteristic of an area. Likewise the Jogjayang Monument is one of the main icons of Yogyakarta. This Jogja monument is located right in the middle of the intersection between Jl. Mangkubumi, jl. Jendral Sudirman, Jl. A.M Sangaji, and Jl. Dipenogoro. With a variety of history behind it, Tugu Jogja is also a historical icon for the city of Jogja. </tt> </p>  <p> <tt> The monument which was built in 1755 by Hamengkubuwono I, the founder of Yogyakarta Palace, has a symbolic value and is a magical line connecting the southern sea, Yogyakarta Palace and Mount Merapi. It is said that during the meditation the Sultan made this monument as a benchmark direction facing Mount Merapi. </tt> </p>  <p> <tt> The existence of this monument is also a benchmark for the direction when Sri Sultan Hamengkubuwono I at that time was doing meditation, which faced the peak of Mount Merapi. At the beginning, the Tugu Jogja building was built in the form of a cylindrical pillar that was conical upwards, while the bottom was in the form of a circular fence, while the top was round. The height of the Golong Gilig monument building initially reached 25 meters. </tt> </p>', '00:00 - 24:00', 'wisata_sejarah', 0, '2020-01-27', '0000-00-00'),
(24, 'Jogja Bay Waterpark', ' Cerme Cave', 'Jl. Utara Stadion, Jenengan, Maguwoharjo, Kec. Depok, Kabupaten Sleman', '<hr />\r\n<p><tt>Jogja Bay Waterpark&nbsp;merupakan salah satu wahana air yang ada di Yogyakarta. Waterpark yang diresmikan 20 Desember 2015 ini Jogja Bay mengusung Bajak Laut sebagai tema utamanya. Berdiri di atas lahan seluas kurang lebih 7,7 hektar, Jogja Bay memiliki 14 wahana air seru yang siap membuat hari libur semakin seru. Karena itu, tidak heran jika Jogja Bay di klaim sebagai waterpark terbesar, tercanggih dan terlengkap di Indonesia.</tt></p>\r\n\r\n<p><tt>Jogja Bay ini memiliki 14 wahana aktraktif yang bisa dinikmati wisatawan. Di antaranya adalah Memo Racer, South Beach, Bekti Adventure, Volcano Coastor, Timo Rider, Mimi Family, Jolie Raft River, Brando Boomeranggo, Donte Wild River, Ziggy Giant Barrel, Hip Playground, Kula Playpool, Grand Lobby, dan Harbour Theater.</tt></p>\r\n\r\n<p><tt>Bagi pengunjung yang menyukai tantangan dan wahana yang bisa memacu adrenalin, bisa mencoba beberapa wahana seru antara lain Memo Racer, Volcano Coaster, Timo Rider, Jolie Raft River dan Brando Boomeranggo.</tt></p>\r\n\r\n<p><tt>Sedangkan wahana yang cocok untuk anak-anak, Jogja Bay Waterpark menyediakan Ziggy Giant Barrel, Mimi Family dan Hip Playground. Tersedia juga Donte Wild River yang merupakan kolam arus dan Kula Playpool dapat dinikmati segala usia.</tt></p>\r\n\r\n<p><tt>Selain itu, Jogja Bay Waterpark memiliki wahana air edukasi, yaitu South Beach. Wahana berupa kolam ombak yang mempunyai 9 jenis ombak berbeda ini memberikan informasi dan edukasi kepada pengunjung tentang &lsquo;How to survive in Tsunami and earthquake&rsquo;.</tt></p>', '<hr /> <p> <tt> Jogja Bay Waterpark is one of the water rides in Yogyakarta. This waterpark, which was inaugurated on December 20, 2015, Jogja Bay, carries Pirates as its main theme. Standing on an area of ​​approximately 7.7 hectares, Jogja Bay has 14 exciting water rides that are ready to make the holidays more exciting. Therefore, it is not surprising that Jogja Bay is claimed to be the largest, most sophisticated and most comprehensive waterpark in Indonesia. </tt> </p>  <p> <tt> Jogja Bay has 14 attractive attractions that can be enjoyed by tourists. Among these are Memo Racer, South Beach, Bekti Adventure, Volcano Coastor, Timo Rider, Mimi Family, Jolie Raft River, Brando Boomeranggo, Donte Wild River, Ziggy Giant Barrel, Hip Playground, Kula Playpool, Grand Lobby, and Harbor Theater. < / tt> </p>  <p> <tt> For visitors who like challenges and rides that can stimulate adrenaline, can try some exciting rides including Memo Racer, Volcano Coaster, Timo Rider, Jolie Raft River and Brando Boomeranggo. </tt> </p>  <p> <tt> Whereas the rides are suitable for children, Jogja Bay Waterpark provides Ziggy Giant Barrel, Mimi Family and Hip Playground. There is also Donte Wild River which is a current pool and Kula Playpool can be enjoyed by all ages. </tt> </p>  <p> <tt> In addition, Jogja Bay Waterpark has an educational water park, which is South Beach. The vehicle in the form of a wave pool that has 9 different types of waves provides information and education to visitors about How to survive in the Tsunami and earthquake. </tt> </p>', '09:00 - 15:30', 'wisata_buatan', 0, '2020-01-23', '0000-00-00'),
(25, 'Galaxy Waterpark', 'Galaxy Waterpark', 'Wonosari St No.KM. 6, Kalangan, Potorono, Banguntapan, Bantul', '<hr />\r\n<p><tt>Melihat potensi wisata yang semakin berkembang pesat dari tahun ke tahun membuat Yogyakarta semakin berbenah diri dalam sektor pariwisata. Tak hanya wisata alam yang memang sudah menjadi daya tarik utama wisata DIY, tetapi juga wisata-wisata modern yang semakin melengkapi industri pariwisata DIY, Galaxy Waterpark contohnya. Galaxy Waterpark resmi dibuka pada tanggal 9 Desember 2014 dan berlokasi di Jalan Wonosari KM 6 Banguntapan, Bantul, Yogyakarta. </tt></p>\r\n\r\n<p><tt>Galaxy Waterpark didirikan di atas lahan seluas 2,5 hektar dan menyuguhkan berbagai wahana permainan air yang menyenangkan. Terdapat beberapa permainan air yang bisa dicoba di Galaxy Waterpark, diantaranya kolam Olympic, kolam remaja yang dilengkapi dua water slide setinggi 10 meter, kolam balita dengan ember tumpah dan jembatan tali serta beberapa perosotan yang menambah keriangan si kecil, dan kolam arus.&nbsp;</tt></p>', '<hr /> <p> <tt> Seeing the potential for tourism which is growing rapidly from year to year makes Yogyakarta increasingly improve itself in the tourism sector. Not only nature tourism has become the main attraction of DIY tourism, but also modern tourism that is increasingly complementing the DIY tourism industry, Galaxy Waterpark for example. Galaxy Waterpark was officially opened on December 9, 2014 and is located on Jalan Wonosari KM 6 Banguntapan, Bantul, Yogyakarta. </tt> </p>  <p> <tt> Galaxy Waterpark was founded on an area of 2.5 hectares and presents a variety of fun water games. There are a number of water games that can be tried at Galaxy Waterpark, including the Olympic pool, a teenage pool which is equipped with two 10 meter high water slides, a toddler pool with spilled buckets and a rope bridge as well as some slides that add to the kid\'s excitement, and the current pool. </ Tt > </p>', '08.30 – 17.00', 'wisata_buatan', 12, '2020-01-28', '0000-00-00'),
(30, 'Galaxy Waterpark', 'Galaxy Waterpark', 'Wonosari St No.KM. 6, Kalangan, Potorono, Banguntapan, Bantul', '<hr />\r\n<p><tt>Melihat potensi wisata yang semakin berkembang pesat dari tahun ke tahun membuat Yogyakarta semakin berbenah diri dalam sektor pariwisata. Tak hanya wisata alam yang memang sudah menjadi daya tarik utama wisata DIY, tetapi juga wisata-wisata modern yang semakin melengkapi industri pariwisata DIY, Galaxy Waterpark contohnya. Galaxy Waterpark resmi dibuka pada tanggal 9 Desember 2014 dan berlokasi di Jalan Wonosari KM 6 Banguntapan, Bantul, Yogyakarta. </tt></p>\r\n\r\n<p><tt>Galaxy Waterpark didirikan di atas lahan seluas 2,5 hektar dan menyuguhkan berbagai wahana permainan air yang menyenangkan. Terdapat beberapa permainan air yang bisa dicoba di Galaxy Waterpark, diantaranya kolam Olympic, kolam remaja yang dilengkapi dua water slide setinggi 10 meter, kolam balita dengan ember tumpah dan jembatan tali serta beberapa perosotan yang menambah keriangan si kecil, dan kolam arus.&nbsp;</tt></p>', '<hr /> <p> <tt> Seeing the potential for tourism which is growing rapidly from year to year makes Yogyakarta increasingly improve itself in the tourism sector. Not only nature tourism has become the main attraction of DIY tourism, but also modern tourism that is increasingly complementing the DIY tourism industry, Galaxy Waterpark for example. Galaxy Waterpark was officially opened on December 9, 2014 and is located on Jalan Wonosari KM 6 Banguntapan, Bantul, Yogyakarta. </tt> </p>  <p> <tt> Galaxy Waterpark was founded on an area of 2.5 hectares and presents a variety of fun water games. There are a number of water games that can be tried at Galaxy Waterpark, including the Olympic pool, a teenage pool which is equipped with two 10 meter high water slides, a toddler pool with spilled buckets and a rope bridge as well as some slides that add to the kid\'s excitement, and the current pool. </ Tt > </p>', '08:00 - 17:00', 'wisata_buatan', 1, '2020-01-29', '2020-01-29'),
(32, 'pateh', 'patch', 'Jl. Faridan M Noto No.7, Kotabaru, Kec. Gondokusuman, Kota Yogyakarta', '<p>ada</p>\r\n\r\n<p>dad</p>\r\n\r\n<p>ad</p>\r\n\r\n<p>ad</p>\r\n\r\n<p>ad</p>', 'adad\\ad\r\nad\r\na\r\nda\r\nd\r\na\r\nda\r\nda\r\nad', '08:00 - 15:30', 'wisata_alam', 10, '2020-01-29', '2020-01-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_destinasi`
--

CREATE TABLE `file_destinasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `nama_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_cover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `file_destinasi`
--

INSERT INTO `file_destinasi` (`id`, `id_destinasi`, `nama_file`, `directory`, `is_cover`) VALUES
(12, 30, 'destinasi_jogjabay.jpg', 'wisata_buatan', 'yes'),
(13, 30, 'destinasi_galxy1.jpg', 'wisata_buatan', 'no'),
(14, 30, 'destinasi_galaxy2.jpg', 'wisata_buatan', 'no'),
(15, 30, 'destinasi_galaxy3.jpg', 'wisata_buatan', 'no'),
(16, 30, 'destinasi_galaxy4.jpg', 'wisata_buatan', 'no'),
(17, 30, 'destinasi_galaxy5.jpg', 'wisata_buatan', 'no'),
(18, 31, 'destinasi_galaxy2.jpg', 'wisata_museum', 'yes'),
(19, 31, 'destinasi_galaxy3.jpg', 'wisata_museum', 'no'),
(20, 31, 'destinasi_galaxy5.jpg', 'wisata_museum', 'no'),
(21, 32, 'destinasi_galaxy3.jpg', 'wisata_alam', 'yes'),
(22, 32, 'destinasi_galaxy4.jpg', 'wisata_alam', 'no'),
(23, 32, 'destinasi_galaxy2.jpg', 'wisata_alam', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_kuliner`
--

CREATE TABLE `file_kuliner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kuliner` int(11) NOT NULL,
  `nama_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_cover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `file_kuliner`
--

INSERT INTO `file_kuliner` (`id`, `id_kuliner`, `nama_file`, `is_cover`) VALUES
(1, 10, 'keraton2.jpeg.jpeg', 'yes'),
(2, 11, 'logo up.png.png', 'yes'),
(3, 12, 'kuliner_ten5.jpg', 'yes'),
(4, 12, 'kuliner_galaxy3.jpg', 'no'),
(5, 12, 'kuliner_ten4.jpg', 'no'),
(6, 13, 'kuliner_galaxy2.jpg', 'yes'),
(7, 13, 'kuliner_ten5.jpg', 'no'),
(8, 13, 'kuliner_ten2.jpg', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_penginapan`
--

CREATE TABLE `file_penginapan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_penginapan` int(11) NOT NULL,
  `nama_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_cover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `file_penginapan`
--

INSERT INTO `file_penginapan` (`id`, `id_penginapan`, `nama_file`, `directory`, `is_cover`) VALUES
(1, 6, '0df07071-c076-44a5-a7ab-e8a84772dfd9.jpg.jpg', 'Hotel', 'yes'),
(2, 6, '6a69f36c129400a3d02dd2f64855eba4.jpg.jpg', 'Hotel', 'no'),
(3, 6, '60-605331_scroll-clipart-horizontal-background-gulungan-kertas-png.png.png', 'Hotel', 'no'),
(4, 6, '8193.png_860.png.png', 'Hotel', 'no'),
(5, 9, 'logo up.png', 'Hotel', 'yes'),
(6, 9, 'Untitled.png', 'Hotel', 'no'),
(7, 10, 'Untitled.png', 'Hotel', 'yes'),
(8, 10, 'logo up.png', 'Hotel', 'no'),
(9, 11, 'logo up.png', 'Hotel', 'yes'),
(10, 12, 'Untitled.png', 'Hotel', 'yes'),
(11, 12, 'logo up.png', 'Hotel', 'no'),
(12, 16, 'logo up.png', 'Hotel', 'yes'),
(13, 17, 'penginapan_60-605331_scroll-clipart-horizontal-background-gulungan-kertas-png.png', 'Hotel', 'yes'),
(14, 18, 'penginapan_keraton3.jpg', 'Hotel', 'yes'),
(15, 18, 'penginapan_keraton3.jpg', 'Hotel', 'no'),
(16, 18, 'penginapan_keraton4.jpg', 'Hotel', 'no'),
(17, 19, 'penginapan_0df07071-c076-44a5-a7ab-e8a84772dfd9.jpg', 'Hotel', 'yes'),
(18, 19, 'penginapan_1-19296_school-book-border-clipart-gambar-kertas-digulung.png', 'Hotel', 'no'),
(19, 19, 'penginapan_0df07071-c076-44a5-a7ab-e8a84772dfd9.jpg', 'Hotel', 'no'),
(20, 19, 'penginapan_bluetooth_PNG32.png', 'Hotel', 'no'),
(21, 19, 'penginapan_bluetooth_PNG50.png', 'Hotel', 'no'),
(22, 20, 'penginapan_ten2.jpg', 'Hotel', 'yes'),
(23, 20, 'penginapan_ten1.jpg', 'Hotel', 'no'),
(24, 20, 'penginapan_ten3.jpg', 'Hotel', 'no'),
(25, 20, 'penginapan_ten4.jpg', 'Hotel', 'no'),
(26, 20, 'penginapan_ten5.jpg', 'Hotel', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_tourquide`
--

CREATE TABLE `file_tourquide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tourquide` int(11) NOT NULL,
  `nama_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_cover` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `file_tourquide`
--

INSERT INTO `file_tourquide` (`id`, `id_tourquide`, `nama_file`, `is_cover`) VALUES
(1, 7, 'tour_galxy1.jpg', 'yes'),
(2, 0, '', 'yes'),
(3, 9, 'tour_ten2.jpg', 'yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuliner`
--

CREATE TABLE `kuliner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimasi_harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_oprasional` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewer` int(11) DEFAULT '0',
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kuliner`
--

INSERT INTO `kuliner` (`id`, `nama`, `nama_en`, `alamat`, `keterangan`, `keterangan_en`, `estimasi_harga`, `jam_oprasional`, `viewer`, `updated_at`, `created_at`) VALUES
(13, 'mie ayam', 'chicken noodles', 'jl pasundan raya', '<p>ada</p>\r\n\r\n<p>aadfa</p>\r\n\r\n<p>afafa</p>\r\n\r\n<p>adad</p>\r\n\r\n<p>fa</p>', 'adaf\r\nafa\r\nada\r\nafa\r\nad', 'Rp.25.000', '08.00-13.00', 3, '2020-01-29', '2020-01-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_17_133933_create_admin_table', 2),
(5, '2019_11_17_140629_create_daftar_wisata_table', 3),
(6, '2019_11_17_140933_create_tour_guide_table', 4),
(7, '2019_11_17_141156_create_contact_table', 5),
(8, '2019_11_17_142634_create_admins_table', 6),
(9, '2019_11_17_142949_create_contacts_table', 6),
(10, '2019_11_17_143053_create_daftar_wisatas_table', 6),
(11, '2019_11_17_143145_create_tour_guides_table', 6),
(12, '2019_11_24_134007_create_destinasi_table', 6),
(13, '2019_11_24_135346_create_kuliner_table', 7),
(14, '2019_11_24_135424_create_penginapan_table', 7),
(15, '2019_11_24_135525_create_kontak_table', 7),
(16, '2019_11_24_140554_create_tourquide_table', 7),
(17, '2019_11_24_141610_create_file_destinasi_table', 8),
(18, '2019_11_24_141747_create_file_kuliner_table', 8),
(19, '2019_11_24_141813_create_file_penginapan_table', 8),
(20, '2019_11_24_141846_create_file_tourquide_table', 8),
(21, '2019_11_24_141924_create_file_kontak_table', 8),
(22, '2019_12_04_051825_create_destinasi_table', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penginapan`
--

CREATE TABLE `penginapan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bintang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewer` int(11) DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penginapan`
--

INSERT INTO `penginapan` (`id`, `nama`, `nama_en`, `alamat`, `category`, `harga`, `bintang`, `fasilitas`, `fasilitas_en`, `viewer`, `updated_at`, `created_at`) VALUES
(20, 'Hotel Tentrem', 'Tentrem Hotel', 'Jl. P. Mangkubumi No.72A, Cokrodiningratan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233', 'Hotel', 'Rp 1.357.000', '5', '<ul>\r\n	<li>\r\n	<p>2 tempat tidur tunggal</p>\r\n	</li>\r\n	<li>\r\n	<p>Ukuran kamar Kamar ekstra luas</p>\r\n	</li>\r\n	<li>\r\n	<p>Tampilan kolam renang</p>\r\n	</li>\r\n	<li>\r\n	<p>Balkon / teras</p>\r\n	</li>\r\n	<li>\r\n	<p>Merokok diizinkan</p>\r\n	</li>\r\n	<li>\r\n	<p>Bak Mandi</p>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p>2 single beds</p>\r\n	</li>\r\n	<li>\r\n	<p>Room size Extra spacious room</p>\r\n	</li>\r\n	<li>\r\n	<p>Pool view</p>\r\n	</li>\r\n	<li>\r\n	<p>Balcony/terrace</p>\r\n	</li>\r\n	<li>\r\n	<p>Smoking allowed</p>\r\n	</li>\r\n	<li>\r\n	<p>Shower</p>\r\n	</li>\r\n</ul>', 15, '2020-01-29 19:01:55', '2020-01-29 16:08:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tourguide`
--

CREATE TABLE `tourguide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tourguide`
--

INSERT INTO `tourguide` (`id`, `nama`, `telpon`, `email`) VALUES
(7, 'Pateh Uum', '0832 1213 2421', 'pateh123@gmail.com'),
(9, 'sapakek', '23242 242224 24', 'asapaasa@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yunita Rustania', 'yunita123@gmail.com', NULL, '$2y$10$hoMpKg8Cci.1KhSZjQ1uX.L6lDF6FfpG0HfgulmTHo37/uqapZuHu', NULL, '2020-01-03 10:09:25', '2020-01-03 10:09:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `file_destinasi`
--
ALTER TABLE `file_destinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `file_kuliner`
--
ALTER TABLE `file_kuliner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `file_penginapan`
--
ALTER TABLE `file_penginapan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `file_tourquide`
--
ALTER TABLE `file_tourquide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penginapan`
--
ALTER TABLE `penginapan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tourguide`
--
ALTER TABLE `tourguide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `file_destinasi`
--
ALTER TABLE `file_destinasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `file_kuliner`
--
ALTER TABLE `file_kuliner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `file_penginapan`
--
ALTER TABLE `file_penginapan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `file_tourquide`
--
ALTER TABLE `file_tourquide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `penginapan`
--
ALTER TABLE `penginapan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tourguide`
--
ALTER TABLE `tourguide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
