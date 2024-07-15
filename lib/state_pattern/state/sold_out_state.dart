import 'package:gof_flutter/state_pattern/gumball_machine.dart';
import 'package:gof_flutter/state_pattern/state/state.dart';

class SoldOutState implements State {
  SoldOutState({required this.gumballMachine});

  final GumballMachine gumballMachine;

  @override
  void dispense() {
    print('알맹이를 내보낼 수 없습니다');
  }

  @override
  void ejectQuarter() {
    print('동전을 반환할 수 없습니다. 동전을 넣지 않았습니다.');
  }

  @override
  void insertQuater() {
    print('죄송합니다. 매진되었습니다.');
  }

  @override
  bool turnCrank() {
    print('죄송합니다. 매진되었습니다.');
    return false;
  }

  @override
  void refill() {
    gumballMachine.setState(gumballMachine.noQuarterState);
  }

  @override
  String stateString() {
    return '매진';
  }
}
