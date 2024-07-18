import 'package:gof_flutter/adapter_pattern/duck_test_drive.dart';
import 'package:gof_flutter/command_pattern/remote_control_test.dart';
import 'package:gof_flutter/command_pattern/remote_loader.dart';
import 'package:gof_flutter/composite_pattern/menu_test_drive.dart';
import 'package:gof_flutter/decorator_pattern/starbuzz_coffee.dart';
import 'package:gof_flutter/facade_pattern/home_theater_test_drive.dart';
import 'package:gof_flutter/factory_pattern/pizza_test.dart';
import 'package:gof_flutter/iterator_pattern/menu_test_drive.dart';
import 'package:gof_flutter/observer_pattern/weather_station.dart';
import 'package:gof_flutter/pattern_complex/duck/counting_duck_factory.dart';
import 'package:gof_flutter/pattern_complex/duck/duck_simulator.dart';
import 'package:gof_flutter/singleton_pattern/singleton_test.dart';
import 'package:gof_flutter/state_pattern/gumball_machine_test_drive.dart';
import 'package:gof_flutter/strategy_pattern/duck_simulator.dart';
import 'package:gof_flutter/template_method_pattern/beverage_test_drive.dart';
import 'package:gof_flutter/template_method_pattern/duck_sort_test_drive.dart';

void main(List<String> arguments) {
  // Strategy Pattern
  // runDuckSimulator();

  // Observer Pattern
  // runWeatherStation();

  // Decorator Pattern
  // runStarbuzzCoffee();

  // Factory Pattern
  // runPizzaTest();

  // Singleton Pattern
  // runSingletonTest();

  // Command Pattern
  // runRemoteControlTest();
  // runRemoteLoader();

  // Adapter Pattern
  // runDuckTestDrive();

  // Facade Pattern
  // runHomeTheaterTestDrive();

  // Template Method Pattern
  // runBeverageTestDrive();
  // runDuckSortTestDrive();

  // Iterator Pattern
  // runMenuTestDrive();
  // runMenuTestDriveCompositePattern();

  // State Pattern
  // runGumballMachineTestDrive();

  // Pattern Complex
  DuckSimulator().simulate(CountingDuckFactory());
}
