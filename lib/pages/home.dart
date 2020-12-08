import 'dart:math';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  int _selectedGenreIndex = 0;
  List<ArticleModel> assetData = new List<ArticleModel>();
  PageController _pageController;
  int _jelajahItemCount = Articles.length;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildNavbarItem('Jelajah', 2),
          buildNavbarItem('Beranda', 1),
          buildNavbarItem('Tentang', 0)
        ],
      ),
      body: SizedBox.expand(
          child: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            _selectedItemIndex = index;
          });
        },
        children: [
          tentangBody(),
          homeBody(),
          jelajahBody(),
        ],
      )),
    );
  }

  // BERANTAKAN KAPAL PECAH
  // BERANTAKAN KAPAL PECAH
  // BERANTAKAN KAPAL PECAH
  // BERANTAKAN KAPAL PECAH

  Widget tentangBody() {
    return SafeArea(
        child: Center(
      child: Column(
        children: [Text('WORK IN PROGRESS')],
      ),
    ));
  }

  Widget jelajahBody() {
    return Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier notifier, child) {
        return SafeArea(
            child: Center(
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 70,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: _jelajahItemCount,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      if (_selectedGenreIndex == 0) {
                        assetData = Articles[index];

                        return articleCard(index, assetData[0].getJudul(),
                            assetData[0].getPenulis(), assetData[0].getImg(),Articles);
                      }
                      if (_selectedGenreIndex == 1) {
                        assetData = Genre1[index];

                        return articleCard(index, assetData[0].getJudul(),
                            assetData[0].getPenulis(), assetData[0].getImg(),Genre1);
                      }
                      if (_selectedGenreIndex == 2) {
                        assetData = Genre2[index];

                        return articleCard(index, assetData[0].getJudul(),
                            assetData[0].getPenulis(), assetData[0].getImg(),Genre2);
                      }
                      if (_selectedGenreIndex == 3) {
                        assetData = Genre3[index];

                        return articleCard(index, assetData[0].getJudul(),
                            assetData[0].getPenulis(), assetData[0].getImg(),Genre3);
                      }
                      if (_selectedGenreIndex == 4) {
                        assetData = Genre4[index];

                        return articleCard(index, assetData[0].getJudul(),
                            assetData[0].getPenulis(), assetData[0].getImg(),Genre4);
                      }
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: notifier.darkTheme ? Colors.black : Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          genreItem('Semua', 0),
                          genreItem('Maspion IT', 1),
                          genreItem('Kouhai Dev', 2),
                          genreItem('Bank Maspion', 3),
                          genreItem('SMK Telkom Malang', 4),
                          genreItem('Teknologi & Informasi', 5),
                          genreItem('Produk Maspion Grup', 6),
                          genreItem('Iswa Komputer', 7),
                          genreItem('AstroTech', 8),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
      },
    );
  }

  genreItem(String title, int index) {
    bool isActive = index == _selectedGenreIndex;
    Color darkModeColor = isActive ? Color(0xFFEC1A33) : Colors.transparent;
    Color lightModeColor = Colors.transparent;
    Color lightisActive = isActive ? Color(0xFFEC1A33) : Colors.grey;
    Color darkisActive = isActive ? Colors.white : Colors.grey;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedGenreIndex = index;
              print('$_selectedGenreIndex');
              if (_selectedGenreIndex == 0) {
                _jelajahItemCount = Articles.length;
              }
              if (_selectedGenreIndex == 1) {
                _jelajahItemCount = Genre1.length;
              }
              if (_selectedGenreIndex == 2) {
                _jelajahItemCount = Genre2.length;
              }
              if (_selectedGenreIndex == 3) {
                _jelajahItemCount = Genre3.length;
              }
              if (_selectedGenreIndex == 4) {
                _jelajahItemCount = Genre4.length;
              }
              if (_selectedGenreIndex == 5) {
                _jelajahItemCount = Genre5.length;
              }
              if (_selectedGenreIndex == 6) {
                _jelajahItemCount = Genre6.length;
              }
              if (_selectedGenreIndex == 7) {
                _jelajahItemCount = Genre7.length;
              }
              if (_selectedGenreIndex == 8) {
                _jelajahItemCount = Genre8.length;
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: notifier.darkTheme ? darkModeColor : lightModeColor,
                borderRadius: BorderRadius.circular(8),
                border: notifier.darkTheme
                    ? Border.all(
                        color: isActive ? Colors.transparent : Colors.grey)
                    : Border.all(color: lightisActive, width: 2)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Text(
                '$title',
                style: TextStyle(
                    fontFamily: 'Moserat',
                    fontWeight: FontWeight.w500,
                    color: notifier.darkTheme ? darkisActive : lightisActive),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget homeBody() {
    var rng = new Random();
    var rngNumber = rng.nextInt(Articles.length);
    return SafeArea(
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: notifier.darkTheme
                        ? AssetImage('assets/images/background/dark-home.png')
                        : AssetImage('assets/images/background/light-home.png'),
                    fit: BoxFit.fitWidth)),
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
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                assetData =
                                    Articles[rng.nextInt(Articles.length)];
                                return articleCardFull(
                                    rng.nextInt(Articles.length),
                                    assetData[0].getJudul(),
                                    assetData[0].getPenulis(),
                                    assetData[0].getImg(),
                                    assetData[0].getPreview());
                              },
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget articleCardFull(
      int index, String title, String penulis, String imgPath, String preview) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) => Reader(
                      index: index,
                      scrWidth: MediaQuery.of(context).size.width,
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
                            image: DecorationImage(
                                image: AssetImage('$imgPath'),
                                fit: BoxFit.cover),
                            border: Border.all(color: Color(0xFF909090)))
                        : BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('$imgPath'),
                                fit: BoxFit.cover),
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
                    height: 120,
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
                                      '$title',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        fontFamily: 'Moserat',
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          assetData[0].getPenulis(),
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontFamily: 'Moserat'),
                                        ),
                                        Text(' $penulis',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
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
                                children: [],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              '$preview',
                              style: TextStyle(
                                  color: Color(0xFF909090),
                                  fontSize: 12,
                                  fontFamily: 'Moserat'),
                              textAlign: TextAlign.justify,
                              maxLines: 2,
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

  Widget articleCard(int index, String title, String penulis, String imgPath, List genre) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) => Reader(
                      index: index,
                      genre: genre,
                      scrWidth: MediaQuery.of(context).size.width,
                    )));
      },
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: notifier.darkTheme
                        ? BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('$imgPath'),
                                fit: BoxFit.cover),
                            border: Border.all(color: Color(0xFF909090)))
                        : BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('$imgPath'),
                                fit: BoxFit.cover),
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
                    width: MediaQuery.of(context).size.width * 0.8,
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
                                      assetData[0].getJudul(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
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
                                                fontWeight: FontWeight.w700,
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
                            ],
                          ),
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
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 400),
                curve: Curves.decelerate);
          });
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
