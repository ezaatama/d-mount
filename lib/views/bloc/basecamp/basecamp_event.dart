part of 'basecamp_bloc.dart';

abstract class BasecampEvent extends Equatable {
  const BasecampEvent();

  @override
  List<Object> get props => [];
}

class BasecampEvenetPageInitialized extends BasecampEvent{}