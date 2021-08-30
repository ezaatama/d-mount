import 'package:d_mount/theme.dart';
import 'package:d_mount/views/bloc/alat/alat_bloc.dart';
import 'package:d_mount/views/widgets/error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/views/models/alat_model.dart';
import '/views/repository/data_alat_repo.dart';
import '/views/widgets/back_appbar.dart';
import 'package:flutter/material.dart';

class DaftarAlat extends StatefulWidget {
  @override
  _DaftarAlatState createState() => _DaftarAlatState();
}

class _DaftarAlatState extends State<DaftarAlat> {
  // List<AlatMendaki> listAlat = [];
  // DataAlatRepo dataAlatRepo = DataAlatRepo();

  // getData() async{
  //   listAlat = await dataAlatRepo.getData();
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

  @override
  void initState() {
    super.initState();
    _loadAlats();
  }

  _loadAlats() async {
    context.read<AlatBloc>().add(AlatEvent.fetchAlat);
  }

  @override
  Widget build(BuildContext context) {
    return PopAppBar(
      title: 'Alat Pendakian',
      child: Container(
        color: primaryColor,
        child: Column(
          children: [
            BlocBuilder<AlatBloc, AlatState>(
              builder: (context, state) {
                if(state is AlatError){
                  final error = state.error;
                  String message = '${error.message}\nTap to Retry.';
                  return ErrorTxt(
                    message: error.message,
                    onTap: _loadAlats()
                  );
                }
                if(state is AlatLoaded){
                  List<AlatMendaki> alats = state.alats;
                  return _list(alats);
                }
                return _loading();
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _list(List<AlatMendaki> alats){
    return Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 15, 8.0, 0),
                  child: ListView.builder(
                    itemCount: alats.length,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: creamColor,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Image.network(alats[index].imageUrl)
                                    ),
                                    
                                  SizedBox(width: 20,),
                                  Text(alats[index].name,
                                    style: blackTitle.copyWith(
                                      fontSize: 20, fontWeight: bold
                                    ),
                                  )
                                ],
                              ),
                          )
                        ],
                      );
                    }, 
                  )
                    
                ),
              )
            );
  }

  Widget _loading(){
    return Expanded(
      child: Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

}
