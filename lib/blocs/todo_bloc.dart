import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<TodoSelectDate>((event, emit) {
      emit(TodoLoaded(selectedDate: event.date));
    });

    on<TodoEventAdd>((event, emit) {
      // Untuk contoh awal, kita hanya print datanya.
      print('Todo Ditambahkan: ${event.title} pada ${event.date}');
      // Kamu bisa menyimpan todo list dalam list dan emit state baru jika dibutuhkan
    });
  }
}
