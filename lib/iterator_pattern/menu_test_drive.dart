import 'package:gof_flutter/iterator_pattern/cafe_menu.dart';
import 'package:gof_flutter/iterator_pattern/dinner_menu.dart';
import 'package:gof_flutter/iterator_pattern/pancake_house_menu.dart';
import 'package:gof_flutter/iterator_pattern/waitress.dart';

void runMenuTestDrive() {
  PancakeHouseMenu pancakeHouseMenu = PancakeHouseMenu();
  DinnerMenu dinnerMenu = DinnerMenu();
  CafeMenu cafeMenu = CafeMenu();

  final waitress = Waitress(
      pancakeHouseMenu: pancakeHouseMenu,
      dinnerMenu: dinnerMenu,
      cafeMenu: cafeMenu);

  waitress.printMenu();
}
