import 'package:gof_flutter/state_pattern/state/has_quarter_state.dart';
import 'package:gof_flutter/state_pattern/state/no_quarter_state.dart';
import 'package:gof_flutter/state_pattern/state/sold_out_state.dart';
import 'package:gof_flutter/state_pattern/state/sold_state.dart';
import 'package:gof_flutter/state_pattern/state/state.dart';
import 'package:gof_flutter/state_pattern/state/winner_state.dart';

class GumballMachine {
  late State noQuarterState;
  late State hasQuarterState;
  late State soldState;
  late State soldOutState;
  late State winnerState;

  GumballMachine({this.count = 0}) {
    noQuarterState = NoQuarterState(gumballMachine: this);
    hasQuarterState = HasQuarterState(gumballMachine: this);
    soldState = SoldState(gumballMachine: this);
    soldOutState = SoldOutState(gumballMachine: this);
    winnerState = WinnerState(gumballMachine: this);

    state = count > 0 ? noQuarterState : soldOutState;
  }

  late State state;
  int count;

  void insertQuarter() {
    state.insertQuater();
  }

  void ejectQuarter() {
    state.ejectQuarter();
  }

  void turnCrank() {
    final shouldDispense = state.turnCrank();
    if (shouldDispense) {
      state.dispense();
    }
  }

  void refill(int count) {
    print('알맹이를 리필하고 있습니다.');
    this.count += count;
    state.refill();
  }

  void setState(State state) {
    this.state = state;
  }

  void releaseBall() {
    print('알맹이를 내보내고 있습니다');
    if (count > 0) {
      count--;
    }
  }

  @override
  String toString() {
    return '\n주식회사 왕뽑기\n다트로 돌아가는 최신형 뽑기 기계\n남은 개수: $count개\n${state.stateString()}\n';
  }
}
