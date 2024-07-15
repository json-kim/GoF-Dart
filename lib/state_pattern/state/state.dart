abstract interface class State {
  void insertQuater();
  void ejectQuarter();
  bool turnCrank();
  void dispense();
  void refill();
  String stateString();
}
