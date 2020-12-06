import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madicc/models/articlemodel.dart';
import 'package:madicc/pages/pages.dart';
import 'package:provider/provider.dart';
import 'package:madicc/data.dart';
import '../theme.dart';

class Beranda extends StatefulWidget {
  Beranda({Key key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedItemIndex = 1;
  List<ArticleModel> assetData = new List<ArticleModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildNavbarItem('Jelajah', 0),
          buildNavbarItem('Beranda', 1),
          buildNavbarItem('Tentang', 2)
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              modeToggle(),
              topText(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    height: 350,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: Articles.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        assetData = Articles[index];
                        return articleCardFull(index, assetData[0].getJudul(),
                            assetData[0].getPenulis());
                      },
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
  /*
  ORIGINAL LISTVIEW
  SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        articleCardFull(),
                      ],
                    ),
                  ),
                ),
                */

  Widget articleCardFull(int index, String title, String penulis) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) => Reader(
                      index: index,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          height: 350,
          width: 318,
          decoration: BoxDecoration(color: Colors.grey),
          child: Center(
            child: Column(
              children: [
                Text('index = $index'),
                Text('judul = $title'),
                Text('penulis = $penulis'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget topText() {
    return Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier notifier, child) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(40, 25, 0, 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hai,',
                    style: TextStyle(
                        fontFamily: 'Moserat',
                        fontSize: 25,
                        color: notifier.darkTheme
                            ? Color(0xFFEC1B34)
                            : Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Kita Punya Sesuatu Untuk Kamu Baca.',
                      style: TextStyle(
                          fontFamily: 'Robot',
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: notifier.darkTheme
                              ? Colors.white
                              : Color(0xFFEC1B34)),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

// BERANTAKAN KAPAL PECAH
  botSheetJelajah() {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text('work in progress'),
      duration: Duration(milliseconds: 300),
    ));
  }

  botSheetTentang() {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text('work in progress'),
    ));
  }

  closeSheet() {}

  Widget modeToggle() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, right: 30.0),
        child: Consumer<ThemeNotifier>(
            builder: (context, ThemeNotifier notifier, child) => IconButton(
                  iconSize: 30,
                  onPressed: () {
                    notifier.toggleTheme();
                  },
                  icon: notifier.darkTheme
                      ? Icon(EvaIcons.sun)
                      : Icon(
                          EvaIcons.moonOutline,
                          color: Colors.black,
                        ),
                )),
      ),
    );
  }

  Widget buildNavbarItem(String title, int index) {
    Duration animationDuration = Duration(milliseconds: 300);
    bool isActive = index == _selectedItemIndex;
    double _circleSize = isActive ? 10 : 0;
    double _paddingSize = isActive ? 11 : 0;
    double _paddingSize2 = isActive ? 0 : 8;
    Color darkModeColor = isActive ? Colors.white : Color(0xFF909090);
    Color lightModeColor = isActive ? Colors.black : Color(0xFF909090);

    return Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedItemIndex = index;
            _circleSize = _circleSize;
          });
          if (index == 0)
            botSheetJelajah();
          else if (index == 2) botSheetTentang();
        },
        child: Container(
          color: Colors.transparent,
          height: 60,
          width: MediaQuery.of(context).size.width / 4,
          child: Column(
            children: [
              AnimatedPadding(
                duration: animationDuration,
                padding: EdgeInsets.only(top: _paddingSize2),
                child: Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'Moserat',
                      color:
                          notifier.darkTheme ? darkModeColor : lightModeColor,
                      fontWeight:
                          isActive ? FontWeight.w600 : FontWeight.normal),
                ),
              ),
              AnimatedPadding(
                duration: animationDuration,
                padding: EdgeInsets.only(top: _paddingSize),
                child: AnimatedContainer(
                  duration: animationDuration,
                  height: _circleSize,
                  width: _circleSize,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFE77817)),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
