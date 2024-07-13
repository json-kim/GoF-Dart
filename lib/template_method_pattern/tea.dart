import 'package:gof_flutter/template_method_pattern/caffeine_beverage.dart';

class Tea extends CaffeineBeverage {
  @override
  void addCondiments() {
    print('레몬을 추가하는 중');
  }

  @override
  void brew() {
    print('찻잎을 우려내는 중');
  }
}
