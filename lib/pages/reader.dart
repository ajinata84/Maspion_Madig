import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:madicc/models/articlemodel.dart';
import 'package:madicc/widgets/articlewidgets.dart';
import 'package:provider/provider.dart';

import '../data.dart';
import '../theme.dart';

class Reader extends StatefulWidget {
  var index;
  Reader({this.index});

  @override
  _ReaderState createState() => _ReaderState();
}

class _ReaderState extends State<Reader> {
  List<ArticleModel> assetData = new List<ArticleModel>();

  @override
  @override
  void initState() {
    super.initState();
    assetData = Articles[widget.index];
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        appBar(context),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding( 
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: [
                buildFullImage('assets/images/dummy/0.jpg',context),
                buildText('Kouhai dev terinspirasi dari kalimat jepang  “こうはい” yang dibaca “kouhai” yang memiliki arti junior menggambarkan kita sebagai anak SMK yang baru masuk ke jenjang kejuruan, sedangkan “DEV” merupakan singkatan kalimat “Development” yang berarti  pengembang menunjukkan bahwa kita sebagai kelompok yang akan mengembangkan inovasi dan teknologi untuk menunjang kehidupan sehari-hari.',context),
                buildTextHighlight('Kelompok kami beranggotakan 4 orang, setiap anggota memiliki keahlian masing masing, UI/UX Designers, Developer, IDEA Creator dengan begitu kita bekerja sama dengan keahlian kita untuk menciptakan inovasi teknologi yang bermanfaat, selain itu anggota kelompok kita berasal dari berbagai daerah, ada yang dari Malang, Tulungagung, Kertosono dan Kediri. Mereka juga memiliki cerita masing masing yang membuat mereka bekerjasama untuk membentuk kelompok ini.',context),
                buildTextHighlight('TEKS DAN GAMBAR DIATAS HANYALAH UNTUK TES', context)
              ],
            ),
          ),
        )
      ]),
    ));
  }

  Widget appBar(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
      return Container(
        height: 80,
        decoration: BoxDecoration(
            color: notifier.darkTheme ? Color(0xFF1F1F1F) : Color(0xFFF3F3F3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  EvaIcons.closeOutline,
                  color: notifier.darkTheme ? Colors.white : Colors.black,
                  size: 30,
                )),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  assetData[0].getJudul(),
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Moserat',
                      color: notifier.darkTheme
                          ? Colors.white
                          : Color(0xFFEC1B34)),
                ),
                Row(
                  children: [
                    Text(
                      'Penulis ',
                      style: TextStyle(fontFamily: 'Moserat'),
                    ),
                    Text(
                      assetData[0].getPenulis(),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Moserat',
                          color: notifier.darkTheme
                              ? Color(0xFFEC1B34)
                              : Colors.black),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  EvaIcons.share,
                  color: notifier.darkTheme ? Colors.white : Colors.black,
                  size: 25,
                )),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      );
    });
  }
}
