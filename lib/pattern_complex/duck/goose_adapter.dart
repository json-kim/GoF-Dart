import 'package:gof_flutter/pattern_complex/duck/goose.dart';
import 'package:gof_flutter/pattern_complex/duck/observable.dart';
import 'package:gof_flutter/pattern_complex/duck/observer.dart';
import 'package:gof_flutter/pattern_complex/duck/quack_observable.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';

class GooseAdapter implements Quackable {
  GooseAdapter({required this.goose}) {
    observable = Observable(duck: this);
  }

  late final QuackObservable observable;

  final Goose goose;

  @override
  void quack() {
    goose.honk();
    notifyObservers();
  }

  @override
  void notifyObservers() {
    observable.notifyObservers();
  }

  @override
  void registerObserver(Observer observer) {
    observable.registerObserver(observer);
  }

  @override
  String toString() {
    return goose.toString();
  }
}
