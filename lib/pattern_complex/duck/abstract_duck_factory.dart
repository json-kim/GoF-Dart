import 'package:gof_flutter/pattern_complex/duck/quackable.dart';

abstract interface class AbstractDuckFactory {
  Quackable createMallardDuck();
  Quackable createRedheadDuck();
  Quackable createDuckCall();
  Quackable createRubberDuck();
}
