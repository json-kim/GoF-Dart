import 'package:gof_flutter/factory_pattern/ny_pizza_ingredient_factory.dart';
import 'package:gof_flutter/factory_pattern/pizza/cheese_pizza.dart';
import 'package:gof_flutter/factory_pattern/pizza/clam_pizza.dart';
import 'package:gof_flutter/factory_pattern/pizza/pepperoni_pizza.dart';
import 'package:gof_flutter/factory_pattern/pizza/veggie_pizza.dart';
import 'package:gof_flutter/factory_pattern/pizza/pizza.dart';
import 'package:gof_flutter/factory_pattern/pizza_ingredient_factory.dart';
import 'package:gof_flutter/factory_pattern/pizza_store.dart';

class NyPizzaStore extends PizzaStore {
  @override
  Pizza? createPizza(String type) {
    Pizza? pizza;
    PizzaIngredientFactory pizzaIngredientFactory = NyPizzaIngredientFactory();

    if (type == 'cheese') {
      pizza = CheesePizza(pizzaIngredientFactory: pizzaIngredientFactory);
      pizza.name = '뉴욕 스타일 치즈 피자';
    } else if (type == 'veggie') {
      pizza = VeggiePizza(pizzaIngredientFactory: pizzaIngredientFactory);
      pizza.name = '뉴욕 스타일 야채 피자';
    } else if (type == 'clam') {
      pizza = ClamPizza(pizzaIngredientFactory: pizzaIngredientFactory);
      pizza.name = '뉴욕 스타일 조개 피자';
    } else if (type == 'pepperoni') {
      pizza = PepperoniPizza(pizzaIngredientFactory: pizzaIngredientFactory);
      pizza.name = '뉴욕 스타일 페퍼로니 피자';
    }

    return pizza;
  }
}
