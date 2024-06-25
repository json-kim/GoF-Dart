import 'package:gof_flutter/strategy_pattern/duck.dart';
import 'package:gof_flutter/strategy_pattern/fly_behavior.dart';
import 'package:gof_flutter/strategy_pattern/quack_behavior.dart';

class MallardDuck extends Duck {
  MallardDuck({
    required this.flyBehavior,
    required this.quackBehavior,
  });

  @override
  final FlyBehavior flyBehavior;
  @override
  final QuackBehavior quackBehavior;

  @override
  void display() {
    print('저는 물오리입니다');
  }
}
