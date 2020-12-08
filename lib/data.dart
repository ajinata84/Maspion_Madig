import 'package:flutter/material.dart';
import 'package:madicc/models/articlemodel.dart';
import 'package:madicc/pages/reader.dart';
import 'package:madicc/widgets/articlewidgets.dart';

List Articles = [
  article1(),
  article2(),
  article3(),
];

List Genre1 = [article3()];
List Genre2 = [
  article1(),
  article2(),
];
List Genre3 = [];
List Genre4 = [];
List Genre5 = [];
List Genre6 = [];
List Genre7 = [];
List Genre8 = [];

List<ArticleModel> article1() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Kouhai-Dev');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/images/dummy/0.jpg');
  articleModel.setPreview(
      'Kouhai dev terinspirasi dari kalimat jepang  “こうはい” yang dibaca “kouhai” yang memiliki arti junior menggambarkan kita sebagai anak SMK yang baru masuk ke jenjang kejuruan, sedangkan “DEV” merupakan singkatan kalimat “Development” yang berarti  pengembang menunjukkan bahwa kita sebagai kelompok yang akan mengembangkan inovasi dan teknologi untuk menunjang kehidupan sehari-hari.');
  articleModel.setGenre(2);
  articleModel.setContent(Column(
    children: [
      buildFullImage('assets/images/dummy/0.jpg'),
      buildText(
          'Kouhai dev terinspirasi dari kalimat jepang  “こうはい” yang dibaca “kouhai” yang memiliki arti junior menggambarkan kita sebagai anak SMK yang baru masuk ke jenjang kejuruan, sedangkan “DEV” merupakan singkatan kalimat “Development” yang berarti  pengembang menunjukkan bahwa kita sebagai kelompok yang akan mengembangkan inovasi dan teknologi untuk menunjang kehidupan sehari-hari.'),
      buildText(
          'Kelompok kami beranggotakan 4 orang, setiap anggota memiliki keahlian masing masing, UI/UX Designers, Developer, IDEA Creator dengan begitu kita bekerja sama dengan keahlian kita untuk menciptakan inovasi teknologi yang bermanfaat, selain itu anggota kelompok kita berasal dari berbagai daerah, ada yang dari Malang, Tulungagung, Kertosono dan Kediri. Mereka juga memiliki cerita masing masing yang membuat mereka bekerjasama untuk membentuk kelompok ini.'),
      buildText(
          'Ahmadun Na’il adalah salah satu anggota kelompok ini, dia bisa dibilang sebagai pencetus terbentuknya kelompok ini, “Dulu ceritanya ada sebuah lomba aplikasi, di lomba tersebut butuh sekitar 3 kelompok syarat untuk masuk lomba, akhirnya saya coba nawarin ke teman-teman dan terbentuklah kelompok ini” kata Na’il, ia dikenal sebagai UI/UX Designers banyak project yang ia buat dan ia posting di sosial medianya, “Saya mengajak mereka  karena saya ingin berpartisipasi dalam Desain aplikasi sambil nambah pengalaman”'),
      buildText(
          'Selain Ahmadun Nail ada juga Prash Trisula Ajinata yang merupakan seseorang yang mempunyai keahlian didalam bidang back-end bahkan juga bisa membuat back-end khusus untuk android.'),
    ],
  ));

  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Kedar Anugerah Nacha Putra Dia biasanya bekerja sebagai Pembuat konten dalam tim ini karena dia handal dalam membuat konten yang akan di gunakan dalam aplikasi aplikasi kreasi kita, selain itu, dia juga dapat membantu tim pada berbagai hal.'),
      buildText(
          'Kouhai dev terinspirasi dari kalimat jepang  “こうはい” yang dibaca “kouhai” yang memiliki arti junior menggambarkan kita sebagai anak SMK yang baru masuk ke jenjang kejuruan, sedangkan “DEV” merupakan singkatan kalimat “Development” yang berarti  pengembang menunjukkan bahwa kita sebagai kelompok yang akan mengembangkan inovasi dan teknologi untuk menunjang kehidupan sehari-hari.'),
    ],
  ));

  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article2() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Lika Liku Kouhai Dev');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/images/dummy/0.jpg');
  articleModel.setGenre(2);
  articleModel.setContent(Column(
    children: [
      buildText(
          'KohaiDev merupakan kelompok yang terbentuk karena sebuah lomba membuat aplikasi yang bernama “KI Hajar”. Pada perlombaan tersebut pada awalnya seluruh anggota kelompok semangat untuk mengikutinya, dan juga untuk mengontrol progres pembuatan aplikasi kelompok KohaiDev membuat jadwal pengerjaan dari penentuan tema, dan seterusnya. Namun karena masih awam mereka kesulitan untuk membagi waktu dengan tugas yang mereka miliki.'),
      buildText(
          'Pada perlombaan tersebut mereka memutuskan untuk mengambil tema cerita daerah. “Karena menurutku cerita daerah sudah mulai terlupakan karena perkembangan teknologi, bagaimana kalau kita buat aplikasi yang mengangkat cerita daerah ?” ujar salah seorang anggota kelompok. Setelah menemukan tema yang ingin mereka buat, Nail sebagai ketua dari KohaiDev mulai membagi tugas untuk pembuatan aplikasi tersebut. Sayangnya dalam perlombaan tersebut KohaiDev tidak dapat lolos.'),
      buildText(
          'Kemudian beberapa waktu yang lalu KohaiDev mengikuti lomba “DigiSchool” yang awalnya diseleksi dari pihak sekolah untuk diajukan ke lomba “DigiSchool” nasional dalam lomba tersebut mereka memilih tema pekerjaan dimana didalam aplikasi tersebut para pemilik jasa bisa dengan mudah mempromosikan jasa mereka dan mempermudah masyarakat untuk mencari jasa tersebut di daerah mereka. Dalam perlombaan “DigiSchool” setiap kelas diwajibkan untuk mengirimkan ide aplikasi mereka dan KohaiDev lolos dari seleksi sekolah dan ide aplikasi mereka diajukan ke tahap selanjutnya, sayangnya sekali lagi mereka tidak lolos dalam seleksi 50 aplikasi terbaik.'),
    ],
  ));

  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Dan saat ini KohaiDev mengikuti lomba “MADIG” yang diadakan oleh Maspion Group dimana mengangkat tema majalah online. Dalam lomba kali ini anggota KohaiDev bertambah dan dalam perlombaan kali ini mereka tidak perlu memikirkan ide untuk membuat aplikasi apa namun memikirkan ide untuk membuat aplikasinya seperti apa dengan kata lain mereka dituntut mendesain aplikasi untuk membaca majalah secara online dan membuat aplikasi sesuai desain yang telah mereka buat. Dan hingga saat artikel ini dibuat perlombaan tersebut masih belum selesai.')
    ],
  ));

  articleData.add(articleModel);
  articleModel = new ArticleModel();
  return articleData;
}

