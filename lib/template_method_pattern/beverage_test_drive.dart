import 'package:gof_flutter/template_method_pattern/coffee_with_hook.dart';
import 'package:gof_flutter/template_method_pattern/tea_with_hook.dart';

void runBeverageTestDrive() {
  final teaHook = TeaWithHook();
  final coffeeHook = CoffeeWithHook();

  print('\n홍차 준비 중...');
  teaHook.prepareRecipe();

  print('\n커피 준비 중...');
  coffeeHook.prepareRecipe();
}
