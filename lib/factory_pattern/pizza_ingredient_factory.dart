import 'package:gof_flutter/factory_pattern/ingredient/cheese.dart';
import 'package:gof_flutter/factory_pattern/ingredient/clams.dart';
import 'package:gof_flutter/factory_pattern/ingredient/dough.dart';
import 'package:gof_flutter/factory_pattern/ingredient/pepperoni.dart';
import 'package:gof_flutter/factory_pattern/ingredient/sauce.dart';
import 'package:gof_flutter/factory_pattern/ingredient/veggies.dart';

abstract class PizzaIngredientFactory {
  Dough createDough();
  Sauce createSauce();
  Cheese createCheese();
  List<Veggies> createVeggies();
  Pepperoni createPepperoni();
  Clams createClams();
}
