import 'package:gof_flutter/adapter_pattern/mallard_duck.dart';
import 'package:gof_flutter/adapter_pattern/turkey.dart';

class MallardDuckTurkeyClassAdapter extends MallardDuck implements Turkey {
  @override
  void gobble() {
    quack();
  }
}
