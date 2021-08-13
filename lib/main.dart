import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './views/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (ctx) => SplashScreen(),
        
      }
    );
  }
}