import 'package:flutter/material.dart';

import '../../theme.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final Widget child;

  GeneralPage({required this.title, required this.child});

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: SafeArea(
          child: Drawer(
              child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)))),
              Container(
                margin: const EdgeInsets.only(left: 35, top: 35),
                child: Text(
                  "Menu",
                  style: whiteTitle.copyWith(fontSize: 30, fontWeight: bold),
                ),
              ),
            ],
          ),
          Container(
                margin: const EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Daftar Gunung",
                        style: blueCaption.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/daftar-gunung'),
                    ),
                    ListTile(
                      title: Text(
                        "Info Basecamp",
                        style: blueCaption.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/info-basecamp'),
                    ),
                    ListTile(
                      title: Text(
                        "Alat Pendakian",
                        style: blueCaption.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/alat-pendakian'),
                    ),
                    ListTile(
                      title: Text(
                        "Panduan Mendaki",
                        style: blueCaption.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/panduan-mendaki'),
                    ),
                    ListTile(
                      title: Text(
                        "Tentang D'Mount",
                        style: blueCaption.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      onTap: () => Navigator.of(context).pushNamed('/tentang'),
                    ),
                  ],
                ),
              ),
        ],
      ))),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.notes_rounded,
            color: darkColor,
            size: 30,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          title,
          style: darkCaption.copyWith(fontSize: 30, fontWeight: bold),
        ),
      ),
      body: child,
    );
  }
}
