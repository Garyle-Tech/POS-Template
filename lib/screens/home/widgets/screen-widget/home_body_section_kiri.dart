import 'package:flutter/material.dart';

import '/path.dart';

class HomeBodySectionKiri extends StatelessWidget {
  const HomeBodySectionKiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // create sliver list grid
      // sliver itu widget yang bisa ngeletakkan widget lain secara horizontal maupun vertikal
      // penggunaan sliver list grid disini karena kita ingin membuat grid yang bisa di scroll
      // dalam membuat sliver list kita butuh custom scroll view
      // widget sliver punya keunggulan lebih diatas list view, salah satunya adalah performa seperti lazy load, dll
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // melakukan return custom card item dengan parameter image, title, initial thumbnail, dan context sesuai dengan index
                return CustomCardItem(
                  image: allItems[index]['image'],
                  title: allItems[index]['title'].toString(),
                  initialThumbnail: allItems[index]['initalThumbnail'],
                  context: context,
                );
              },

              // child count nya diambil dari panjang dari allItems
              childCount: allItems.length,
            ),
          ),
        ],
      ),
    );
  }
}
