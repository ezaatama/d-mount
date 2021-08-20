import 'package:d_mount/views/bloc/gunung_bloc.dart';
import 'package:d_mount/views/card/list_gunung_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/views/screens/daftar_gunung.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './views/screens/splash_screen.dart';
import './views/screens/homepage.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GunungBloc(),
      child: MaterialApp(debugShowCheckedModeBanner: false, routes: {
        '/': (_) => SplashScreen(),
        '/homepage': (_) => Homepage(),
        '/daftar-gunung': (_) => DaftarGunung(),
      }),
    );
  }
}
