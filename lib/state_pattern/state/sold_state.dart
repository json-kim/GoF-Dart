import 'package:gof_flutter/state_pattern/gumball_machine.dart';
import 'package:gof_flutter/state_pattern/state/state.dart';

class SoldState implements State {
  SoldState({required this.gumballMachine});

  final GumballMachine gumballMachine;

  @override
  void dispense() {
    gumballMachine.releaseBall();
    if (gumballMachine.count > 0) {
      gumballMachine.setState(gumballMachine.noQuarterState);
    } else {
      print('매진되었습니다');
      gumballMachine.setState(gumballMachine.soldOutState);
    }
  }

  @override
  void ejectQuarter() {
    print('이미 알맹이를 뽑으셨습니다.');
  }

  @override
  void insertQuater() {
    print('알맹이를 내보내고 있습니다.');
  }

  @override
  bool turnCrank() {
    print('손잡이는 한 번만 돌려주세요.');
    return false;
  }

  @override
  void refill() {
    print('아직 알맹이가 남아있습니다.');
  }

  @override
  String stateString() {
    return '판매 중';
  }
}
