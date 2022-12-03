import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_madbuah/page/main_homepage.dart';
import 'package:project_madbuah/page/mainpage.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with SingleTickerProviderStateMixin{
  late TabController controller;

  @override
  
  void initState(){
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
         title: Text("Pesanan "),
           bottom: TabBar(
             controller: controller,
             tabs: <Widget>[
              new Tab(icon: new Icon(Icons.done),text: "Diproses",),
              new Tab(icon: new Icon(Icons.done),text: "Selesai",),
               
             ],
          ),
      ),
    );  
  }
}
