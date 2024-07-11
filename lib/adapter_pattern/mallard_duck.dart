import 'package:gof_flutter/adapter_pattern/duck.dart';

class MallardDuck implements Duck {
  @override
  void fly() {
    print('날고 있어요');
  }

  @override
  void quack() {
    print('꽥');
  }
}
