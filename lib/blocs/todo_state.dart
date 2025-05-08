part of 'todo_bloc.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}

final class TodoLoading extends TodoState {}

final class TodoLoaded extends TodoState {
  DateTime? selectedDate;
  final List<Todo> todos; // Mengganti List<String> dengan List<Todo>

  TodoLoaded({this.selectedDate, this.todos = const []});
}
