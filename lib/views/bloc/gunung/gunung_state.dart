part of 'gunung_bloc.dart';

abstract class GunungState extends Equatable {
  const GunungState();
  
  @override
  List<Object> get props => [];
}

class GunungInitial extends GunungState {
}

class GunungPageLoadedState extends GunungState{
  MountainData mountainData;

  GunungPageLoadedState({required this.mountainData});
}