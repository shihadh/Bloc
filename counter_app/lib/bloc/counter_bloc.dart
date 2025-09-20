import 'package:counter_app/bloc/counter_event.dart';
import 'package:counter_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc() :super (const CounterState(0)){
    on<Increment>((event, emit) =>  emit(CounterState(state.counterValue +1)),);

    // on<Decrement>((event, emit) => emit(CounterState(state.counterValue -1)),);
    //decrement stop when hit 0
    on<Decrement>((event, emit) {
  final newValue = state.counterValue > 0
      ? state.counterValue - 1 : 0;
  emit(CounterState(newValue));
});
  }
}