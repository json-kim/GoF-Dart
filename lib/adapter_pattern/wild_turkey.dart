import 'package:gof_flutter/adapter_pattern/turkey.dart';

class WildTurkey implements Turkey {
  @override
  void fly() {
    print('짧은 거리를 날고 있어요');
  }

  @override
  void gobble() {
    print('골골');
  }
}
