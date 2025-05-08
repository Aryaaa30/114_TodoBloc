part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

final class TodoSelectDate extends TodoEvent {
  final DateTime date;

  TodoSelectDate({required this.date});
}
