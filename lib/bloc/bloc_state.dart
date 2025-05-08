part of 'bloc.dart';

sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterValueState extends CounterState {
  final int count;

  CounterValueState({required this.count});
}
