import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_madbuah/home/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, loginRoute);
  }

  loginRoute(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage()
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF5591F),
              gradient: LinearGradient(
                colors: [(Color(0xffF5591F)), (Color(0xffF2861E))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
              "assets/Madbuah.png",
              width: 250,
              height: 250,
              ),
            ),
          )
        ],
      ),
    );
  }
}
