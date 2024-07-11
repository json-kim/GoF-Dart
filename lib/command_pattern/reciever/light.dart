class Light {
  Light({required this.spot});

  final String spot;

  void on() {
    print('$spot 불을 켭니다');
  }

  void off() {
    print('$spot 불을 끕니다');
  }
}
