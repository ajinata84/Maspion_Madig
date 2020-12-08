import 'package:flutter/material.dart';
import 'package:madicc/models/articlemodel.dart';
import 'package:madicc/pages/reader.dart';
import 'package:madicc/widgets/articlewidgets.dart';

List Articles = [
  article1(),
  article2(),
  article3(),
  article4(),
];

List Genre1 = [article1()];
List Genre2 = [article2()];
List Genre3 = [article3()];
List Genre4 = [article4()];
List Genre5 = [article4()];
List Genre6 = [article4()];
List Genre7 = [article4()];
List Genre8 = [article4()];

List<ArticleModel> article1() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Kouhai-Dev');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/images/dummy/0.jpg');
  articleModel.setPreview('Kouhai dev terinspirasi dari kalimat jepang  “こうはい” yang dibaca “kouhai” yang memiliki arti junior menggambarkan kita sebagai anak SMK yang baru masuk ke jenjang kejuruan, sedangkan “DEV” merupakan singkatan kalimat “Development” yang berarti  pengembang menunjukkan bahwa kita sebagai kelompok yang akan mengembangkan inovasi dan teknologi untuk menunjang kehidupan sehari-hari.');
  articleModel.setGenre(1);
  articleModel.setContent(
    Column(
    children: [
      buildFullImage('assets/images/dummy/0.jpg'),
      buildText('Kelompok kami beranggotakan 4 orang, setiap anggota memiliki keahlian masing masing, UI/UX Designers, Developer, IDEA Creator dengan begitu kita bekerja sama dengan keahlian kita untuk menciptakan inovasi teknologi yang bermanfaat, selain itu anggota kelompok kita berasal dari berbagai daerah, ada yang dari Malang, Tulungagung, Kertosono dan Kediri. Mereka juga memiliki cerita masing masing yang membuat mereka bekerjasama untuk membentuk kelompok ini.'),
      buildText('Ahmadun Na’il adalah salah satu anggota kelompok ini, dia bisa dibilang sebagai pencetus terbentuknya kelompok ini, “Dulu ceritanya ada sebuah lomba aplikasi, di lomba tersebut butuh sekitar 3 kelompok syarat untuk masuk lomba, akhirnya saya coba nawarin ke teman-teman dan terbentuklah kelompok ini” kata Na’il, ia dikenal sebagai UI/UX Designers banyak project yang ia buat dan ia posting di sosial medianya, “Saya mengajak mereka  karena saya ingin berpartisipasi dalam Desain aplikasi sambil nambah pengalaman”'),
      buildText('Selain Ahmadun Nail ada juga Prash Trisula Ajinata yang merupakan seseorang yang mempunyai keahlian didalam bidang back-end bahkan juga bisa membuat back-end khusus untuk android.'),
      buildText('Kedar Anugerah Nacha Putra Dia biasanya bekerja sebagai Pembuat konten dalam tim ini karena dia handal dalam membuat konten yang akan di gunakan dalam aplikasi aplikasi kreasi kita, selain itu, dia juga dapat membantu tim pada berbagai hal.')
    ],
  ));
  

  articleData.add(articleModel);
  articleModel = new ArticleModel();

  articleModel.setContent(
    Column(
    children: [
      buildText('Kouhai dev terinspirasi dari kalimat jepang  “こうはい” yang dibaca “kouhai” yang memiliki arti junior menggambarkan kita sebagai anak SMK yang baru masuk ke jenjang kejuruan, sedangkan “DEV” merupakan singkatan kalimat “Development” yang berarti  pengembang menunjukkan bahwa kita sebagai kelompok yang akan mengembangkan inovasi dan teknologi untuk menunjang kehidupan sehari-hari.'),
    ],
  ));
  
  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article2() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Mending Rakit Pc');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/images/dummy/0.jpg');
  articleModel.setGenre(2);

  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article3() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('KORONA WOE');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/images/dummy/0.jpg');
  articleModel.setGenre(3);

  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}

List<ArticleModel> article4() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('TAUBAT HAMBA KU');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/images/dummy/0.jpg');
  articleModel.setGenre(3);

  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}
