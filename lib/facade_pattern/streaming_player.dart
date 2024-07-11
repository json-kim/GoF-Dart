import 'package:gof_flutter/facade_pattern/amplifier.dart';
import 'package:gof_flutter/facade_pattern/player.dart';

class StreamingPlayer implements Player {
  Amplifier? amplifier;

  @override
  void on() {
    print('$this를 켭니다');
  }

  @override
  void off() {
    print('$this를 끕니다');
  }

  @override
  void pause() {
    print('$this를 잠깐 멈춥니다');
  }

  @override
  void play(String movie) {
    print('$this가 $movie 재생합니다');
  }

  void setSurroundAudio(Amplifier amplifier) {
    print('$this가 서라운드 오디오 옵션을 설정합니다');
    this.amplifier = amplifier;
  }

  void setTwoChannelAudio(Amplifier amplifier) {
    print('$this가 2채널 오디오 옵션을 설정합니다');
    this.amplifier = amplifier;
  }

  @override
  void stop() {
    print('$this가 스트리밍을 종료합니다');
  }

  @override
  String toString() {
    return '스트리밍 플레이어';
  }
}
