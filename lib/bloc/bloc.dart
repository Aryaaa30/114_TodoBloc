import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterValueState(count: 0)) {
    on<IncrementEvent>((event, emit) {
      final currentState = state;
      if (currentState is CounterValueState) {
        emit(CounterValueState(count: currentState.count + 1));
      }
    });
  }
}
