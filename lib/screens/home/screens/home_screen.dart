import 'package:flutter/material.dart';

import '/path.dart';

// Layout untuk home screen nya berarti terdiri dari row dan bottom navbar
// pertama buat scaffold dulu, scaffold itu induk dari semua widget
// didalam scaffold terdapat bottom navbar jadi kita buat bottom navbar dulu
// setelah bottom navbar kita buat body nya
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ini tempat home body nya
      body: const HomeBody(),

      // ini bottom navbar nya
      // berisikan 3 item yaitu home, cart, dan profile
      // ini bisa di custom lagi dengan mengganti icon dan label nya tau menambah item navbar baru
      // items parameter di bottom navigation bar itu bertipe list, jadi bisa di input lebih dari 1
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
