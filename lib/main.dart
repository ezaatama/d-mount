import 'package:d_mount/views/bloc/basecamp/basecamp_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/views/screens/daftar_gunung.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './views/screens/splash_screen.dart';
import './views/screens/homepage.dart';
import 'views/bloc/gunung/gunung_bloc.dart';
import 'views/screens/daftar_basecamp.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => GunungBloc(),
        ),
        BlocProvider(create: (BuildContext context) => BasecampBloc(),
        )
      ], 
      child: MaterialApp(debugShowCheckedModeBanner: false, routes: {
        '/': (_) => SplashScreen(),
        '/homepage': (_) => Homepage(),
        '/daftar-gunung': (_) => DaftarGunung(),
        '/daftar-basecamp': (_) => DaftarBasecamp(),
      }
      ),
    );
  }
}