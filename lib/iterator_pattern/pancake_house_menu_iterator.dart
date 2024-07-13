import 'package:gof_flutter/iterator_pattern/my_iterator.dart';
import 'package:gof_flutter/iterator_pattern/menu_item.dart';

class PancakeHouseMenuIterator implements MyIterator {
  PancakeHouseMenuIterator({required Set<MenuItem> items})
      : items = items.toList();

  final List<MenuItem> items;
  int position = 0;

  @override
  bool hasNext() {
    if (position >= items.length) {
      return false;
    } else {
      return true;
    }
  }

  @override
  MenuItem next() {
    final item = items[position];
    position += 1;
    return item;
  }
}
