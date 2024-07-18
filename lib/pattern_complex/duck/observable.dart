import 'package:gof_flutter/pattern_complex/duck/observer.dart';
import 'package:gof_flutter/pattern_complex/duck/quack_observable.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';

class Observable implements QuackObservable {
  Observable({required this.duck});

  List<Observer> observers = [];
  final Quackable duck;

  @override
  void notifyObservers() {
    final iterator = observers.iterator;

    while (iterator.moveNext()) {
      final observer = iterator.current;
      observer.update(duck);
    }
  }

  @override
  void registerObserver(observer) {
    observers.add(observer);
  }
}
