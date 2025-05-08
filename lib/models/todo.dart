class Todo {
  final String title;
  final DateTime date;
  bool isCompleted;

  Todo({required this.title, required this.date, this.isCompleted = false});
}
