import 'package:gof_flutter/strategy_pattern/quack_behavior.dart';

class Quack implements QuackBehavior {
  @override
  void quack() {
    print('꽥!');
  }
}
