import 'package:gof_flutter/pattern_complex/duck/quackable.dart';

abstract interface class Observer {
  void update(Quackable quacker);
}
