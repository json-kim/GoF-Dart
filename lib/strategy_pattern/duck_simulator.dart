import 'package:gof_flutter/strategy_pattern/duck.dart';
import 'package:gof_flutter/strategy_pattern/fly_behavior.dart';
import 'package:gof_flutter/strategy_pattern/fly_with_wings.dart';
import 'package:gof_flutter/strategy_pattern/mallard_duck.dart';
import 'package:gof_flutter/strategy_pattern/quack.dart';
import 'package:gof_flutter/strategy_pattern/quack_behavior.dart';

void runDuckSimulator() {
  final FlyBehavior flyBehavior = FlyWithWings();
  final QuackBehavior quackBehavior = Quack();
  final Duck mallard =
      MallardDuck(flyBehavior: flyBehavior, quackBehavior: quackBehavior);

  mallard.display();
  mallard.performFly();
  mallard.performQuack();
}
