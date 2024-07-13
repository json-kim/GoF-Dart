import 'package:gof_flutter/iterator_pattern/my_iterator.dart';
import 'package:gof_flutter/iterator_pattern/menu_item.dart';

class DinnerMenuIterator implements MyIterator {
  DinnerMenuIterator({required this.items});

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
