import 'package:gof_flutter/decorator_pattern/beverage.dart';

class DartRoast extends Beverage {
  @override
  final String description = '다크 로스트 커피';

  @override
  double cost() {
    return .99;
  }
}
