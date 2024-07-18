import 'package:gof_flutter/pattern_complex/duck/abstract_duck_factory.dart';
import 'package:gof_flutter/pattern_complex/duck/duck_call.dart';
import 'package:gof_flutter/pattern_complex/duck/mallard_duck.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';
import 'package:gof_flutter/pattern_complex/duck/redhead_duck.dart';
import 'package:gof_flutter/pattern_complex/duck/rubber_duck.dart';

class DuckFactory implements AbstractDuckFactory {
  @override
  Quackable createDuckCall() {
    return DuckCall();
  }

  @override
  Quackable createMallardDuck() {
    return MallardDuck();
  }

  @override
  Quackable createRedheadDuck() {
    return RedheadDuck();
  }

  @override
  Quackable createRubberDuck() {
    return RubberDuck();
  }
}
