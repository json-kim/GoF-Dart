import 'package:gof_flutter/decorator_pattern/beverage.dart';
import 'package:gof_flutter/decorator_pattern/dart_roast.dart';
import 'package:gof_flutter/decorator_pattern/espresso.dart';
import 'package:gof_flutter/decorator_pattern/house_blend.dart';
import 'package:gof_flutter/decorator_pattern/mocha.dart';
import 'package:gof_flutter/decorator_pattern/soy.dart';
import 'package:gof_flutter/decorator_pattern/whip.dart';

void runStarbuzzCoffee() {
  Beverage beverage = Espresso();
  print('${beverage.description} \$${beverage.cost()}');

  Beverage beverage2 = DartRoast();
  beverage2 = Mocha(beverage: beverage2);
  beverage2 = Mocha(beverage: beverage2);
  beverage2 = Whip(beverage: beverage2);
  print('${beverage2.description} \$${beverage2.cost()}');

  Beverage beverage3 = HouseBlend();
  beverage3 = Soy(beverage: beverage3);
  beverage3 = Mocha(beverage: beverage3);
  beverage3 = Whip(beverage: beverage3);
  print('${beverage3.description} \$${beverage3.cost()}');
}
