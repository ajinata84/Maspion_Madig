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
                buildText('Maspion merupakan salah satu produk yang cukup legendaris di Indonesia. Orang-orang Indonesia akan selalu teringat dengan iklan seorang laki-laki blasteran Tionghoa-Indonesia, bernama Alim Markus, bersama artis Titiek Puspa dengan jargonnya: “Cintailah produk-produknya Indonesia.” Tak hanya Titie Puspa saja yang diajak menjadi bintang iklan Maspion, menurut buku 60 Tahun Jimly Asshiddiqie: Sosok, Kiprah dan Pemikiran (2016), mantan Ketua Mahkamah Konstitusi Jimly Asshiddiqie juga pernah ditawari membintangi iklan tersebut. Karena role modelnya adalah Titiek Puspa, Jimly pun tak keberatan untuk bilang: “Cintailah produk-produknya Indonesia.”',context),
                buildTextHighlight('Tidak ada yang salah dengan ucapan itu, karena memang produk-produk Maspion diproduksi di Indonesia. Sejarah Maspion, boleh dibilang termasuk juga sejarah industri Indonesia. Seperti juga sejarah industri milik Gobel Panasonic, meski kalah tua.',context)
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
