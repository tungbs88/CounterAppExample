import 'package:counter_app_example/events/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      if (event == CounterEvent.increment) {
        emit(state + 1);
      } else if (event == CounterEvent.decrement) {
        emit(state - 1);
      }
    });

    // on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    // on<CounterDecrementPressed>((event, emit) => emit(state - 1));
  }
}
