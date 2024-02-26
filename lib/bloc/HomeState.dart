class HomeState {}

class InitState extends HomeState {
  int counter;
  InitState(this.counter);
}

class UpdateCounterState extends HomeState {
  int counter;
  UpdateCounterState(this.counter);
}

class RestCounterState extends HomeState {
  int counter;
  RestCounterState(this.counter);
}
