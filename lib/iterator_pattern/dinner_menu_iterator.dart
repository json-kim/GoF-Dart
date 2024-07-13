import 'package:gof_flutter/iterator_pattern/menu_item.dart';

class DinnerMenuIterator implements Iterator<MenuItem> {
  DinnerMenuIterator({required this.items});

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
