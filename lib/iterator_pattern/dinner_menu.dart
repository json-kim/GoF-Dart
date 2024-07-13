import 'package:gof_flutter/iterator_pattern/dinner_menu_iterator.dart';
import 'package:gof_flutter/iterator_pattern/menu.dart';
import 'package:gof_flutter/iterator_pattern/menu_item.dart';

class DinnerMenu implements Menu {
  DinnerMenu()
      : menuItems = [
          MenuItem(
              name: '채식주의자용 BLT',
              description: '통밀 위에 콩고기 베이컨 상추, 토마토를 얹은 메뉴',
              vegetarian: true,
              price: 2.99),
          MenuItem(
              name: 'BLT',
              description: '통밀 위에 베이컨 상추, 토마토를 얹은 메뉴',
              vegetarian: false,
              price: 2.99),
          MenuItem(
              name: '오늘의 수프',
              description: '감자 샐러드를 곁들인 오늘의 스프',
              vegetarian: false,
              price: 3.29),
          MenuItem(
              name: '핫도그',
              description: '사워크라우트, 갖은 양념, 양파, 치즈가 곁들여진 핫도그',
              vegetarian: false,
              price: 3.05),
        ];

  static final int MAX_ITEMS = 6;
  int numberOfItems = 0;
  List<MenuItem> menuItems;

  @override
  Iterator<MenuItem> createIterator() {
    return DinnerMenuIterator(items: menuItems);
  }
}
