import 'package:gof_flutter/adapter_pattern/duck.dart';
import 'package:gof_flutter/adapter_pattern/turkey.dart';

class DuckAdapter implements Turkey {
  DuckAdapter({required this.duck});

  final Duck duck;

  @override
  void fly() {
    duck.fly();
  }

  @override
  void gobble() {
    duck.quack();
  }
}
