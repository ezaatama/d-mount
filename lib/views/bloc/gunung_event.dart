part of 'gunung_bloc.dart';

abstract class GunungEvent extends Equatable {
  const GunungEvent();

  @override
  List<Object> get props => [];
}

class GunungPageInitializedEvent extends GunungEvent{
}
