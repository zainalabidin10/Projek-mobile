import 'package:flutter/material.dart';
import 'package:project_madbuah/home/splash_screen.dart';
import 'package:project_madbuah/page/category.dart';
import 'package:project_madbuah/page/orderlist_page.dart';
import 'package:project_madbuah/page/main_homepage.dart';
import 'package:project_madbuah/home/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_madbuah/page/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Madbuah',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
    );
  }
}
