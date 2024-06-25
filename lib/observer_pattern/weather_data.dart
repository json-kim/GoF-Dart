import 'package:gof_flutter/observer_pattern/observer.dart';
import 'package:gof_flutter/observer_pattern/subject.dart';

class WeatherData implements Subject {
  final List<Observer> observers = [];
  double? temperature;
  double? humidity;
  double? pressure;

  @override
  void notifyObservers() {
    for (final observer in observers) {
      observer.update();
    }
  }

  @override
  void registerObserver(Observer o) {
    observers.add(o);
  }

  @override
  void removeObserver(Observer o) {
    observers.remove(o);
  }

  void measurementsChanged() {
    notifyObservers();
  }

  void setMesurements(double temperature, double humidity, double pressure) {
    this.temperature = temperature;
    this.humidity = humidity;
    this.pressure = pressure;
    measurementsChanged();
  }
}
