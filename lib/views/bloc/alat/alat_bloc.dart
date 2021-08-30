import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:d_mount/views/repository/exception/exception.dart';
import '/views/models/alat_model.dart';
import '/views/repository/data_alat_repo.dart';
import 'package:equatable/equatable.dart';

part 'alat_event.dart';
part 'alat_state.dart';

class AlatBloc extends Bloc<AlatEvent, AlatState> {
  final AlatRepo alatsRepo;
  late List<AlatMendaki> alats;

  AlatBloc({required this.alatsRepo}) : super(AlatInitial());

  @override
  Stream<AlatState> mapEventToState(
    AlatEvent event,
  ) async* {
    switch (event) {
      case AlatEvent.fetchAlat:
        yield AlatLoading();
        try {
          alats = await alatsRepo.getAlatList();
          yield AlatLoaded(alats: alats);
        } on SocketException{
          yield AlatError(error: NoInternetException('No Internet'));
        } on HttpException{
          yield AlatError(error: NoServiceFoundException('No Service Found'));
        } on FormatException {
          yield AlatError(error: InvalidFormatException('Invalid Response Format'));
        }
        catch (e) {
          yield AlatError(error: UnknownException('Unknown Error'));
        }
        break;
    }
  }
}
