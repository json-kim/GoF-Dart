class PopcornPopper {
  void on() {
    print('$this를 켭니다');
  }

  void off() {
    print('$this를 끕니다');
  }

  void pop() {
    print('팝콘을 튀깁니다');
  }

  @override
  String toString() {
    return '팝콘 기계';
  }
}
