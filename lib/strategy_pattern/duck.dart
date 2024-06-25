import 'package:gof_flutter/strategy_pattern/fly_behavior.dart';
import 'package:gof_flutter/strategy_pattern/quack_behavior.dart';

abstract class Duck {
  FlyBehavior get flyBehavior;
  QuackBehavior get quackBehavior;

  void display();

  void performFly() {
    flyBehavior.fly();
  }

  void performQuack() {
    quackBehavior.quack();
  }

  void swim() {
    print('swim~~');
  }
}
