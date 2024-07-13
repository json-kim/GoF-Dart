import 'package:gof_flutter/iterator_pattern/menu_item.dart';

abstract interface class MyIterator {
  bool hasNext();
  MenuItem next();
}
