import 'package:gof_flutter/observer_pattern/observer.dart';

abstract class Subject {
  void registerObserver(Observer o);
  void removeObserver(Observer o);
  void notifyObservers();
}
