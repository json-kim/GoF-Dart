import 'package:gof_flutter/strategy_pattern/fly_behavior.dart';

class FlyNoWay implements FlyBehavior {
  @override
  void fly() {
    print('날지 못합니다 ㅜㅜ');
  }
}
