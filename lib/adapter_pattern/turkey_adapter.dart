import 'package:gof_flutter/adapter_pattern/duck.dart';
import 'package:gof_flutter/adapter_pattern/turkey.dart';

class TurkeyAdapter implements Duck {
  TurkeyAdapter({required this.turkey});

  Turkey turkey;

  @override
  void fly() {
    for (int i = 0; i < 5; i++) {
      turkey.fly();
    }
  }

  @override
  void quack() {
    turkey.gobble();
  }
}