List<ArticleModel> article3() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('MASPION IT-Masa Depan IT Indonesia Timur');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/image/splashscreen/logosplashx4.png');
  articleModel.setGenre(1);
  articleModel.setContent(Column(
    children: [
      buildFullImage('assets/image/splashscreen/logosplashx4.png'),
      buildText(
          'Pada saat ini, kita hidup di zaman modernisasi, mencakup bidang ilmu pengetahuan dan teknologi. Manusia juga sangat bergantung kepada teknologi, hal ini lah yang menjadikan teknologi sebagai kebutuhan dasar masyarakat saat ini. Kebutuhan teknologi ini mencakup banyak kalangan usia, mulai dari orang tua hingga anak muda.'),
          buildFullImage('assets/images/article/MaspionIT/MaspionItMasaDepanIndonesia/image2.png'),
      buildText(
          'Teknologi sekarang sangat dibutuhkan oleh setiap orang. baik tua maupun muda teknologi merupakan kebutuhan pokok wajib yang harus ada dalam kehidupan sehari-hari, Karena masyarakat sangat bergantung terhadap teknologi, maka terciptalah  Maspion IT (MIT), Alim Markus sebagai CEO dari Maspion Group mengatakan bahwa peningkatan dari jumlah penggunaan internet mempengaruhi pasar teknologi dimana kebutuhan teknologi bisa dibilang dibutuhkan oleh berbagai usia dan berbagai kalangan. Oleh karena itu Maspion Group bekerjasama dengan komunitas teknologi informasi Indonesia untuk membangun maspion IT (MIT) '),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [buildFullImage('assets/images/article/MaspionIT/MaspionItMasaDepanIndonesia/image3.png'),
      buildText('"Keberadaan IT mampu mendorong penyebaran informasi dengan cepat, sekaligus menumbuhkan ekonomi yang adil dan merata" kata Alim Markus pada Jumat (3/5/2019). Disini tergambarkan bahwa pembentukan Maspion IT akan menjadi pusat teknologi di Indonesia, khususnya pada daerah Indonesia Timur. '),
      buildFullImage('assets/images/article/MaspionIT/MaspionItMasaDepanIndonesia/image4.png'),
      buildText('Kemudian, Alim Markus selaku bos Maspion akan merencanakan perluasan workshopnya, karena tak disangka-sangka Maspion IT ini sudah ada kurang lebih 100 penyewa besar. Dengan banyak penyewa di Maspion IT, harapannya bisa memberikan kontribusi yang besar dan berpengaruh kepada Mall Maspion Square.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}