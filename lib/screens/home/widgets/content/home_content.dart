import 'package:flutter/material.dart';

import '/path.dart';

// body nya kita bungkus pake safe area dulu biar ga kepotong sama notch (khusus ios kalo di android itu system appbar nya yang bagian atas)
// didalam safe area kita buat row, row itu widget yang bisa ngeletakkan widget lain secara horizontal
// didalam row kita buat 2 expanded, expanded itu widget yang bisa ngeletakkan widget lain secara horizontal dan mengisi sisa ruang yang ada
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        children: [
          // didalam row terdapat 2 expanded
          // expanded pertama kita buat section kiri
          // section kiri nya kita buat custom scroll view + sliver grid untuk tempat menu
          // expanded kedua kita buat section kanan
          // section kanan tempat untuk add customer dan dine in nya
          HomeBodySectionKiri(),
          SizedBox(width: 10),
          HomeBodySectionKanan(),
        ],
      ),
    );
  }
}
