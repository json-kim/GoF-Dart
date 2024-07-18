import 'package:gof_flutter/pattern_complex/duck/observable.dart';
import 'package:gof_flutter/pattern_complex/duck/observer.dart';
import 'package:gof_flutter/pattern_complex/duck/quack_observable.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';

class DuckCall implements Quackable {
  DuckCall() {
    observable = Observable(duck: this);
  }

  late final QuackObservable observable;

  @override
  void quack() {
    print('꽉꽉');
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
    return '오리 호출기';
  }
}
