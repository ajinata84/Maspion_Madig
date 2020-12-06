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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  modeToggle(),
                  topText(),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 0),
                      child: SizedBox(
                        height: 400,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: Articles.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            assetData = Articles[index];
                            return articleCardFull(
                                index,
                                assetData[0].getJudul(),
                                assetData[0].getPenulis());
                          },
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

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
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: Container(
            height: 350,
            width: 318,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 210,
                    decoration: notifier.darkTheme
                        ? BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: Colors.white,
                            border: Border.all(color: Color(0xFF909090)))
                        : BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                  ),
                  Container(
                    height: 140,
                    decoration: notifier.darkTheme
                        ? BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Colors.black,
                            border: Border.all(color: Color(0xFF909090)))
                        : BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 13),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 212,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Raja Industri Rumah Tangga Indonesia',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        fontFamily: 'Moserat',
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Penulis ',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontFamily: 'Moserat'),
                                        ),
                                        Text('$penulis',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Moserat',
                                                fontSize: 11,
                                                color: notifier.darkTheme
                                                    ? Color(0xFFEC1B34)
                                                    : Colors.black))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      print('like');
                                    },
                                    icon: Icon(
                                      EvaIcons.heartOutline,
                                      size: 35,
                                      color: Colors.grey[350],
                                    ),
                                  ),
                                  Text(
                                    'index = $index',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'preview text',
                              style: TextStyle(
                                  color: Color(0xFF909090),
                                  fontSize: 12,
                                  fontFamily: 'Moserat'),
                              textAlign: TextAlign.justify,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget topText() {
    return Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier notifier, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Kita Punya Sesuatu Untuk Kamu Baca.',
                      style: TextStyle(
                          fontFamily: 'Robot',
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
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
      duration: Duration(milliseconds: 300),
    ));
  }

  closeSheet() {}

  Widget modeToggle() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, right: 30.0, bottom: 30.0),
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
                          isActive ? FontWeight.w700 : FontWeight.normal),
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
