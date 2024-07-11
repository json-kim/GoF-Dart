import 'package:gof_flutter/facade_pattern/player.dart';

class Projector {
  Projector();

  Player? player;

  void on() {
    print('$this를 켭니다');
  }

  void off() {
    print('$this를 끕니다');
  }

  void tvMode() {
    print('$this를 tv 모드로 변경합니다');
  }

  void wideScreenMode() {
    print('$this를 와이드 스크린 모드로 변경합니다');
  }

  void setInput(Player player) {
    print('입력을 $player로 설정합니다');
  }

  @override
  String toString() {
    return '프로젝터';
  }
}
