import 'package:gof_flutter/pattern_complex/duck/observer.dart';

abstract class QuackObservable {
  void registerObserver(Observer observer);
  void notifyObservers();
}
