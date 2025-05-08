part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

// Event untuk memilih tanggal
final class TodoSelectDate extends TodoEvent {
  final DateTime date;

  TodoSelectDate({required this.date});

  // Konstruktor yang lebih mudah
  TodoSelectDate.selectDate(this.date);
}

// Event untuk menambahkan todo
final class TodoEventAdd extends TodoEvent {
  final String title;
  final DateTime date;

  TodoEventAdd({required this.title, required this.date});

  // Konstruktor tambahan untuk inisialisasi lebih mudah
  TodoEventAdd.addTodo({required this.title, required this.date});
}

final class TodoEventComplete extends TodoEvent {
  final int index;

  TodoEventComplete({required this.index});
}
