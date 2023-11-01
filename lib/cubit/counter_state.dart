part of 'counter_cubit.dart';

@immutable
 class CounterState {
  final int counterValue;

  CounterState({required this.counterValue});
}

final class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}
