import 'package:gof_flutter/pattern_complex/duck/observer.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';

class QuackCounter implements Quackable {
  QuackCounter({required this.duck});

  final Quackable duck;
  static int numberOfQuacks = 0;

  @override
  void quack() {
    duck.quack();
    numberOfQuacks++;
  }

  @override
  void notifyObservers() {
    duck.notifyObservers();
  }

  @override
  void registerObserver(Observer observer) {
    duck.registerObserver(observer);
  }
}
