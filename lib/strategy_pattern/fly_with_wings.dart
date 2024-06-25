import 'package:gof_flutter/strategy_pattern/fly_behavior.dart';

class FlyWithWings implements FlyBehavior {
  @override
  void fly() {
    print('하늘을 날고 있습니다');
  }
}
