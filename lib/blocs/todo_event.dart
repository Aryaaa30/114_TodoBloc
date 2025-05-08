part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

final class TodoSelectDate extends TodoEvent {
  final DateTime date;

  TodoSelectDate({required this.date});
}

final class TodoEventAdd extends TodoEvent {
  final String title;
  final DateTime date;

  TodoEventAdd({required this.title, required this.date});
}
