import 'package:gof_flutter/iterator_pattern/menu.dart';

class Waitress {
  Waitress(
      {required this.pancakeHouseMenu,
      required this.dinnerMenu,
      required this.cafeMenu});

  final Menu pancakeHouseMenu;
  final Menu dinnerMenu;
  final Menu cafeMenu;

  void printMenu() {
    Iterator pancakeIterator = pancakeHouseMenu.createIterator();
    Iterator dinnerIterator = dinnerMenu.createIterator();
    Iterator cafeIterator = cafeMenu.createIterator();

    print('메뉴\n----\n아침 메뉴');
    _printMenu(pancakeIterator);
    print('\n점심 메뉴');
    _printMenu(dinnerIterator);
    print('\n저녁 메뉴');
    _printMenu(cafeIterator);
  }

  void _printMenu(Iterator iterator) {
    while (iterator.moveNext()) {
      final menuItem = iterator.current;
      print('${menuItem.name}, ${menuItem.price} -- ${menuItem.description}');
    }
  }
}
