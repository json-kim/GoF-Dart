import 'package:gof_flutter/decorator_pattern/beverage.dart';

abstract class CondimentDecorator implements Beverage {
  Beverage get beverage;
}
