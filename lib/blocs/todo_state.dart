part of 'todo_bloc.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}

final class TodoLoading extends TodoState {}

final class TodoLoaded extends TodoState {
  DateTime? selectedDate;
  final List<String> todos; // Menambahkan list todo

  TodoLoaded({this.selectedDate, this.todos = const []});
}
