class Stereo {
  Stereo({required this.spot});

  final String spot;
  StereoMode mode = StereoMode.none;
  int volume = 0;

  void on() {
    print('$spot 스테레오를 켭니다');
  }

  void off() {
    mode = StereoMode.none;
    print('$spot 스테레오를 끕니다');
  }

  void setCd() {
    mode = StereoMode.cd;
    print('$spot 스테레오에 CD를 설정합니다');
  }

  void setDvd() {
    mode = StereoMode.dvd;
    print('$spot 스테레오에 DVD를 설정합니다');
  }

  void setRadio() {
    mode = StereoMode.radio;
    print('$spot 스테레오에 라디오를 설정합니다');
  }

  void setVolume(int volume) {
    print('스테레오 볼륨을 $volume 으로 설정합니다 ');
  }
}

enum StereoMode { cd, dvd, radio, none }
