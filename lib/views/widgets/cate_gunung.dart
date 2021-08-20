import 'package:d_mount/views/card/cate_card.dart';
import 'package:flutter/material.dart';

class CategoryGunung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard('Pulau Jawa'),
          CategoryCard('Pulau Kalimantan'),
          CategoryCard('Pulau Sumatera'),
          CategoryCard('Pulau Sulawesi'),
          CategoryCard('Pulau Bali'),
          CategoryCard('Pulau Nusa Tenggara'),
          CategoryCard('Pulau Papua'),
        ],
      ),
    );
  }
}
