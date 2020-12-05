import 'package:madicc/models/articlemodel.dart';

List Articles = [
  article1(),

  ];

List<ArticleModel> article1() {

  List<ArticleModel> articleData = new List<ArticleModel>();
  ArticleModel articleModel = new ArticleModel();

  articleModel.setJudul('Kouhai-Dev');
  articleModel.setPenulis('Jurnal KOUHAI');

  articleData.add(articleModel);
  articleModel = new ArticleModel();

  return articleData;
}