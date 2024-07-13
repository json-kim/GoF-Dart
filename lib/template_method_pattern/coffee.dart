import 'package:gof_flutter/template_method_pattern/caffeine_beverage.dart';

class Coffee extends CaffeineBeverage {
  @override
  void addCondiments() {
    print('설탕과 우유를 추가하는 중');
  }

  @override
  void brew() {
    print('필터로 커피를 우려내는 중');
  }
}
