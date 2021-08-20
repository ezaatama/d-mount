import 'package:equatable/equatable.dart';

class SlideObject extends Equatable{
  final String imageUrl;

  SlideObject({
    required this.imageUrl
  });

  @override
  List<Object?> get props => [imageUrl];

  static List<SlideObject> slideItem = [
    SlideObject(
      imageUrl:'assets/images/slide1.jpg',
    ),
    SlideObject(
      imageUrl:'assets/images/slide2.jpg',
    ),
    SlideObject(
      imageUrl:'assets/images/slide3.jpg',
    ),
    SlideObject(
      imageUrl:'assets/images/slide4.jpg',
    ),
    SlideObject(
      imageUrl:'assets/images/slide5.jpg',
    ),
    SlideObject(
      imageUrl:'assets/images/slide6.jpg',
    ),
    SlideObject(
      imageUrl:'assets/images/slide7.jpg',
    ),
  ];

 
}