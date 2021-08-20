import 'package:d_mount/theme.dart';
import '/views/card/list_gunung_page.dart';
import '/views/widgets/cate_gunung.dart';

import '/views/widgets/back_appbar.dart';
import 'package:flutter/material.dart';

class DaftarGunung extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PopAppBar(
      title: "Daftar Gunung",
      child: Container(
        color: primaryColor,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CategoryGunung()
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 15, 8.0, 0),
                  child: ListGunung(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}