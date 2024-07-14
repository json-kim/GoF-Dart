import 'package:gof_flutter/composite_pattern/menu_component.dart';

class Waitress {
  Waitress({required this.allMenus});

  final MenuComponent allMenus;

  void printMenu() {
    allMenus.printComponent();
  }
}
