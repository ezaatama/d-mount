import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:d_mount/views/models/basecamp_model.dart';
import 'package:d_mount/views/repository/data_basecamp_repo.dart';
import 'package:equatable/equatable.dart';

part 'basecamp_event.dart';
part 'basecamp_state.dart';

class BasecampBloc extends Bloc<BasecampEvent, BasecampState> {
  BasecampDataRepo basecampDataRepo = BasecampDataRepo(); 
  BasecampBloc() : super(BasecampInitial()){
    add(BasecampEvenetPageInitialized());
  }

  @override
  Stream<BasecampState> mapEventToState(
    BasecampEvent event,
  ) async* {
    if(event is BasecampEvenetPageInitialized){
      BasecampData basecampData = await basecampDataRepo.getBasecampItems();
      yield BasecampPageLoaded(basecampData: basecampData);
    }
  }
}
