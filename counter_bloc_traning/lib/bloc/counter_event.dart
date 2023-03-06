part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class NumberIncrease extends CounterEvent {}

class NumberDecrease extends CounterEvent {}
