import 'package:gof_flutter/pattern_complex/duck/abstract_duck_factory.dart';
import 'package:gof_flutter/pattern_complex/duck/duck_call.dart';
import 'package:gof_flutter/pattern_complex/duck/mallard_duck.dart';
import 'package:gof_flutter/pattern_complex/duck/quack_counter.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';
import 'package:gof_flutter/pattern_complex/duck/redhead_duck.dart';
import 'package:gof_flutter/pattern_complex/duck/rubber_duck.dart';

class CountingDuckFactory implements AbstractDuckFactory {
  @override
  Quackable createDuckCall() {
    return QuackCounter(duck: DuckCall());
  }

  @override
  Quackable createMallardDuck() {
    return QuackCounter(duck: MallardDuck());
  }

  @override
  Quackable createRedheadDuck() {
    return QuackCounter(duck: RedheadDuck());
  }

  @override
  Quackable createRubberDuck() {
    return QuackCounter(duck: RubberDuck());
  }
}
