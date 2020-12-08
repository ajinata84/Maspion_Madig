import 'package:flutter/material.dart';

class ArticleModel {
  String judul;
  String penulis;
  String preview;
  String imgPath;
  Widget articleContent;
  int genreIndex;

  ArticleModel({this.judul, this.penulis});

  void setJudul(String a) {
    judul = a;
  }

  void setPreview(String a) {
    preview = a;
  }

  void setGenre(int a) {
    genreIndex = a;
  }

  void setPenulis(String a) {
    penulis = a;
  }
  void setImg(String a) {
    imgPath = a;
  }

  String getImg() {
    return imgPath;
  }

  String getJudul() {
    return judul;
  }

  String getPenulis() {
    return penulis;
  }

  String getPreview() {
    return preview;
  }

  int getGenre() {
    return genreIndex;
  }

  void setContent(Widget a){
    articleContent = a;
  }
  Widget getContent(){
    return articleContent;
  }
}
