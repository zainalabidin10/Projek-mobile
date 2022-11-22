import 'package:flutter/material.dart';
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
      home: ProfilePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Madbuah',
        style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Selamat datang di Madbuah!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 60, right: 60),
              child: Text(
                'Belanja Buah-buahan semakin mudah dengan hadirnya Madbuah sebagai grocery store. Pesan Sekarang di Madbuah!',
                textAlign: TextAlign.center,
              style: TextStyle(
              ),
              ),
            ),
            const SizedBox(
            height: 20.0,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
                elevation: 10.0,
                height: 40,
                onPressed: () {
                  CircularProgressIndicator();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100
                  ),
                ),
                color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
