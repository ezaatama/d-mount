import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:d_mount/views/models/gunung_model.dart';
import 'package:d_mount/views/repository/data_gunung_repo.dart';
import 'package:equatable/equatable.dart';

part 'gunung_event.dart';
part 'gunung_state.dart';

class GunungBloc extends Bloc<GunungEvent, GunungState> {
  GunungDataRepo gunungDataRepo = GunungDataRepo();
  GunungBloc() : super(GunungInitial()){
    add(GunungPageInitializedEvent());
  }

  @override
  Stream<GunungState> mapEventToState(
    GunungEvent event,
  ) async* {
    if(event is GunungPageInitializedEvent){
      MountainData mountainData = await gunungDataRepo.getMountainItems();
      yield GunungPageLoadedState(mountainData: mountainData);
    }
  }
}
