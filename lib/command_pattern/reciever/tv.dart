class Tv {
  Tv({required this.spot});

  final String spot;
  int channel = 0;
  int volume = 10;

  void on() {
    print('$spot TV를 켭니다');
  }

  void off() {
    print('$spot TV를 끕니다');
  }

  void setInputChannel(int inputChannel) {
    channel = inputChannel;
    print('$spot TV 채널을 $channel 로 변경합니다');
  }

  void setVolume(int inputVolume) {
    volume = inputVolume;
    print('$spot TV 볼륨을 $volume 으로 변경합니다');
  }
}
