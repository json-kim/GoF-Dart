class CeilingFan {
  CeilingFan({required this.spot});

  final String spot;
  Speed speed = Speed.zero;

  void high() {
    changeFanSpeed(Speed.high);
  }

  void medium() {
    changeFanSpeed(Speed.medium);
  }

  void low() {
    changeFanSpeed(Speed.low);
  }

  void off() {
    changeFanSpeed(Speed.zero);
  }

  void changeFanSpeed(Speed inputSpeed) {
    if (speed == inputSpeed) return;

    speed = inputSpeed;
    print('$spot 팬 속도를 $speed로 설정합니다');
  }

  String getSpeed() {
    return speed.toString();
  }
}

enum Speed {
  high,
  medium,
  low,
  zero;

  const Speed();

  @override
  String toString() {
    return name.toUpperCase();
  }
}
