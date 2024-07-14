import 'package:gof_flutter/composite_pattern/menu_component.dart';

class Menu extends MenuComponent {
  Menu({required this.name, required this.description});

  final List<MenuComponent> menuComponents = [];

  @override
  final String name;
  @override
  final String description;

  @override
  void add(MenuComponent menuComponent) {
    menuComponents.add(menuComponent);
  }

  @override
  void remove(MenuComponent menuComponent) {
    menuComponents.remove(menuComponent);
  }

  @override
  MenuComponent getChild(int i) {
    return menuComponents[i];
  }

  @override
  void printComponent() {
    print('\n$name, $description\n----------------');

    for (final menuComponent in menuComponents) {
      menuComponent.printComponent();
    }
  }
}
