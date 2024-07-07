import 'package:gof_flutter/factory_pattern/pizza/pizza.dart';

abstract class PizzaStore {
  Pizza orderPizza(String type) {
    final pizza = createPizza(type);
    if (pizza == null) {
      throw Exception('pizza 가 없습니다');
    }

    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();

    return pizza;
  }

  Pizza? createPizza(String type);
}
