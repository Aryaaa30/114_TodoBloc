part of 'todo_bloc.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}

final class TodoLoaded extends TodoState {
  final DateTime? selectedDate;

  TodoLoaded({this.selectedDate});
}
