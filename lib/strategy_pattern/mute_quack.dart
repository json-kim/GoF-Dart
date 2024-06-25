import 'package:gof_flutter/strategy_pattern/quack_behavior.dart';

class MuteQuack implements QuackBehavior {
  @override
  void quack() {
    print('조용합니다');
  }
}
