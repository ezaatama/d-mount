import 'package:d_mount/theme.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

final String name;
CategoryCard(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        width: 170,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(name, style: blueCaption.copyWith(
                fontWeight: bold
              ))
            ],
          ),
        ),
      ),
    );
  }
}