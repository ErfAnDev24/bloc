class HomeState {}

class InitStateNumber extends HomeState {
  int? counter;
  InitStateNumber(this.counter);
}

class UpdatedCounterState extends HomeState {
  int? counter;
  UpdatedCounterState(this.counter);
}

class RestNumberState extends HomeState {
  int? counter;
  RestNumberState(this.counter);
}
