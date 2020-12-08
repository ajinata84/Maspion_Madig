import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:madicc/models/articlemodel.dart';
import 'package:madicc/widgets/articlewidgets.dart';
import 'package:provider/provider.dart';

import '../data.dart';
import '../theme.dart';

class Reader extends StatefulWidget {
  var index;
  var scrWidth;
  Reader({this.index, this.scrWidth});

  @override
  _ReaderState createState() => _ReaderState();
}

class _ReaderState extends State<Reader> {
  PageController _pageController;

  int pageIndex = 1;
  List<ArticleModel> assetData = new List<ArticleModel>();

  @override
  @override
  void initState() {
    super.initState();
    assetData = Articles[widget.index];
    _pageController = PageController(initialPage: 0);
  }

  Widget build(BuildContext context) {
    return GestureDetector(
        child: Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Column(children: [
            appBar(context),
            SizedBox(
              height: MediaQuery.of(context).size.height - 150,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: assetData.length,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index + 1;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20),
                        child: Container(child: assetData[index].getContent())),
                  );
                },
              ),
            ),
          ])),
        ],
      ),
    ));
  }

  Widget appBar(BuildContext context) {
    double progressWidth = MediaQuery.of(context).size.width / assetData.length * pageIndex + 1;
    return Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
      return Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                color:
                    notifier.darkTheme ? Color(0xFF1F1F1F) : Color(0xFFF3F3F3)),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        assetData[0].getJudul(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Moserat',
                            color: notifier.darkTheme
                                ? Colors.white
                                : Color(0xFFEC1B34)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Text(
                            'Penulis ',
                            style:
                                TextStyle(fontFamily: 'Moserat', fontSize: 11),
                          ),
                          Text(
                            assetData[0].getPenulis(),
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                                fontFamily: 'Moserat',
                                color: notifier.darkTheme
                                    ? Color(0xFFEC1B34)
                                    : Colors.black),
                          ),
                        ],
                      ),
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
          ),
          Align(
            alignment: Alignment.topLeft,
            child: AnimatedContainer(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(2),
                        bottomRight: Radius.circular(2)),
                    color: Color(0xFFE77817)),
                height: 5,
                width: progressWidth,
                duration: Duration(milliseconds: 500)),
          )
        ],
      );
    });
  }
}
