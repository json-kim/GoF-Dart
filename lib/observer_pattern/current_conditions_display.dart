import 'package:gof_flutter/observer_pattern/display_element.dart';
import 'package:gof_flutter/observer_pattern/observer.dart';
import 'package:gof_flutter/observer_pattern/weather_data.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  CurrentConditionsDisplay({required this.weatherData}) {
    weatherData.registerObserver(this);
  }

  double? temperature;
  double? humidity;
  final WeatherData weatherData;

  @override
  void display() {
    print('현재 상태: 온도 ${temperature}F, 습도 ${humidity}%');
  }

  @override
  void update() {
    temperature = weatherData.temperature;
    humidity = weatherData.humidity;

    display();
  }
}
