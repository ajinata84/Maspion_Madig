import 'package:madicc/models/articlemodel.dart';

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

List<ArticleModel> article1() {
  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Kouhai-Dev');
  articleModel.setPenulis('Jurnal KOUHAI');
  articleModel.setImg('assets/images/dummy/0.jpg');
  articleModel.setGenre(1);

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
