import 'package:flutter/material.dart';
import 'package:pos_template_garmen/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POS Garmen Tablet',
      home: HomeScreen(),
    );
  }
}
