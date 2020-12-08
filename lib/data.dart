import 'package:flutter/material.dart';
import 'package:madicc/models/articlemodel.dart';
import 'package:madicc/pages/reader.dart';
import 'package:madicc/widgets/articlewidgets.dart';

List Articles = [article1(), article2(), article3(), article4(), article5(),article6()];

List Genre1 = [article3(), article4()];
List Genre2 = [
  article1(),
  article2(),
];
List Genre3 = [article5(),article6()];
List Genre4 = [];
List Genre5 = [];
List Genre6 = [];
List Genre7 = [];
List Genre8 = [];
List Genre9 = [];

List<ArticleModel> article1() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Kouhai-Dev');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/images/dummy/0.jpg');
  articleModel.setPreview(
      'Kouhai dev terinspirasi dari kalimat jepang  “こうはい” yang dibaca “kouhai” yang memiliki arti junior menggambarkan kita sebagai anak SMK yang baru masuk ke jenjang kejuruan, sedangkan “DEV” merupakan singkatan kalimat “Development” yang berarti  pengembang menunjukkan bahwa kita sebagai kelompok yang akan mengembangkan inovasi dan teknologi untuk menunjang kehidupan sehari-hari.');
  articleModel.setGenre(0);
  articleModel.setContent(Column(
    children: [
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
  articleModel.setPreview(
      'KohaiDev merupakan kelompok yang terbentuk karena sebuah lomba membuat aplikasi yang bernama “KI Hajar”. Pada perlombaan tersebut pada awalnya seluruh anggota kelompok semangat untuk mengikutinya, dan juga untuk mengontrol progres pembuatan aplikasi kelompok KohaiDev membuat jadwal pengerjaan dari penentuan tema, dan seterusnya. Namun karena masih awam mereka kesulitan untuk membagi waktu dengan tugas yang mereka miliki.');
  articleModel.setGenre(1);
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
  articleModel.setImg(
      'assets/images/article/MaspionIT/MaspionITMasaDepanIndonesia/image3.jpg');
  articleModel.setPreview(
      'Pada saat ini, kita hidup di zaman modernisasi, mencakup bidang ilmu pengetahuan dan teknologi. Manusia juga sangat bergantung kepada teknologi, hal ini lah yang menjadikan teknologi sebagai kebutuhan dasar masyarakat saat ini. Kebutuhan teknologi ini mencakup banyak kalangan usia, mulai dari orang tua hingga anak muda.');
  articleModel.setGenre(2);
  articleModel.setContent(Column(
    children: [
      buildText(
          'Pada saat ini, kita hidup di zaman modernisasi, mencakup bidang ilmu pengetahuan dan teknologi. Manusia juga sangat bergantung kepada teknologi, hal ini lah yang menjadikan teknologi sebagai kebutuhan dasar masyarakat saat ini. Kebutuhan teknologi ini mencakup banyak kalangan usia, mulai dari orang tua hingga anak muda.'),
      buildText(
          'Teknologi sekarang sangat dibutuhkan oleh setiap orang. baik tua maupun muda teknologi merupakan kebutuhan pokok wajib yang harus ada dalam kehidupan sehari-hari, Karena masyarakat sangat bergantung terhadap teknologi, maka terciptalah  Maspion IT (MIT), Alim Markus sebagai CEO dari Maspion Group mengatakan bahwa peningkatan dari jumlah penggunaan internet mempengaruhi pasar teknologi dimana kebutuhan teknologi bisa dibilang dibutuhkan oleh berbagai usia dan berbagai kalangan. Oleh karena itu Maspion Group bekerjasama dengan komunitas teknologi informasi Indonesia untuk membangun maspion IT (MIT) '),
      buildText(
          '"Keberadaan IT mampu mendorong penyebaran informasi dengan cepat, sekaligus menumbuhkan ekonomi yang adil dan merata" kata Alim Markus pada Jumat (3/5/2019). Disini tergambarkan bahwa pembentukan Maspion IT akan menjadi pusat teknologi di Indonesia, khususnya pada daerah Indonesia Timur. '),
      buildText(
          'Kemudian, Alim Markus selaku bos Maspion akan merencanakan perluasan workshopnya, karena tak disangka-sangka Maspion IT ini sudah ada kurang lebih 100 penyewa besar. Dengan banyak penyewa di Maspion IT, harapannya bisa memberikan kontribusi yang besar dan berpengaruh kepada Mall Maspion Square.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article4() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Bersama Dengan SMK, MASPION ITMembangun UMKM JATIM');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/MaspionIT/BersamaDenganSMK,MASPIONITMembangunUMKMJATIM/image1.jpeg');
  articleModel.setPreview(
      'UMKM di Jawa Timur merupakan penyokong pertumbuhan ekonomi yang penting karena rata-rata kontribusi UMKM mencapai antara 54 persen sampai 56 persen terhadap Produk Domestik Regional Bruto (PDRB) Jatim ungkap Gubernur Jatim, Khofifah Indar Parawansa. Oleh karena itu Maspion IT berusaha menumbuhkan UMKM yang ada di Jawa Timur dengan melakukan sinergi dengan sejumlah SMK, di Jatim, para pelaku UMKM dan IKM juga pesantren yang aktif dalam program One Pesantren One Product (OPOP).');
  articleModel.setGenre(3);
  articleModel.setContent(Column(
    children: [
      buildText(
          'UMKM di Jawa Timur merupakan penyokong pertumbuhan ekonomi yang penting karena rata-rata kontribusi UMKM mencapai antara 54 persen sampai 56 persen terhadap Produk Domestik Regional Bruto (PDRB) Jatim ungkap Gubernur Jatim, Khofifah Indar Parawansa. Oleh karena itu Maspion IT berusaha menumbuhkan UMKM yang ada di Jawa Timur dengan melakukan sinergi dengan sejumlah SMK, di Jatim, para pelaku UMKM dan IKM juga pesantren yang aktif dalam program One Pesantren One Product (OPOP).'),
      buildFullImage(
          'assets/images/article/MaspionIT/BersamaDenganSMK,MASPIONITMembangunUMKMJATIM/image1.jpeg'),
      buildText(
          'Dalam pelatihan bersama Maspion IT terdapat sekitar 300 SMK yang mendapatkan dukungan dari pelatihan sehingga diharapkan lulusan lulusan SMK tersebut memiliki skill dan menjadi tenaga kerja yang terampil. Selain itu juga diharapkan para pelaku UMKM, IKM juga OPOP yang sudah bersinergi dengan Maspion IT dapat mengakselerasi usahanya dengan kemampuan teknologi digital mereka. “Mudah-mudahan semua bisa bersinergi dengan upaya percepatan pemulihan ekonomi di Jawa Timur, sambil kita tetap berusaha mengendalikan penyebaran covid-19. Saya menyampaikan terima kasih kepada Maspion IT,” ujar Gubernur Jatim.'),
      buildFullImage(
          'assets/images/article/MaspionIT/BersamaDenganSMK,MASPIONITMembangunUMKMJATIM/image2.jpeg'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Menurut Khofifah bila semua pihak bisa bertransformasi dalam hal teknologi digital maka akan ada percepatan pertumbuhan UMKM di Jawa Timur, sehingga dapat memulihkan ekonomi yang menurun diakibatkan Covid 19 ini. Presiden Direktur Maspion Group, Alim Markus mengatakan bahwa Khofifah adalah Gubernur paling pintar dan sangat memahami dunia bisnis sehingga menjadi pro kepada para pelaku bisnis. Dan juga Alim berharap agar anak-anak muda SMK di Jatim bisa menjadi IT entrepreneur.'),
      buildFullImage(
          'assets/images/article/MaspionIT/BersamaDenganSMK,MASPIONITMembangunUMKMJATIM/image1.jpeg')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article5() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Bank Maspion Perkuat UMKMKala Pandemi COVID');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/BankMaspion/BankMaspionPerkuatUMKMKalaPandemiCOVID/image1.png');
  articleModel.setPreview(
      'UMKM di Jawa Timur merupakan penyokong pertumbuhan ekonomi yang penting karena rata-rata kontribusi UMKM mencapai antara 54 persen sampai 56 persen terhadap Produk Domestik Regional Bruto (PDRB) Jatim ungkap Gubernur Jatim, Khofifah Indar Parawansa. Oleh karena itu Maspion IT berusaha menumbuhkan UMKM yang ada di Jawa Timur dengan melakukan sinergi dengan sejumlah SMK, di Jatim, para pelaku UMKM dan IKM juga pesantren yang aktif dalam program One Pesantren One Product (OPOP).');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/BankMaspion/BankMaspionPerkuatUMKMKalaPandemiCOVID/image1.png'),
      buildText(
          'Selain berkontribusi di bidang perkakas rumah tangga, Maspion Group juga ikut serta pada bidang ekonomi, yaitu Bank Maspion. Peranan bank disini adalah sebagai menjaga stabilitas moneter, memelihara cadangan devisa negara, mengawasi perbankan, mengawasi kinerja lembaga keuangan, mengatur dan menjaga kelancaran sistem pembayaran.'),
      buildText(
          'Ditengah pandemi ini, Bank Maspion masih tetap dilanjutkan. Bahkan, Bank Maspion juga memperkuat portofolio UMKM dengan fokus melanjutkan program tabungan yang bertemakan “Dagang Saya dan Teman-Teman” atau jika disingkat menjadi ‘Dasyatt’ yang bertujuan untuk mempertahankan kinerja di tengah masa pandemi.'),
      buildText(
          'Selain itu, pertumbuhan kredit Bank Maspion seiring tahun semakin meningkat. Hal ini telah tercatat bahwa pertumbuhan kredit Bank Maspion Indonesia tahun 2019 tercatat sebesar Rp 5.466 miliar, dibandingkan dengan tahun 2018 sebesar Rp 4.976 miliar, naik 9,85 persen dari tahun 2018 ke 2019.'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          '“Kami optimis meski di tengah pandemi masih ada potensi yang bisa digarap, karena Indonesia masih didominasi konsumsi, dan selama daya beli masih terjangkau, jadi masih ada peluang pasar, yang penting domestik digarap dengan baik,” kata Herman Halim selaku Direktur Utama Bank Maspion saat diwawancarai.'),
      buildText(
          'Herman Halim juga punya keinginan untuk memperkuat segmen UMKM dengan menciptakan 1 juta UMKM yang bertujuan untuk terus mendukung program tabungan ‘Dasyatt’, seperti membuka usaha kecil-kecilan layaknya warung. “Program ini juga bertujuan merubah pola pikir anak sekarang untuk menjadi pengusaha,” katanya.'),
      buildText(
          'Herman juga mengaku melakukan pengembangan fitur layanan untuk meningkatkan kualitas nasabah, dengan memanfaatkan perkembangan teknologi digital seperti Maspion Electronic Banking Individual, ATM, dan Cash Recycle Machine.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article6() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Perkuat Layanan Digital, Bank Maspion Bekerjasama Dengan Bank Thailand');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/BankMaspion/PerkuatLayananDigital,BankMaspionBekerjasamaDenganBankThailand/image1.jpg');
  articleModel.setPreview(
      'Dalam upaya untuk memperkuat layanan bisnis digital perbankan dan perbankan sektor usaha kecil menengah PT Bank Maspion Indonesia menjual 9,99% sahamnya kepada KBank yang ada di Thailand. Alasannya adalah karena menurut Presiden Direktur dan CEO Maspion Group, Alim Markus KBank yang ada di Thailand tersebut memiliki kinerja perbankan yang bagus dan memiliki layanan IT dan e-commerce yang kuat.');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/BankMaspion/PerkuatLayananDigital,BankMaspionBekerjasamaDenganBankThailand/image1.jpg'),
      buildText(
          'Dalam upaya untuk memperkuat layanan bisnis digital perbankan dan perbankan sektor usaha kecil menengah PT Bank Maspion Indonesia menjual 9,99% sahamnya kepada KBank yang ada di Thailand. Alasannya adalah karena menurut Presiden Direktur dan CEO Maspion Group, Alim Markus KBank yang ada di Thailand tersebut memiliki kinerja perbankan yang bagus dan memiliki layanan IT dan e-commerce yang kuat.'),
      buildText(
          '“Tanda tangan perjanjian kerja sama sudah tadi pagi (Senin 28/8/2017) di kantor pusat KBank Thailand. Dia (KBank) punya IT dan e-commerce itu very strong, dan dia juga punya keuntungan tahun lalu itu nomor satu di Thailand, dan KBank punya profit bagus sekali US1,2 miliar,” kata CEO Maspion Group.'),
      buildText(
          'Menurut Alim Markus sebagai CEO Maspion Group rencananya hasil dari akuisisi KBank tersebut nantinya akan dikelola untuk meningkatkan layanan investasi dan pembiayaan perdagangan, UKM dan digital perbankan bagi kedua pihak. “Selain itu, langkah ini juga akan membuka jalan bagi KBank untuk melayani perdagangan bilateral dan investasi Thailand-Indonesia yang ditargetkan bisa mencapai US20 miliar dalam 3 tahun,” katanya.'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/BankMaspion/PerkuatLayananDigital,BankMaspionBekerjasamaDenganBankThailand/image2.jpeg'),
      buildText(
          'Dan alasan dari KBank mengakuisisi Bank Maspion karena Bank Maspion baru saha mencapai status Buku 2 dengan fokus layanan utama pada bisnis UKM dan perbankan digital sesuai dengan tujuan KBank. Selain itu menurut Presiden KBank Predee Daochai Maspion Group juga menjalankan cakupan bisnis di banyak sektor seperti sektor keuangan dan perbankan, ritel/grosir, logistik dan pengembangan properti, serta barang konsumsi, seperti peralatan listrik dan rumah tangga. Dan menurutnya melalui akuisisi tersebut KBank nantinya akan memperkuat kehadirannya sebagai Bank AEC +3 untuk melayani konektivitas bisnis di Asean, China, Jepang dan Korea Selatan melalui perluasan jaringan layanannya.'),
      buildText(
          'Dan alasan dari KBank mengakuisisi Bank Maspion karena Bank Maspion baru saha mencapai status Buku 2 dengan fokus layanan utama pada bisnis UKM dan perbankan digital sesuai dengan tujuan KBank. Selain itu menurut Presiden KBank Predee Daochai Maspion Group juga menjalankan cakupan bisnis di banyak sektor seperti sektor keuangan dan perbankan, ritel/grosir, logistik dan pengembangan properti, serta barang konsumsi, seperti peralatan listrik dan rumah tangga. Dan menurutnya melalui akuisisi tersebut KBank nantinya akan memperkuat kehadirannya sebagai Bank AEC +3 untuk melayani konektivitas bisnis di Asean, China, Jepang dan Korea Selatan melalui perluasan jaringan layanannya.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}
