import 'package:carousel_slider/carousel_slider.dart';
import '/views/slider/slider_model.dart';
import 'package:flutter/material.dart';

class CarouselSlide extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 8/5,
          viewportFraction: 1,
          enlargeCenterPage: true,
          autoPlay: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: 
          SlideObject.slideItem
          .map((slideObject) => CarouselItem(slideObject: slideObject))
          .toList(),
        
      ),
    );
  }
}


class CarouselItem extends StatelessWidget {

  final SlideObject slideObject;

  CarouselItem({
    required this.slideObject
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children:[
            Image.asset(slideObject.imageUrl,
              fit: BoxFit.cover,
              width: 1000.0,
            )
          ]
        )
      ),
    );
  }
}
