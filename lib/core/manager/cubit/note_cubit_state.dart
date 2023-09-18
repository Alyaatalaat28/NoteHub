part of 'note_cubit_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

final class NoteCubitInsertSuccessState extends NoteCubitState {}

final class  NoteCubitInsertErrorState extends NoteCubitState {
  final String error;
  NoteCubitInsertErrorState(this.error);
}
