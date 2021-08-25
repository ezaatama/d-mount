import 'package:d_mount/theme.dart';
import 'package:d_mount/views/models/basecamp_model.dart';
import 'package:d_mount/views/widgets/back_appbar.dart';
import 'package:flutter/material.dart';

class DetailBasecamp extends StatefulWidget {
const DetailBasecamp({ Key? key, required this.basecampItem }) : super(key: key);

  final BasecampItem basecampItem;

  @override
  _DetailBasecampState createState() => _DetailBasecampState();
}

class _DetailBasecampState extends State<DetailBasecamp> {

List<BasecampItem> basecampItems = [];

  @override
  Widget build(BuildContext context) {
    return PopAppBar(
      title: 'Detail Basecamp',
      child: Container(
        color: primaryColor,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 25, 8.0, 0),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.basecampItem.title,
                                  style: blackTitle.copyWith(
                                    fontSize: 20, fontWeight: bold
                                  ),
                                ),
                                Text(
                                  widget.basecampItem.description,
                                  style: blackTitle.copyWith(
                                    fontSize: 12, fontWeight: medium
                                  ),
                                  textAlign: TextAlign.justify
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  widget.basecampItem.sk,
                                  style: blackTitle.copyWith(
                                    fontSize: 20, fontWeight: bold
                                  ),
                                ),
                                Text(
                                  widget.basecampItem.descSk,
                                  style: blackTitle.copyWith(
                                    fontSize: 12, fontWeight: medium
                                  ),
                                  textAlign: TextAlign.justify
                                ),
                              ],
                            )
                          )
                        ],
                      )
                    ],
                  ),
                )
              )
            )
          ],
        ),
      ),
    );
  }
}