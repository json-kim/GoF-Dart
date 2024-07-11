class Hottub {
  Hottub({required this.spot});

  final String spot;

  int temperature = 0;

  void on() {
    print('$spot 온수 욕조를 켭니다');
  }

  void off() {
    print('$spot 온수 욕조를 끕니다');
  }

  void circulate() {
    print('$spot 온수 욕조를 순환시킵니다');
  }

  void jetsOn() {
    print('$spot 온수 욕조 제트를 켭니다');
  }

  void jetsOff() {
    print('$spot 온수 욕조 제트를 끕니다');
  }

  void setTemperature(int inputTemperature) {
    temperature = inputTemperature;
    print('$spot 온수 욕조 온도를 $temperature 로 변경합니다');
  }
}
