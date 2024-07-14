import 'package:gof_flutter/composite_pattern/menu.dart';
import 'package:gof_flutter/composite_pattern/menu_component.dart';
import 'package:gof_flutter/composite_pattern/menu_item.dart';
import 'package:gof_flutter/composite_pattern/waitress.dart';

void runMenuTestDriveCompositePattern() {
  MenuComponent pancakeHouseMenu =
      Menu(name: '팬케이크 하우스 메뉴', description: '아침 메뉴');
  MenuComponent dinerMenu = Menu(name: '객체마을 식당 메뉴', description: '점심 메뉴');
  MenuComponent cafeMenu = Menu(name: '카페 메뉴', description: '저녁 메뉴');
  MenuComponent dessertMenu = Menu(name: '디저트 메뉴', description: '디저트를 즐겨 보세요');

  MenuComponent allMenus = Menu(name: '전체 메뉴', description: '전체 메뉴');

  allMenus.add(pancakeHouseMenu);
  allMenus.add(dinerMenu);
  allMenus.add(cafeMenu);

  dinerMenu.add(MenuItem(
      name: '파스타',
      description: '마리나라 소스 스파게티, 효모빵도 드립니다',
      vegetarian: true,
      price: 3.89));
  dinerMenu.add(dessertMenu);
  dessertMenu.add(MenuItem(
      name: '애플 파이',
      description: '바삭바삭한 크러스트에 바닐라 아이스크림이 얹혀 있는 애플 파이',
      vegetarian: true,
      price: 1.59));

  final waitress = Waitress(allMenus: allMenus);

  waitress.printMenu();
}
