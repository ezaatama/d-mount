import 'package:d_mount/views/card/list_basecamp_page.dart';
import 'package:d_mount/views/widgets/back_appbar.dart';
import 'package:d_mount/views/widgets/search.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class DaftarBasecamp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PopAppBar(
      title: 'Info Basecamp',
      child: Container(
        color: primaryColor,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Search()
              ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 15, 8.0, 0),
                  child: ListBasecamp(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}