import 'package:bussinuslogic/bloc/HomeEvent.dart';
import 'package:bussinuslogic/bloc/HomeState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int counter = 12;
  HomeBloc() : super(InitState(12)) {
    on<IncrementEvent>(
      (event, emit) {
        emit(UpdateCounterState(++counter));
      },
    );

    on<DecrementEvent>(
      (event, emit) {
        emit(UpdateCounterState(--counter));
      },
    );

    on<ResetEvent>(
      (event, emit) {
        counter = 0;
        emit(RestCounterState(counter));
      },
    );
  }
}
