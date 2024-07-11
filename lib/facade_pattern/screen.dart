class Screen {
  void up() {
    print('$this을 올립니다');
  }

  void down() {
    print('$this을 내립니다');
  }

  @override
  String toString() {
    return '스크린';
  }
}
