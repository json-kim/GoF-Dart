import 'package:gof_flutter/iterator_pattern/menu.dart';
import 'package:gof_flutter/iterator_pattern/menu_item.dart';

class CafeMenu implements Menu {
  CafeMenu()
      : menuItems = {
          '베지 버거와 에어 프라이': MenuItem(
              name: '베지 버거와 에어 프라이',
              description: '통밀빵, 상추, 토마토, 감자 튀김이 첨가된 베지 버거',
              vegetarian: true,
              price: 3.99),
          '오늘의 스프': MenuItem(
              name: '오늘의 스프',
              description: '샐러드가 곁들여진 오늘의 스프',
              vegetarian: false,
              price: 3.69),
          '부리토': MenuItem(
              name: '부리토',
              description: '통 핀토콩과 살사, 구아카몰이 곁들여진 푸짐한 부리토',
              vegetarian: true,
              price: 4.29),
        };

  final Map<String, MenuItem> menuItems;

  @override
  Iterator<MenuItem> createIterator() {
    return menuItems.values.iterator;
  }
}
