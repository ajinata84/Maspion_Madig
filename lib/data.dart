import 'package:flutter/material.dart';
import 'package:madicc/models/articlemodel.dart';
import 'package:madicc/pages/reader.dart';
import 'package:madicc/widgets/articlewidgets.dart';

List Articles = [
  article1(),
  article2(),
  article3(),
  article4(),
  article5(),
  article6(),
  article7(),
  article8(),
  article9(),
  article10(),
  article11(),
  article12(),
  article13(),
  article14(),
  article15(),
];

List Genre1 = [article3(), article4()];
List Genre2 = [
  article1(),
  article2(),
];
List Genre3 = [article5(), article6()];
List Genre4 = [article14(),article15()];
List Genre5 = [article9()];
List Genre6 = [article7(), article8()];
List Genre7 = [article12()];
List Genre8 = [article13()];
List Genre9 = [article10(),article11()];

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

  articleModel.setJudul(
      'Perkuat Layanan Digital, Bank Maspion Bekerjasama Dengan Bank Thailand');
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

List<ArticleModel> article7() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul(
      'Songkong Pandemi, Maspion Produksi Sabun Batangan Pengganti Hand Sanitizer');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/ProdukMaspionGroup/SongkongPandemi,MaspionProduksiSabunBatanganPenggantiHandSanitizer/image1.jpg');
  articleModel.setPreview(
      'Pandemi COVID 19 masih belum bisa diprediksi kapan berakhir. korban yang terus bertambah tanpa henti. Untuk mencegah penularan pemerintah melakukan berbagai cara. melalui Satuan Tugas Penanganan Covid-19 juga gencar menyampaikan gerakan 3M. Yakni mengenakan masker, mencuci tangan dengan sabun, menjaga jarak dan jauhi kerumunan.');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/ProdukMaspionGroup/SongkongPandemi,MaspionProduksiSabunBatanganPenggantiHandSanitizer/image1.jpg'),
      buildText(
          'Infeksi virus Corona disebut COVID-19 (Coronavirus Disease 2019) ditemukan di kota Wuhan, China pada akhir Desember 2019. Virus ini menular dengan sangat cepat dan telah menyebar ke hampir semua negara, termasuk Indonesia, hanya dalam waktu beberapa bulan. Virus ini menular melalui percikan dahak (droplet) dari saluran pernapasan, misalnya ketika berada di ruang tertutup yang ramai dengan sirkulasi udara yang kurang baik atau kontak langsung dengan droplet.'),
      buildText(
          'Hal tersebut membuat beberapa negara menerapkan kebijakan untuk memberlakukan lockdown dalam rangka mencegah penyebaran virus Corona. Di Indonesia sendiri, diberlakukan kebijakan Pembatasan Sosial Berskala Besar (PSBB) untuk menekan penyebaran virus ini.'),
      buildFullImage(
          'assets/images/article/ProdukMaspionGroup/SongkongPandemi,MaspionProduksiSabunBatanganPenggantiHandSanitizer/image2.jpg'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Akhirnya, PT Maspion Group yang dikenal dengan produk rumah tangga pun berpartisipasi dalam pencegahan penularan virus corona. Hal inilah yang kemudian menjadi dasar PT Maspion Group untuk membuat sabun khusus cuci tangan CT-19 untuk pencegahan Covid-19. Alasan PT Maspion Group membuat sabun khusus cuci tangan CT-19 karena produksi hand sanitizer akan semakin sulit, di dalam hand sanitizer itu sendiri mengandung 70 persen alkohol, banyaknya tingkat alkohol inilah yang membuat hand sanitizer terhitung sulit, langka dan mahal. '),
      buildText(
          '“Sabun batangan itu lebih efektif daripada hand sanitizer karena harganya yang sangat terjangkau dan murah”, kata Alim Markus. Kemudian PT Maspion Group berencana untuk memberikan secara cuma-cuma pada gugus tugas yang menangani covid di Indonesia dan dijual secara murah di pasaran.'),
      buildFullImage(
          'assets/images/article/ProdukMaspionGroup/SongkongPandemi,MaspionProduksiSabunBatanganPenggantiHandSanitizer/image3.jpg'),
      buildText(
          'Harga sabun CT-19 dengan berat 81 gram menurut Alim Markus harganya sangat terjangkau, hanya Rp1.600. Namun dengan harga yang murah, sabun CT-19 bisa digunakan 1.000 kali untuk mencuci tangan. Sabun batangan ini, tentu sangat membantu dalam memutus mata rantai penyebaran virus corona.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article8() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Maspion Magic Cooker Black Diamond');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/ProdukMaspionGroup/MaspionMagicCookerBlackDiamond/image.jpg');
  articleModel.setPreview(
      'PT Maspion Group, setiap terdengar nama perusahaan tersebut kita pasti teringat dengan peralatan-peralatan rumah tangga yang setiap hari kita gunakan. Namun, siapa sangka perusahaan sebesar ini dimulai dengan produk peralatan dapur pada tahun 1976.');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildText(
          'Bicara tentang peralatan dapur, apa yang paling penting menurut kalian? Kalau dari segi efisiensinya, rice cooker atau penanak nasi adalah peralatan dapur yang paling efisien dari peralatan-peralatan lainnya. Mungkin sebagian besar orang hanya berpikir penanak nasi hanya untuk membuat nasi saja. Padahal jika kita manfaatkan lebih jauh, rice cooker ini bisa digunakan untuk beraneka ragam masakan, seperti sup, ayam ungkep, membuat kue, merebus mie instan dan masih banyak lagi'),
      buildFullImage(
          'assets/images/article/ProdukMaspionGroup/MaspionMagicCookerBlackDiamond/image.jpg'),
      buildText(
          'Dari banyak model rice cooker yang diproduksi, merek rice cooker Magic Cooker Black Diamond MRJ 1892 dari Maspion memiliki beberapa keunggulan dari merek-merek lainnya, antara lain sebagai berikut.'),
      buildText(
          ' - Terbuat dari alumunium murni yang diproses khusus. Sehingga panci jadi lebih kuat dan pemanasannya merata. Jadi, nasi atau makanan yang dimasak dengan Magic Cooker bisa matang sempurna dengan nutrisi yang terjaga.'),
      buildText(
          ' - Lapisan Black Diamond, yaitu lapisan dengan proses pemadatan dan pengerasan permukaan panci. Sehingga panci jadi tahan gores dan aman untuk makanan.'),
      buildText(
          ' - Pancinya NO PFOA (zat kimia berbahaya yang dapat menyebabkan kanker). Jadi lebih sehat. Panci anti gores ini tetap kuat walau dibersihkan hingga 100.000 kali.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Adapun rice cooker ini, memiliki kapasitas 1.8 liter, menggunakan listrik sebesar 395 W/220 V, material luarnya dibuat dari plastik tahan panas dan bagian dalamnya ditutupi dengan bahan yang non-stick coating (permukaan anti lengket), Desain luarnya yang bagus juga menambah nilai perspektif dari rice cooker ini, dengan harga kisaran Rp.400.000-an dengan kelebihan yang dimiliki rice cooker ini sangat direkomendasikan untuk dibeli sebagai penyandang pangan kehidupan sehari-hari.'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article9() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('AI Dapat Selamatkan Jutaan Jiwa Saat Pandemi');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/Teknologi&Informasi/AIDapatSelamatkanJutaanJiwaSaatPandemi/image1.jpg');
  articleModel.setPreview(
      'PArtificial Intelligence atau AI merupakan salah satu teknologi yang sedang populer saat ini. Berbagai bidang industri sudah memanfaatkan teknologi tersebut, mulai dari kesehatan, keuangan, dan lain-lain.');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/Teknologi&Informasi/AIDapatSelamatkanJutaanJiwaSaatPandemi/image1.jpg'),
      buildText(
          'Artificial Intelligence atau AI merupakan salah satu teknologi yang sedang populer saat ini. Berbagai bidang industri sudah memanfaatkan teknologi tersebut, mulai dari kesehatan, keuangan, dan lain-lain.'),
      buildText(
          'Artificial Intelligence atau kecerdasan buatan adalah sistem komputer yang mampu melakukan tugas-tugas yang biasanya membutuhkan kecerdasan manusia. Teknologi ini dapat membuat keputusan dengan cara menganalisis dan menggunakan data yang tersedia di dalam sistem. Proses yang terjadi dalam Artificial Intelligence mencakup learning, reasoning, dan self-correction. Proses ini mirip dengan manusia yang melakukan analisis sebelum memberikan keputusan.'),
      buildText(
          'aSeorang fisikawan Amerika Serikat, Michio Kaku mengklaim Pandemi Covid 19 dapat diakhiri dengan kecerdasan buatan atau artificial intelligence (AI). Hal tersebut dinyatakan Michio Kaku dalam acara Asosiasi profesional layanan keuangan internasional Million Dollar Round Table (MDRT) Virtual Event 2020 yang berlangsung pada 3-8 Agustus 2020. AI dinyatakan dapat menjadi kunci penanganan Pandemi Covid-19 dengan mengenali pola penyebaran dan memberikan peringatan dini kepada fasilitas kesehatan.'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Menurut Michio AI mampu mengenali pola dan data lebih baik daripada manusia, tepatnya dengan mampu memberi peringatan dini kepada rumah sakit, fasilitas kesehatan lainnya, dan regulator kesehatan bahwa outbreak akan segera terjadi di suatu daerah. "Ini memiliki potensi menyelamatkan ribuan orang," jelas Michio. Artinya, apabila wabah Covid-19 bisa dideteksi dini, korban tidak akan sebanyak sekarang. Terlebih, pelacakan kontak dengan diagnosis pola dan data yang selama ini dilakukan manual oleh manusia tidak efektif dan efisien.'),
      buildText(
          'Michio juga mengamati bahwa ada ketidakseragaman prosedur dari tenaga kesehatan dan relawan yang harus direkrut dan dilatih, sehingga hal ini mengurangi akurasi data dan memakan waktu yang amat lama. Oleh karena itulah AI dianggap bisa membantu karena AI dapat melakukan pekerjaan diatas lebih cepat dan akurat. Contohnya seperti termometer yang tersambung dengan internet dapat menjadi sumber data bagi AI untuk menyimpulkan apakah penyebaran wabah mulai terjadi di sebuah daerah. Selain itu AI juga dapat bekerja sama dengan data pencarian pengguna internet dari mesin pencarian seperti Google, untuk mengenali pola meningkatnya gejala Covid-19 di daerah tertentu. Dengan demikian, penggunaan AI harus berskala global akan dapat membantu otoritas kesehatan negara-negara di dunia untuk bekerja sama menangani wabah Covid-19 dan wabah-wabah lain di masa depan.'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article10() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Rela Datangi Rumah Murid Bantu Belaja');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/KisahInspiratif/RelaDatangiRumahMuridBantuBelajar/image1.jpg');
  articleModel.setPreview(
      'Mohammad Yenri Shufianto dari SDN Mangunsari Kecamatan Kedungwaru selaku pengajar kelas VI, tetap berupaya untuk tetap mengedepankan pendidikan murid-muridnya yang berjumlah 24 orang');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/KisahInspiratif/RelaDatangiRumahMuridBantuBelajar/image1.jpg'),
      buildText(
          'Selaku guru honorer, ia rela menyempatkan waktunya kurang lebih 4 jam dalam sehari untuk mengunjungi rumah anak didiknya (home visit) hanya untuk membantu muridnya belajar (KBM). Kegiatan belajar mengajar di sekolah hampir sama dengan kegiatan belajar mengajar yang dilakukan Yenri. Hanya saja, ada pengurangan murid karena memang rumah bukan tempat yang optimal untuk melakukan kegiatan belajar mengajar. Tampak hanya tujuh murid di rumah suatu siswa dengan mengenakan standar new normal.'),
      buildText(
          'Meskipun sarana yang kurang memadai, para murid tetap giat dalam belajar, kegiatan belajar mengajar tersebut hanya memiliki papan tulis kecil, tidak ada meja dan kursi. Bahkan, para siswa juga bercanda ria di tengah sulitnya akses pendidikan saat ini.'),
      buildText(
          'Yenri mengatakan bahwa alasannya membagi 24 anak menjadi 4 grup adalah mengurangi kepadatan dan agar belajar mengajar menjadi lebih efektif meskipun di rumah.'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Menurut Yenri, pelaksanaan home visit ini adalah salah satu bentuk kepeduliannya kepada siswa yang akan naik sekolah ke jenjang yang lebih tinggi yaitu Sekolah Menengah Pertama (SMP) pada tahun ajaran baru mendatang. Maka, peran guru disaat para murid ingin transisi ini harus diawasi secara intensif khususnya pelajaran yang akan diujikan seperti matematika.'),
      buildFullImage(
          'assets/images/article/BankMaspion/PerkuatLayananDigital,BankMaspionBekerjasamaDenganBankThailand/image2.jpeg'),
      buildText(
          'Namun, seharusnya home visit ini dilakukan tidak hanya anak kelas VI saja, anak kelas I sampai V pun juga perlu metode belajar mengajar seperti ini ujarnya. Home visit ini tidak semena-mena memaksakan keinginan Yenri, sebelum berkunjung ke rumah suatu siswa Yenri izin dahulu kepada wali kelas murid tersebut. Malahan para wali kelas itu membutuhkan kegiatan belajar mengajar yang seperti ini, serta pembelajaran online yang dinilai kurang efektif.'),
      buildText(
          'Bahkan saking antusiasnya para murid ingin belajar, sampai-sampai ada salah satu murid yang mengikuti pembelajaran home visit ini menggunakan seragam sekolah.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article11() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel
      .setJudul('Bagi Bahan Pangan Gratis Bagi Warga Terdampak Pandemi');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/KisahInspiratif/BagiBahanPanganGratisBagiWargaTerdampakPandemi/image1.jpg');
  articleModel.setPreview(
      'Dampak yang terjadi pada masa pandemi ini sangatlah buruk. Di Yogyakarta, dampak yang langsung terasa oleh masyarakat yang mendapat pemutusan hubungan kerja (PHK), diberi pesangon yang tidak layak. Bahkan, tidak terjadi di Yogyakarta saja, tetapi banyak kota-kota yang melakukan hal serupa');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/KisahInspiratif/BagiBahanPanganGratisBagiWargaTerdampakPandemi/image1.jpg'),
      buildText(
          'Dampak yang terjadi pada masa pandemi ini sangatlah buruk. Di Yogyakarta, dampak yang langsung terasa oleh masyarakat yang mendapat pemutusan hubungan kerja (PHK), diberi pesangon yang tidak layak. Bahkan, tidak terjadi di Yogyakarta saja, tetapi banyak kota-kota yang melakukan hal serupa'),
      buildText(
          'Kemudian ada warga berasal dari Sleman bernama Ardiati tergerak hatinya untuk memberi bantuan kepada masyarakat, terutama orang terdekat (tetangga). Hal yang dilakukan Ardiati untuk membantu orang sekitarnya adalah dengan menggantungkan bahan sayur-sayuran di dalamnya secara gratis.'),
      buildText(
          '"Kegiatan ini sudah kami mulai sejak 7 April lalu. Saya sempat berdiskusi dengan anak saya untuk melakukan hal ini. Ada beberapa tetangga yang di-PHK dan dirumahkan, tapi kita tidak tahu apakah orang-orang ini masih memiliki uang untuk kebutuhan hidup," ungkap Ardiati, Rabu (28/4/2020).'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Kegiatan ini dimulai dengan menggantung kresek berisi 2 mie instan, 2 telur dan beberapa gula jawa.  Bahkan sempat berdebat dengan anaknya saat memberikan kebutuhan gratis tersebut.'),
      buildFullImage(
          'assets/images/article/KisahInspiratif/BagiBahanPanganGratisBagiWargaTerdampakPandemi/image2.jpg'),
      buildText(
          'Awalnya, Ardiati menggunakan dana pribadinya sebesar 200 ribu rupiah, dia memanfaatkan uang tersebut untuk membeli bahan pokok seperti sayur-sayuran, telur, beras, dan sebagainya. Satu hari hanya dibagikan satu waktu, antara pagi, siang, dan sore. Namun, seiring waktu berjalan tetangga Ardiati juga ikut menyumbangkan beberapa bahan pokok. Prinsip yang dijalankan oleh Ardiati adalah tetangga bantu tetangga. Artinya, orang yang membantu kesulitan manusia lain adalah orang yang ada di dekatnya.'),
      buildText(
          'Di saat bulan puasa, Ardiati mengganti waktu menggantungkan bahan pokok. Dia mengganti disaat hampir berbuka (sore), tetapi tetangga yang mengambilnya tidak terlalu banyak. Dia juga sempat . Akhirnya,  Ardiati kembali menggantung bahan pokok di waktu biasanya. "Saat ini banyak amanah yang saya pegang, donasi dan bantuan dari orang lain berdatangan. Harapannya saya bisa istiqomah terus menebar kegiatan positif ini," ungkap Ardiati.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article12() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel
      .setJudul('Bikin Melongo, Iswa Computer Menghadirkan PC Rakitan Dewa');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/IswaComputer/BikinMelongo,IswaComputerMenghadirkanPCrakitanDewa/image1.jpg');
  articleModel.setPreview(
      'PC Gaming, istilah yang selalu kita dengar saat kita membicarakan game yang kita mainkan setiap hari, pengertian PC Gaming sendiri adalah kumpulan perangkat/komponen yang berspesifikasi berkekuatan tinggi dan dispesifikasikan untuk bidang grafis, dalam dunia komputer, Game sendiri membutuhkan banyak sumber daya pada komponen PC.');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/IswaComputer/BikinMelongo,IswaComputerMenghadirkanPCrakitanDewa/image1.jpg'),
      buildText(
          'PC Gaming, istilah yang selalu kita dengar saat kita membicarakan game yang kita mainkan setiap hari, pengertian PC Gaming sendiri adalah kumpulan perangkat/komponen yang berspesifikasi berkekuatan tinggi dan dispesifikasikan untuk bidang grafis, dalam dunia komputer, Game sendiri membutuhkan banyak sumber daya pada komponen PC.'),
      buildText(
          'Dalam hal gaming komponen Graphics card adalah komponen yang sangat penting dalam  mengerjakan bidang grafis, semakin hari teknologi visual game semakin bagus, hal ini juga membuat harga komponen komputer menjadi mahal, harga PC Gaming bisa sampai 20-30 jutaan tergantung spesifikasinya.'),
      buildText(
          'Maka dari itu Iswa Komputer meluncurkan produk PC GAMING HIGHCLASS, adalah PC Rakitan yang berspesifikasi tinggi dengan teknologi baru dapat menunjang bidang grafis lebih tepatnya game, tujuan Iswa Komputer meluncurkan produk ini dengan harga merakyat,'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/IswaComputer/BikinMelongo,IswaComputerMenghadirkanPCrakitanDewa/image2.jpg'),
      buildText(
          'Cukup dengan budget dibawah 20 jutaan kita dapat menikmati PC Gaming yang berspesifikasi seperti berikut,'),
      buildText(
          'Intel Core i7 8700\nRAM 16GB DDR4\nHarddisk 1TB\nSsd 240Gb\nVGA Radeon Rx570 8GB\nCasing gaming COUGAR DX TRANSFORMER\nFan PROC RGB SUPER FLOW/n'),
      buildText(
          'PC Rakitan dengan spesifikasi tersebut dapat bertahan dengan teknologi visual game selama 5 tahun ke depan.'),
      buildText(
          'Di Iswa Komputer juga menyediakan banyak jenis komputer lain, PC Rakitan, Gaming, Kantoran dan masih banyak lagi, dengan harga yang terjangkau dan terpercaya dapat direkomendasikan Iswa Komputer  bagi kalian yang ingin merakit komputer atau membeli PC Gaming, kunjungi Iswa Komputer di Maspion IT, Maspion Square, Surabaya')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article13() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Mending Rakit PC, ke Astrotech Computer Aja');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/AstroTechComputer/MendingRakitPC,KeAstrotechComputerAja/image1.png');
  articleModel.setPreview(
      'Pada saat ini, kita hidup di zaman modernisasi, mencakup bidang ilmu pengetahuan dan teknologi. Manusia juga sangat bergantung kepada teknologi, hal ini lah yang menjadikan teknologi sebagai kebutuhan dasar masyarakat saat ini. Kebutuhan teknologi ini mencakup banyak kalangan usia, mulai dari orang tua hingga anak muda.');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildText(
          'Pada saat ini, kita hidup di zaman modernisasi, mencakup bidang ilmu pengetahuan dan teknologi. Manusia juga sangat bergantung kepada teknologi, hal ini lah yang menjadikan teknologi sebagai kebutuhan dasar masyarakat saat ini. Kebutuhan teknologi ini mencakup banyak kalangan usia, mulai dari orang tua hingga anak muda.'),
      buildText(
          'Teknologi sekarang sangat dibutuhkan oleh setiap orang.baik tua maupun muda teknologi merupakan kebutuhan pokok wajib yang harus ada dalam kehidupan sehari-hari.'),
      buildText(
          'Seiring berkembangnya teknologi, maka semakin banyak orang yang memerlukan dan membutuhkan teknologi. Disini Astrotech Surabaya merupakan solusi dari kebanyakan orang yang tentang kebutuhan teknologi.'),
      buildFullImage(
          'assets/images/article/AstroTechComputer/MendingRakitPC,KeAstrotechComputerAja/image1.png'),
      buildText(
          'strotech Surabaya menjual banyak sekali hardware-hardware komputer, seperti SSD atau harddisk, VGA/GPU, Mouse, Mobo (motherboard), printer, laptop, notebook, webcam, bahkan Astrotech Surabaya juga menjual PC Custom/rakitan dengan harga yang bersaing')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Astrotech Surabaya terletak di mall Maspion Square Blok F16-20, Surabaya, Indonesia 60238. Tidak hanya melayani secara offline, Astrotech juga melayani secara online melalui salah satu ecommerce di indonesia.'),
      buildText(
          'Meskipun online, pelayanan yang diberikan sangatlah baik. dan memiliki rating 4,9 dengan 148 ulasan.'),
      buildFullImage(
          'assets/images/article/AstroTechComputer/MendingRakitPC,KeAstrotechComputerAja/image2.png'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article14() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Students Go To School, SMK TELKOM MALANG');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/SMKTelkomMalang/StudentsGoToSchool,SMKTelkomMalang/image1.jpg');
  articleModel.setPreview(
      'SMK Telkom Malang merupakan sekolah IT yang terkenal, karena memiliki banyak kegiatan luar sekolah dan tetap fokus terhadap pelajaran. Salah satu kegiatan luar sekolah SMK Telkom Malang ini adalah SGTS (Students Go To School).');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildText(
          '	SMK Telkom Malang merupakan sekolah IT yang terkenal, karena memiliki banyak kegiatan luar sekolah dan tetap fokus terhadap pelajaran. Salah satu kegiatan luar sekolah SMK Telkom Malang ini adalah SGTS (Students Go To School).'),
      buildText(
          'Students Go To School merupakan program tahunan yang dilakukan oleh siswa untuk mensosialisasikan informasi pendaftaran peserta didik baru se-Jawa Timur. Student Go To School dilakukan oleh anak-anak kelas X.'),
      buildFullImage(
          'assets/images/article/SMKTelkomMalang/StudentsGoToSchool,SMKTelkomMalang/image1.jpg'),
      buildText(
          'Mengapa kelas X? Karena mereka berkesempatan unjuk diri dan kemampuan atas keberhasilannya lolos seleksi dan tes SMK Telkom Sandhy Putra (julukan Smk Telkom Malang).'),
      buildText(
          'Para siswa yang berkontribusi di program Student Go To School ini biasanya bergabung dengan alumni asal masing-masing untuk mengunjungi SMP nya. Jika kekurangan siswa di SMP itu, maka sekolah akan membuat beberapa kelompok dengan sekolah yang dekat dengan mereka, misal satu kecamatan.'),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildFullImage(
          'assets/images/article/SMKTelkomMalang/StudentsGoToSchool,SMKTelkomMalang/image2.jpg'),
      buildText(
          'Sasaran program ini adalah seluruh SMP di kota asal seluruh siswa X. khususnya di kelas 9. Cara mereka menyampaikan SMK Telkom Malang memiliki banyak cara, ada yang memasuki kelas satu per satu dan ada juga yang langsung dikumpulkan menjadi satu di ruangan yang besar seperti aula. Hal seperti inilah yang membedakan sekolah ini dengan sekolah lainnya. Student Go To School juga program yang ditunggu-tunggu oleh siswa baru dan orang tuanya'),
      buildText(
          'Sekolah tidak semena-mena melepas siswa kembali ke SMP nya masing-masing, mereka juga dilatih untuk public speaking disertai pengarahan tata cara berkomunikasi. Mereka juga dibekali surat pengantar untuk diserahkan kepala sekolah SMP tersebut. Serta diberi uang untuk biaya transportasi tiap kelompok yang dibagikan.')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article15() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Kelas Industri, SMK TELKOM MALANG');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg(
      'assets/images/article/SMKTelkomMalang/KelasIndustri,SMKTelkomMalang/image1.jpg');
  articleModel.setPreview(
      'Selain kelas TEFA, SMK Telkom Malang juga mempunyai kelas eksklusif bernama kelas Industri. Kelas Industri adalah kelas yang memiliki kurikulum khusus dan pelajaran produktif yang diberikan langsung menuju ke arah kerja. Kelas Industri ini hanya dijalankan di kelas XII dari siswa terpilih.');
  articleModel.setGenre(4);
  articleModel.setContent(Column(
    children: [
      buildText(
          'Selain kelas TEFA, SMK Telkom Malang juga mempunyai kelas eksklusif bernama kelas Industri. Kelas Industri adalah kelas yang memiliki kurikulum khusus dan pelajaran produktif yang diberikan langsung menuju ke arah kerja. Kelas Industri ini hanya dijalankan di kelas XII dari siswa terpilih.'),
      buildText(
          'Kerja sama SMK Telkom Malang dengan DU/DI (Dunia Usaha/Dunia Industri). Tidak hanya untuk menjembatani proses rekrutmen dari dunia kerja, tetapi juga pada arah pengembangan kurikulum satuan pendidikan dan kelas kerja sama.'),
      buildFullImage(
          'assets/images/article/SMKTelkomMalang/KelasIndustri,SMKTelkomMalang/image1.jpg'),
      buildText(
          'Program belajar ini dibimbing langsung oleh pengajar dari dunia industri sehingga jika sudah lulus, maka siswa memiliki kesempatan besar untuk direktur ke perusahaan mereka. Ada beberapa DU/DI yang memang dari dulu sudah menjalin kerjasama dengan sekolah ini dalam bentuk kelas industri adalah Telkom Akses Indonesia dan Huawei Indonesia.'),
      buildText(
          'Kelas industri juga memberikan beberapa benefit selain pengalaman kerja, seperti beasiswa yang diberikan Kelas Industri PT. Telkom Indonesia. Setiap masing-masing siswa yang masuk kelas industri diberi uang 2 juta oleh PT. Telkom Indonesia. '),
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(Column(
    children: [
      buildText(
          'Hubin SMK Telkom Malang menjalin banyak kerjasama dengan pihak eksternal yang dapat mendukung pengembangan siswa SMK Telkom Malang. Kerjasama yang terjalin meliputi kerjasama dengan perguruan tinggi atau DU/DI. Terdapat beberapa DU / DI di bidang TI bertaraf Nasional maupun Internasional yang sudah MOU dengan SMK Telkom sampai saat ini.Bentuk Kerja sama dengan Industri diantaranya:'),
      buildText(
          'Recruitment, Praktek kerja industri, Kelas Industri, Beasiswa Ikatan Dinas, Kelas Tefa (Teaching Factory)'),
      buildText(
          'SMK Telkom Malang telah membangun kerja sama dengan beberapa perguruan tinggi terkemuka baik swasta maupun negeri untuk memfasilitasi lulusan yang memang memiliki minat untuk melanjutkan studi di bangku kuliah')
    ],
  ));
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}
