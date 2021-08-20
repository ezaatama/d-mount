import 'package:d_mount/theme.dart';
import '/views/bloc/gunung_bloc.dart';
import '/views/models/gunung_model.dart';
import '/views/screens/detail_gunung.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListGunung extends StatefulWidget {
  @override
  _ListGunungState createState() => _ListGunungState();
}

class _ListGunungState extends State<ListGunung> {
  List<MountainItem> mountainItems = [];
  bool loadingData = true;
  @override
  Widget build(context) {
    return BlocListener<GunungBloc, GunungState>(
      listener: (context, state) {
        if (state is GunungInitial) {
          loadingData = true;
        }
        if (state is GunungPageLoadedState) {
          mountainItems = state.mountainData.mountainItems;
          loadingData = false;
        }
      },
      child: BlocBuilder<GunungBloc, GunungState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(children: [
              ListView.builder(
                  itemCount: mountainItems.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return Center(
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    mountainItems[index].imageUrl,
                                    fit: BoxFit.cover,
                                    width: 330,
                                    height: 145,
                                  )),
                            ),
                            Positioned(
                                top: 10,
                                right: 0,
                                child: Container(
                                  width: 130,
                                  height: 145,
                                  decoration: BoxDecoration(
                                      color: creamColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(60),
                                        topRight: Radius.circular(40),
                                        bottomLeft: Radius.circular(60),
                                        bottomRight: Radius.circular(40),
                                      )),
                                )),
                            Positioned(
                                top: 50,
                                right: 20,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        mountainItems[index].title,
                                        style: blackTitle.copyWith(
                                            fontSize: 12, fontWeight: bold),
                                      )
                                    ],
                                  ),
                                )),
                            Positioned(
                                top: 70,
                                right: 50,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        mountainItems[index].subTitle,
                                        style: blackTitle.copyWith(
                                            fontSize: 12, fontWeight: bold),
                                      )
                                    ],
                                  ),
                                )),
                            Positioned(
                                top: 90,
                                right: 10,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => BlocProvider.value(
                                                  value: BlocProvider.of<
                                                      GunungBloc>(context),
                                                  child: DetailGunung(
                                                    mountainItem:
                                                        mountainItems[index],
                                                  ),
                                                )));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: backgroundColor),
                                  child: Text(
                                    "Info Gunung",
                                    style: whiteTitle.copyWith(fontSize: 12),
                                  ),
                                ))
                          ],
                        ),
                     
                    );
                  })
            ]),
          );
        },
      ),
    );
  }
}
