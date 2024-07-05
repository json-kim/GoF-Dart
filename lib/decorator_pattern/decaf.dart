import 'package:gof_flutter/decorator_pattern/beverage.dart';

class Decaf extends Beverage {
  @override
  final String description = '디카페인 커피';

  @override
  double cost() {
    return 1.05;
  }
}
