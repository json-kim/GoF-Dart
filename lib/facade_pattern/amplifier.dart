import 'package:gof_flutter/facade_pattern/streaming_player.dart';
import 'package:gof_flutter/facade_pattern/tuner.dart';

class Amplifier {
  Tuner? tuner;
  StreamingPlayer? player;

  void on() {
    print('$this를 켭니다');
  }

  void off() {
    print('$this를 끕니다');
  }

  void setStreamingPlayer(StreamingPlayer player) {
    print('$this에 스트리밍 플레이어를 설정합니다');
    this.player = player;
  }

  void setStereoSound() {
    print('$this에 스테레오 사운드를 설정합니다');
    player?.setTwoChannelAudio(this);
  }

  void setSurroundSound() {
    print('$this에 서라운드 사운드를 설정합니다');
    player?.setSurroundAudio(this);
  }

  void setTuner(Tuner tuner) {
    print('$this에 튜너를 설정합니다');
    this.tuner = tuner;
    tuner.on(this);
  }

  void setVolume(int value) {
    print('$this의 볼륨을 $value로 설정합니다');
  }

  @override
  String toString() {
    return '앰프';
  }
}
