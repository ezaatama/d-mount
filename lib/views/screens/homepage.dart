import '/views/slider/grid_category.dart';
import '/views/widgets/search.dart';

import '/views/slider/slider_page.dart';
import 'package:flutter/material.dart';
import './general_page.dart';


import '../../theme.dart';

class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "D'Mount",
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text(
                        "7 Summit Indonesia",
                        style: darkCaption.copyWith(
                          fontSize: 18,
                          fontWeight: bold
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                CarouselSlide(),
                SizedBox(height: 5,),
                    Search(),
                SizedBox(height: 20,),
                GridCategory()
              ],
            ),
          ),
        ),
    );
  }
}