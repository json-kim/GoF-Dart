import 'package:gof_flutter/facade_pattern/amplifier.dart';

class Tuner {
  Amplifier? amplifier;

  void on(Amplifier amplifier) {
    print('$this를 켭니다');
    this.amplifier = amplifier;
  }

  void off() {
    print('$this를 끕니다');
  }

  void setAm() {
    print('$this Am을 설정합니다');
  }

  void setFm() {
    print('$this Fm을 설정합니다');
  }

  void setFrequency() {
    print('$this 주파수를 설정합니다');
  }

  @override
  String toString() {
    return '';
  }
}
