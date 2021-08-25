import 'package:d_mount/theme.dart';
import 'package:d_mount/views/models/basecamp_model.dart';
import 'package:d_mount/views/screens/detail_basecamp.dart';

import '/views/bloc/basecamp/basecamp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListBasecamp extends StatefulWidget {
  @override
  _ListBasecampState createState() => _ListBasecampState();
}

class _ListBasecampState extends State<ListBasecamp> {
  List<BasecampItem> basecampItems = [];
  bool loadingData = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BasecampBloc, BasecampState>(
      listener: (context, state) {
        if (state is BasecampInitial) {
          loadingData = true;
        }
        if (state is BasecampPageLoaded) {
          loadingData = false;
          basecampItems = state.basecampData.basecampItems;
        }
      },
      child: BlocBuilder<BasecampBloc, BasecampState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: basecampItems.length,
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text(
                    basecampItems[index].title,
                    style: blackTitle.copyWith(fontWeight: semiBold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => BlocProvider.value(
                                value: BlocProvider.of<BasecampBloc>(context),
                                child: DetailBasecamp(
                                    basecampItem: basecampItems[index]))));
                  },
                );
              });
        },
      ),
    );
  }
}
