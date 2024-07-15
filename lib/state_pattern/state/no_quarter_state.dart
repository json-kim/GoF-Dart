import 'package:gof_flutter/state_pattern/gumball_machine.dart';
import 'package:gof_flutter/state_pattern/state/state.dart';

class NoQuarterState implements State {
  NoQuarterState({required this.gumballMachine});

  final GumballMachine gumballMachine;

  @override
  void dispense() {
    print('동전을 넣어주세요');
  }

  @override
  void ejectQuarter() {
    print('동전을 넣어주세요');
  }

  @override
  void insertQuater() {
    print('동전을 넣으셨습니다');
    gumballMachine.setState(gumballMachine.hasQuarterState);
  }

  @override
  bool turnCrank() {
    print('동전을 넣어주세요');
    return false;
  }

  @override
  void refill() {
    print('아직 알맹이가 남아있습니다.');
  }

  @override
  String stateString() {
    return '동전 투입 대기중';
  }
}
