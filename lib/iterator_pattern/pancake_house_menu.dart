import 'package:gof_flutter/iterator_pattern/menu.dart';
import 'package:gof_flutter/iterator_pattern/menu_item.dart';
import 'package:gof_flutter/iterator_pattern/pancake_house_menu_iterator.dart';

class PancakeHouseMenu implements Menu {
  PancakeHouseMenu()
      : menuItems = {
          MenuItem(
              name: 'K&B 팬케이크 세트',
              description: '스크램블 에그와 토스트가 곁들여진 팬케이크',
              vegetarian: true,
              price: 2.99),
          MenuItem(
              name: '레귤러 팬케이크 세트',
              description: '달걀 프라이와 소시지가 곁들여진 팬케이크',
              vegetarian: false,
              price: 2.99),
          MenuItem(
              name: '블루베리 팬케이크',
              description: '신선한 블루베리와 블루베리 시럽으로 만든 팬케이크',
              vegetarian: true,
              price: 3.49),
          MenuItem(
              name: '와플',
              description: '취향에 따라 블루베리나 딸기를 얹을 수 있는 와플',
              vegetarian: true,
              price: 3.59),
        };

  final Set<MenuItem> menuItems;

  @override
  Iterator<MenuItem> createIterator() {
    return PancakeHouseMenuIterator(items: menuItems);
  }
}
