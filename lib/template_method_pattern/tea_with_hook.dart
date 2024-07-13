import 'dart:convert';
import 'dart:io';

import 'package:gof_flutter/template_method_pattern/caffeine_beverage_with_hook.dart';

class TeaWithHook extends CaffeineBeverageWithHook {
  @override
  void addCondiments() {
    print('레몬을 추가하는 중');
  }

  @override
  void brew() {
    print('찻잎을 우려내는 중');
  }

  @override
  bool customerWantsCondiments() {
    String answer = getUserInput();

    if (answer.toLowerCase().startsWith('y')) {
      return true;
    } else {
      return false;
    }
  }

  String getUserInput() {
    print('티에 레몬을 넣을까요 (y/n)?');

    var input = stdin.readLineSync(encoding: utf8);

    return input ?? 'no';
  }
}
