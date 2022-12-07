import 'package:flutter/material.dart';
import 'package:project_madbuah/helper_widget/botnavbar.dart';
import 'package:project_madbuah/home/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Navbar();
                },
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "w.jpeg",
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Kristopher',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'kristopherbeethoven24@gmail.com',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
              height: 10.0,
              ),
              Container(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffF2861E),
                    side: BorderSide.none,
                    shape: StadiumBorder()
                  ),
                    onPressed: () {},
                    child: Text(
                      'Ubah Profil',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          )),
    );
  }
}
