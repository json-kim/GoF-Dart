class TheaterLights {
  void on() {
    print('$this을 켭니다');
  }

  void off() {
    print('$this을 끕니다');
  }

  void dim(int value) {
    print('$this을 $value로 변경합니다');
  }

  @override
  String toString() {
    return '영화관 조명';
  }
}
