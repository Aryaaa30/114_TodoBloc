import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<SelectDateEvent>((event, emit) {
      emit(TodoLoaded(selectedDate: event.selectedDate));
    });
  }
}
