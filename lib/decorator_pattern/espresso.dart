import 'package:gof_flutter/decorator_pattern/beverage.dart';

class Espresso extends Beverage {
  @override
  final String description = '에스프레소';

  @override
  double cost() {
    return 1.99;
  }
}
