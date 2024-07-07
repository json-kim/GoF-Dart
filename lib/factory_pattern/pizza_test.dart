import 'package:gof_flutter/factory_pattern/ny_pizza_store.dart';
import 'package:gof_flutter/factory_pattern/pizza/pizza.dart';
import 'package:gof_flutter/factory_pattern/pizza_store.dart';

void runPizzaTest() {
  PizzaStore store = NyPizzaStore();

  Pizza pizza = store.orderPizza('cheese');
  print('에단이 주문한 피자 ${pizza.name}');
}
