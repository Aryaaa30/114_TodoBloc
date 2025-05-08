import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:session6_bloc_consept_todo/models/todo.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  // Menyimpan daftar todos
  List<Todo> _todos = [];

  TodoBloc() : super(TodoInitial()) {
    // Event untuk memilih tanggal
    on<TodoSelectDate>((event, emit) {
      emit(TodoLoaded(todos: _todos, selectedDate: event.date));
    });

    // Event untuk menambahkan todo
    on<TodoEventAdd>((event, emit) {
      // Membuat todo baru
      final newTodo = Todo(title: event.title, date: event.date);
      _todos.add(newTodo); // Menambahkan todo ke dalam list

      // Emit state baru dengan todos yang diperbarui
      emit(
        TodoLoaded(
          todos: _todos,
          selectedDate:
              state is TodoLoaded ? (state as TodoLoaded).selectedDate : null,
        ),
      );
    });

    // Event untuk menandai todo sebagai selesai atau belum selesai
    on<TodoEventComplete>((event, emit) {
      // Menangani perubahan status completed
      if (_todos.isNotEmpty && event.index < _todos.length) {
        final todo = _todos[event.index];
        todo.isCompleted = !todo.isCompleted; // Toggle status isCompleted

        // Emit state baru dengan todos yang diperbarui
        emit(
          TodoLoaded(
            todos: _todos,
            selectedDate:
                state is TodoLoaded ? (state as TodoLoaded).selectedDate : null,
          ),
        );
      }
    });
  }
}
