import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madicc/theme.dart';
import 'package:provider/provider.dart';

import 'pages/pages.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    transitFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier notifier, child) {
        return Scaffold(
          backgroundColor: notifier.darkTheme ? Colors.black : Colors.white,
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                          image: AssetImage(
                              'assets/images/splashscreen/logosplashx4.png')),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                          image: AssetImage(
                              'assets/images/splashscreen/undersplashx4.png')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  transitFunction() async {
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(
        context, CupertinoPageRoute(builder: (context) => Beranda()));
  }
}
