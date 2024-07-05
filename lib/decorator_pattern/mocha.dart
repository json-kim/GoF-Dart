import 'package:gof_flutter/decorator_pattern/beverage.dart';
import 'package:gof_flutter/decorator_pattern/condiment_decorator.dart';

class Mocha extends CondimentDecorator {
  Mocha({required this.beverage}) : description = '${beverage.description}, 모카';

  @override
  final String description;

  @override
  final Beverage beverage;

  @override
  double cost() {
    return beverage.cost() + 0.2;
  }
}
