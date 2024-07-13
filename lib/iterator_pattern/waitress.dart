import 'package:gof_flutter/iterator_pattern/dinner_menu.dart';
import 'package:gof_flutter/iterator_pattern/my_iterator.dart';
import 'package:gof_flutter/iterator_pattern/pancake_house_menu.dart';

class Waitress {
  Waitress({required this.pancakeHouseMenu, required this.dinnerMenu});

  final PancakeHouseMenu pancakeHouseMenu;
  final DinnerMenu dinnerMenu;

  void printMenu() {
    MyIterator pancakeIterator = pancakeHouseMenu.createIterator();
    MyIterator dinnerIterator = dinnerMenu.creatorIterator();

    print('메뉴\n----\n아침 메뉴');
    _printMenu(pancakeIterator);
    print('\n점심 메뉴');
    _printMenu(dinnerIterator);
  }

  void _printMenu(MyIterator iterator) {
    while (iterator.hasNext()) {
      final menuItem = iterator.next();
      print('${menuItem.name}, ${menuItem.price} -- ${menuItem.description}');
    }
  }
}
