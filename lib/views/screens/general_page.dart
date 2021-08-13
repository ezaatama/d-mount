import 'package:flutter/material.dart';

import '../../theme.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final Widget child;
  final Color colorBackogrund;

  GeneralPage(
      {required this.title,
      required this.child,
      required this.colorBackogrund});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBackogrund,
        title: Text(title),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: backgroundColor),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  child: Text(
                "Menu",
                style: whiteTitle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              )),
              Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                  ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Daftar Gunung"),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/daftar-gunung'),
                    ),
                    ListTile(
                      title: Text("Info Basecamp"),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/info-basecamp'),
                    ),
                    ListTile(
                      title: Text("Alat Pendakian"),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/alat-pendakian'),
                    ),
                    ListTile(
                      title: Text("Panduan Mendaki"),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/panduan-mendaki'),
                    ),
                    ListTile(
                      title: Text("Tentang D'Mount"),
                      onTap: () => Navigator.of(context).pushNamed('/tentang'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 23, left: 30, right: 30),
        child: child,
      )
    );
  }
}
