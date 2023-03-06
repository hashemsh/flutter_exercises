import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(InitialState()) {
    on<NumberIncrease>(onNumberIncrease);
    on<NumberDecrease>(onNumberDecrease);
  }
  void onNumberIncrease(
      NumberIncrease event, Emitter<CounterState> emit) async {
    emit(UpdateState(counter++));
  }

  void onNumberDecrease(
      NumberDecrease event, Emitter<CounterState> emit) async {
    emit(UpdateState(counter != 0 ? counter-- : counter));
  }
}
