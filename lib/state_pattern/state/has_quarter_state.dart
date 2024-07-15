import 'dart:math';

import 'package:gof_flutter/state_pattern/gumball_machine.dart';
import 'package:gof_flutter/state_pattern/state/state.dart';

class HasQuarterState implements State {
  HasQuarterState({required this.gumballMachine});

  final GumballMachine gumballMachine;
  final Random randomWinner = Random(DateTime.now().millisecondsSinceEpoch);

  @override
  void dispense() {
    print('알맹이를 내보낼 수 없습니다');
  }

  @override
  void ejectQuarter() {
    print('동전이 반환됩니다');
  }

  @override
  void insertQuater() {
    print('동전은 한 개만 넣어 주세요');
  }

  @override
  bool turnCrank() {
    print('손잡이를 돌리셨습니다');
    int winner = randomWinner.nextInt(10);
    if ((winner == 0) && (gumballMachine.count > 1)) {
      gumballMachine.setState(gumballMachine.winnerState);
    } else {
      gumballMachine.setState(gumballMachine.soldState);
    }

    return true;
  }

  @override
  void refill() {
    print('아직 알맹이가 남아있습니다.');
  }

  @override
  String stateString() {
    return '동전 투입 중';
  }
}
