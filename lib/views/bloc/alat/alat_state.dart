part of 'alat_bloc.dart';

abstract class AlatState extends Equatable {
  const AlatState();

  @override
  List<Object> get props => [];
}

class AlatInitial extends AlatState{}

class AlatLoading extends AlatState {}

class AlatLoaded extends AlatState {
  final List<AlatMendaki> alats;

  AlatLoaded({required this.alats});

  @override
  List<Object> get props => [];
}

class AlatError extends AlatState{
  final error;
  AlatError({this.error});
}