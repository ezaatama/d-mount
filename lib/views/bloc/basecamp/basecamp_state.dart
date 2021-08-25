part of 'basecamp_bloc.dart';

abstract class BasecampState extends Equatable {
  const BasecampState();
  
  @override
  List<Object> get props => [];
}

class BasecampInitial extends BasecampState {}

class BasecampPageLoaded extends BasecampState{
  BasecampData basecampData;

  BasecampPageLoaded({required this.basecampData});
}