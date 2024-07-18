import 'package:gof_flutter/pattern_complex/duck/observer.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';

class Quackologist implements Observer {
  @override
  void update(Quackable quacker) {
    print('꽥꽥학자: $quacker 가 방금 소리냈다.');
  }
}
