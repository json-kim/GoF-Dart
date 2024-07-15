import 'package:gof_flutter/state_pattern/gumball_machine.dart';

void runGumballMachineTestDrive() {
  final gumballMachine = GumballMachine(count: 5);

  print(gumballMachine);

  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();

  print(gumballMachine);

  gumballMachine.insertQuarter();
  gumballMachine.ejectQuarter();
  gumballMachine.turnCrank();

  print(gumballMachine);

  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  gumballMachine.ejectQuarter();

  print(gumballMachine);

  gumballMachine.insertQuarter();
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();

  print(gumballMachine);
}
