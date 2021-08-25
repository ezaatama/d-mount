import 'package:d_mount/theme.dart';
import 'package:flutter/material.dart';

class GridCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            decoration: BoxDecoration(
              color: creamColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/daftar-gunung'),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/icons/mountain.png'), width: 60,),
                    Text("Daftar Gunung",
                      style: darkCaption.copyWith(
                        fontSize: 12,
                        fontWeight: bold
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: creamColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/daftar-basecamp'),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/icons/location.png'), width: 60,),
                    Text("Info Basecamp",
                      style: darkCaption.copyWith(
                        fontSize: 12,
                        fontWeight: bold
                      ),)
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: creamColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/'),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/icons/camping.png'), width: 60,),
                    Text("Alat Pendakian",
                      style: darkCaption.copyWith(
                        fontSize: 12,
                        fontWeight: bold
                      ),)
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: creamColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/'),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/icons/guide-book.png'), width: 60,),
                    Text("Buku Panduan",
                      style: darkCaption.copyWith(
                        fontSize: 12,
                        fontWeight: bold
                      ),)
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: creamColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/'),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/icons/weather.png'), width: 60,),
                    Text("Info Cuaca",
                      style: darkCaption.copyWith(
                        fontSize: 12,
                        fontWeight: bold
                      ),)
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: creamColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/'),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/icons/compass.png'), width: 60,),
                    Text("Kompas",
                      style: darkCaption.copyWith(
                        fontSize: 12,
                        fontWeight: bold
                      ),)
                  ],
                ),
              ),
            ),
          ),
        ],  
      ),
    );
  }
}