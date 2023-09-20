part of 'note_cubit_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

// insert
final class NoteCubitInsertLoadingState extends NoteCubitState {}

final class NoteCubitInsertSuccessState extends NoteCubitState {
  final int response;
  NoteCubitInsertSuccessState(this.response);
}

final class  NoteCubitInsertErrorState extends NoteCubitState {
  final String error;
  NoteCubitInsertErrorState(this.error);
}

//delete
final class NoteCubitDeleteLoadingState extends NoteCubitState {}

final class NoteCubitDeleteSuccessState extends NoteCubitState {
    final int response;
  NoteCubitDeleteSuccessState(this.response);
}

final class  NoteCubitDeleteErrorState extends NoteCubitState {
  final String error;
  NoteCubitDeleteErrorState(this.error);
}

//read
final class NoteCubitReadLoadingState extends NoteCubitState {}

final class NoteCubitReadDataSuccessState extends NoteCubitState {
      final List<Map> response;
  NoteCubitReadDataSuccessState(this.response);
}

final class  NoteCubitReadDataErrorState extends NoteCubitState {
  final String error;
  NoteCubitReadDataErrorState(this.error);
}

//update
final class NoteCubitUpdateLoadingState extends NoteCubitState {}

final class NoteCubitUpdateSuccessState extends NoteCubitState {
   final int response;
  NoteCubitUpdateSuccessState(this.response);
}

final class  NoteCubitUpdateErrorState extends NoteCubitState {
  final String error;
  NoteCubitUpdateErrorState(this.error);
}

// app mode
final class ChangeAppModeState extends NoteCubitState {}

// app language
final class ChangeAppLocalState extends NoteCubitState {}



