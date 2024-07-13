import 'package:gof_flutter/template_method_pattern/duck_comparable.dart';

void runDuckSortTestDrive() {
  final ducks = [
    Duck(name: 'Daffy1', weight: 8),
    Duck(name: 'Daffy2', weight: 2),
    Duck(name: 'Daffy3', weight: 7),
    Duck(name: 'Daffy4', weight: 2),
    Duck(name: 'Daffy5', weight: 10),
    Duck(name: 'Daffy6', weight: 2),
  ];

  print('정렬 전:');
  display(ducks);

  ducks.sort();

  print('정렬 후:');
  display(ducks);
}

void display(List<Duck> ducks) {
  for (final duck in ducks) {
    print(duck);
  }
}
