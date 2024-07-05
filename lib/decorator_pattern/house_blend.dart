import 'package:gof_flutter/decorator_pattern/beverage.dart';

class HouseBlend extends Beverage {
  @override
  final String description = '하우스 블렌드 커피';

  @override
  double cost() {
    return .89;
  }
}
