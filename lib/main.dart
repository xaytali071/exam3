import 'package:exam3/components/showmodalB.dart';
import 'package:exam3/downloadPage.dart';
import 'package:exam3/historyPage.dart';
import 'package:exam3/libraryPage.dart';
import 'package:exam3/pages/home_page.dart';
import 'package:exam3/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:exam3/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            home: HomePage(),
          );
        });
  }
}
