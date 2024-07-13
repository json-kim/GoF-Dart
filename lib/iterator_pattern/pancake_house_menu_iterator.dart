import 'package:gof_flutter/iterator_pattern/menu_item.dart';

class PancakeHouseMenuIterator implements Iterator<MenuItem> {
  PancakeHouseMenuIterator({required Set<MenuItem> items})
      : items = items.toList();

  final List<MenuItem> items;
  int position = -1;

  @override
  MenuItem get current => items[position];

  @override
  bool moveNext() {
    if (position >= items.length - 1) {
      return false;
    } else {
      position++;
      return true;
    }
  }
}
