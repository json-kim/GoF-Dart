import 'package:gof_flutter/factory_pattern/ingredient/cheese.dart';
import 'package:gof_flutter/factory_pattern/ingredient/clams.dart';
import 'package:gof_flutter/factory_pattern/ingredient/dough.dart';
import 'package:gof_flutter/factory_pattern/ingredient/fresh_clams.dart';
import 'package:gof_flutter/factory_pattern/ingredient/garlic.dart';
import 'package:gof_flutter/factory_pattern/ingredient/marinara_sauce.dart';
import 'package:gof_flutter/factory_pattern/ingredient/mushroom.dart';
import 'package:gof_flutter/factory_pattern/ingredient/onion.dart';
import 'package:gof_flutter/factory_pattern/ingredient/pepperoni.dart';
import 'package:gof_flutter/factory_pattern/ingredient/red_pepper.dart';
import 'package:gof_flutter/factory_pattern/ingredient/reggiano_cheese.dart';
import 'package:gof_flutter/factory_pattern/ingredient/sauce.dart';
import 'package:gof_flutter/factory_pattern/ingredient/sliced_pepperoni.dart';
import 'package:gof_flutter/factory_pattern/ingredient/thin_crust_dough.dart';
import 'package:gof_flutter/factory_pattern/ingredient/veggies.dart';
import 'package:gof_flutter/factory_pattern/pizza_ingredient_factory.dart';

class NyPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Cheese createCheese() {
    return ReggianoCheese();
  }

  @override
  Clams createClams() {
    return FreshClams();
  }

  @override
  Dough createDough() {
    return ThinCrustDough();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return MarinaraSauce();
  }

  @override
  List<Veggies> createVeggies() {
    return [
      Garlic(),
      Onion(),
      Mushroom(),
      RedPepper(),
    ];
  }
}
