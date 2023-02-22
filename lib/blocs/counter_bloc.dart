import 'package:counter_app_example/events/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>(
        (event, emit) => (event, emit) => emit(state + 1));
    on<CounterDecrementPressed>(
        (event, emit) => (event, emit) => emit(state - 1));
  }
}
