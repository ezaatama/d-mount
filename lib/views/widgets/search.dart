import 'package:flutter/material.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff2D2928)
                          )
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search'
                        )
                      ),
    );
  }
}