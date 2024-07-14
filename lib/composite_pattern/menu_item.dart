import 'package:gof_flutter/composite_pattern/menu_component.dart';

class MenuItem extends MenuComponent {
  MenuItem({
    required this.name,
    required this.description,
    required this.vegetarian,
    required this.price,
  });

  @override
  final String name;
  @override
  final String description;
  @override
  final bool vegetarian;
  @override
  final double price;

  @override
  void printComponent() {
    print('\t$name${vegetarian ? '(v)' : ''}, $price\n\t\t-- $description');
  }
}
