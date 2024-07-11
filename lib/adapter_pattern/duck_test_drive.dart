import 'package:gof_flutter/adapter_pattern/duck.dart';
import 'package:gof_flutter/adapter_pattern/duck_adapter.dart';
import 'package:gof_flutter/adapter_pattern/mallard_duck.dart';
import 'package:gof_flutter/adapter_pattern/turkey.dart';
import 'package:gof_flutter/adapter_pattern/turkey_adapter.dart';
import 'package:gof_flutter/adapter_pattern/wild_turkey.dart';

void runDuckTestDrive() {
  Turkey turkey = WildTurkey();
  Duck turkeyAdapter = TurkeyAdapter(turkey: turkey);

  Duck duck = MallardDuck();
  Turkey duckAdapter = DuckAdapter(duck: duck);

  testDuck(turkeyAdapter);
  testTurkey(duckAdapter);
}

void testDuck(Duck duck) {
  duck.quack();
  duck.fly();
}

void testTurkey(Turkey turkey) {
  turkey.gobble();
  turkey.fly();
}
