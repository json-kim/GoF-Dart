import 'package:gof_flutter/decorator_pattern/beverage.dart';
import 'package:gof_flutter/decorator_pattern/condiment_decorator.dart';

class Whip extends CondimentDecorator {
  Whip({required this.beverage})
      : description = '${beverage.description}, 휘핑 크림';

  @override
  final Beverage beverage;

  @override
  final String description;

  @override
  double cost() {
    return beverage.cost() + 0.1;
  }
}
