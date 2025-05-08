part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

final class SelectDateEvent extends TodoEvent {
  final DateTime selectedDate;

  SelectDateEvent({required this.selectedDate});
}
