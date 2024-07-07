import 'package:gof_flutter/factory_pattern/ingredient/cheese.dart';
import 'package:gof_flutter/factory_pattern/ingredient/clams.dart';
import 'package:gof_flutter/factory_pattern/ingredient/dough.dart';
import 'package:gof_flutter/factory_pattern/ingredient/pepperoni.dart';
import 'package:gof_flutter/factory_pattern/ingredient/sauce.dart';
import 'package:gof_flutter/factory_pattern/ingredient/veggies.dart';

abstract class Pizza {
  String? name;
  Dough? dough;
  Sauce? sauce;
  Cheese? cheese;
  List<Veggies>? veggies;
  Pepperoni? pepperoni;
  Clams? clams;

  void prepare();

  void bake() {
    print('175도에서 25분간 굽기');
  }

  void cut() {
    print('피자를 사선으로 자르기');
  }

  void box() {
    print('상자에 피자 담기');
  }

  @override
  String toString() {
    return name ?? '피자';
  }
}
