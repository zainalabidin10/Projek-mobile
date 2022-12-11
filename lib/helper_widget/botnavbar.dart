import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_madbuah/page/category.dart';
import 'package:project_madbuah/page/dashboard_page.dart';
import 'package:project_madbuah/page/order_page.dart';
import 'package:project_madbuah/page/profile_page.dart';
import 'package:project_madbuah/page/Cart_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  int _currentIndex = 0;

  List<Widget> _widgetOption = <Widget>[
    DashboardPage(),
    OrderPage(),
    CartPage(),
    CategoryPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Pesanan'),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: 'Keranjang'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Kategori'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xffF5591F),
        unselectedItemColor: Colors.grey,
        onTap: _changeItem,
      ),
    );
  }
  void _changeItem(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }
}