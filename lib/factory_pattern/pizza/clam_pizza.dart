import 'package:gof_flutter/factory_pattern/pizza/pizza.dart';
import 'package:gof_flutter/factory_pattern/pizza_ingredient_factory.dart';

class ClamPizza extends Pizza {
  ClamPizza({required this.pizzaIngredientFactory});

  final PizzaIngredientFactory pizzaIngredientFactory;

  @override
  void prepare() {
    print('준비중: $name');
    dough = pizzaIngredientFactory.createDough();
    sauce = pizzaIngredientFactory.createSauce();
    cheese = pizzaIngredientFactory.createCheese();
    clams = pizzaIngredientFactory.createClams();
  }
}
