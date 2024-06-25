import 'package:gof_flutter/strategy_pattern/quack_behavior.dart';

class Squek implements QuackBehavior {
  @override
  void quack() {
    print('삑!');
  }
}
