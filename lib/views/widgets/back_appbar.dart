import 'package:flutter/material.dart';

import '../../theme.dart';

class PopAppBar extends StatelessWidget {

final String title;
final Widget child;

PopAppBar({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(title,
          style: whiteTitle.copyWith(
            fontSize: 25,
            fontWeight: bold
          ),
        ),
      ),
      body: child
    );
  }
}