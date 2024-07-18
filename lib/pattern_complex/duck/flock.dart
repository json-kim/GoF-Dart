import 'package:gof_flutter/pattern_complex/duck/observable.dart';
import 'package:gof_flutter/pattern_complex/duck/observer.dart';
import 'package:gof_flutter/pattern_complex/duck/quack_observable.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';

class Flock implements Quackable {
  Flock() {
    observable = Observable(duck: this);
  }

  late final QuackObservable observable;
  final List<Quackable> quackers = [];

  void add(Quackable quacker) {
    quackers.add(quacker);
  }

  @override
  void quack() {
    final iterator = quackers.iterator;

    while (iterator.moveNext()) {
      Quackable quacker = iterator.current;
      quacker.quack();
    }
    notifyObservers();
  }

  @override
  void notifyObservers() {
    observable.notifyObservers();
  }

  @override
  void registerObserver(Observer observer) {
    final iterator = quackers.iterator;

    while (iterator.moveNext()) {
      final quacker = iterator.current;
      quacker.registerObserver(observer);
    }
  }
}
