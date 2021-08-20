
import 'package:d_mount/views/models/gunung_model.dart';
import '/views/widgets/back_appbar.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class DetailGunung extends StatefulWidget {
  const DetailGunung({ Key? key, required this.mountainItem }) : super(key: key);

  final MountainItem mountainItem;

  @override
  _DetailGunungState createState() => _DetailGunungState();
}

class _DetailGunungState extends State<DetailGunung> {

  List<MountainItem> mountainItem = [];

  @override
  Widget build(BuildContext context) {
    return PopAppBar(
      title: 'Detail Gunung',
      child: Container(
        color: primaryColor,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 15, 8.0, 0),
                    child: ListView(
                      children: [
                        Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      widget.mountainItem.imageUrl,
                                      fit: BoxFit.cover,
                                      width: 330,
                                    )),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.mountainItem.title,
                                      style: blackTitle.copyWith(
                                          fontSize: 20, fontWeight: bold),
                                    ),
                                    Text(
                                      widget.mountainItem.description,
                                      style: blackTitle.copyWith(
                                          fontSize: 14, fontWeight: medium),
                                          textAlign: TextAlign.justify,
                                    ),
                                      SizedBox(height: 15,),
                                      Text(
                                        widget.mountainItem.location,
                                        style: blackTitle.copyWith(
                                            fontSize: 20, fontWeight: bold),
                                      ),
                                      Text(
                                        widget.mountainItem.descLocation,
                                        style: blackTitle.copyWith(
                                            fontSize: 14, fontWeight: medium),
                                            textAlign: TextAlign.justify,
                                      ),
                                        SizedBox(height: 15,),
                                        Text(
                                          widget.mountainItem.simaksi,
                                          style: blackTitle.copyWith(
                                              fontSize: 20, fontWeight: bold),
                                        ),
                                        Text(
                                          widget.mountainItem.descSimaksi,
                                          style: blackTitle.copyWith(
                                              fontSize: 14, fontWeight: medium),
                                              textAlign: TextAlign.justify,
                                        ),
                                          SizedBox(height: 15,),
                                          Text(
                                            widget.mountainItem.jalur,
                                            style: blackTitle.copyWith(
                                                fontSize: 20, fontWeight: bold),
                                          ),
                                          Text(
                                            widget.mountainItem.descJalur,
                                            style: blackTitle.copyWith(
                                                fontSize: 14, fontWeight: medium),
                                                textAlign: TextAlign.justify,
                                          ),
                                  ],
                                ),
                              ),
                              
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            
            ],
          ),
      ),
    );
  }
}