import 'package:gof_flutter/observer_pattern/current_conditions_display.dart';
import 'package:gof_flutter/observer_pattern/weather_data.dart';

void runWeatherStation() {
  final weatherData = WeatherData();

  final currentConditionsDisplay =
      CurrentConditionsDisplay(weatherData: weatherData);

  weatherData.setMesurements(80, 65, 30.4);
  weatherData.setMesurements(82, 70, 29.2);
  weatherData.setMesurements(78, 90, 29.2);
}
