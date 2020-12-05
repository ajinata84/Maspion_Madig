class ArticleModel {
  
  String judul;
  String penulis;

  ArticleModel({this.judul, this.penulis});

  void setJudul(String a) {
    judul = a;
  }

  void setPenulis(String a) {
    penulis = a;
  }

  String getJudul() {
    return judul;
  }

  String getPenulis() {
    return penulis;
  }
}
