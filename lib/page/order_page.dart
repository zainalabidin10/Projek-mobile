import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_madbuah/helper_widget/botnavbar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan',
        style: TextStyle(
          color: Colors.black
        ),
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
    );
  }
}