import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'package:fs01_day02_01/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: AppColors.backgroundDark,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,

      home: const HomePage(), //const AllWidgets(),
    );
  }
}
