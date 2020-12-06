import 'package:flutter/material.dart';
import 'package:madicc/theme.dart';
import 'package:provider/provider.dart';
import 'pages/pages.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(
            theme: notifier.darkTheme ? dark : light,
            home: Beranda(),
          );
        },
      ),
    );
  }
}
