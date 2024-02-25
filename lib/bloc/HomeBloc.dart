import 'package:bussinuslogic/bloc/HomeEvent.dart';
import 'package:bussinuslogic/bloc/HomeState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          InitStateNumber(12),
        ) {
    int counter = 12;

    on<IncrementNumber>(
      (event, emit) {
        emit(
          UpdatedCounterState(++counter),
        );
      },
    );

    on<DecrementNumber>(
      (event, emit) {
        emit(
          UpdatedCounterState(--counter),
        );
      },
    );

    on<RestNumber>(
      (event, emit) {
        counter = 0;
        emit(
          RestNumberState(counter),
        );
      },
    );
  }
}
