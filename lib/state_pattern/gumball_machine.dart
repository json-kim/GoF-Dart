class GumballMachine {
  static final int SOLD_OUT = 0;
  static final int NO_QUARTER = 1;
  static final int HAS_QUARTER = 2;
  static final int SOLD = 3;

  GumballMachine({this.count = 0}) : state = count > 0 ? NO_QUARTER : SOLD_OUT;

  int state;
  int count;
  String get stateString {
    if (state == SOLD_OUT) {
      return '매진';
    } else {
      return '동전 투입 대기중';
    }
  }

  void insertQuarter() {
    if (state == HAS_QUARTER) {
      print('동전은 한개만 넣어주세요.');
    } else if (state == NO_QUARTER) {
      state = HAS_QUARTER;
      print('동전을 넣으셨습니다.');
    } else if (state == SOLD_OUT) {
      print('매진되었습니다. 다음 기회에 이용해 주세요.');
    } else if (state == SOLD) {
      print('알맹이를 내보내고 있습니다.');
    }
  }

  void ejectQuarter() {
    if (state == HAS_QUARTER) {
      print('동전이 반환됩니다.');
      state = NO_QUARTER;
    } else if (state == NO_QUARTER) {
      print('동전을 넣어 주세요.');
    } else if (state == SOLD) {
      print('이미 알맹이를 뽑으셨습니다.');
    } else if (state == SOLD_OUT) {
      print('동전을 넣지 않으셨습니다. 동전이 반환되지 않습니다.');
    }
  }

  void turnCrank() {
    if (state == SOLD) {
      print('손잡이는 한번만 돌려주세요.');
    } else if (state == NO_QUARTER) {
      print('동전을 넣어 주세요.');
    } else if (state == SOLD_OUT) {
      print('매진되었습니다.');
    } else if (state == HAS_QUARTER) {
      print('손잡이를 돌리셨습니다.');
      state = SOLD;
      dispense();
    }
  }

  void dispense() {
    if (state == SOLD) {
      print('알맹이를 내보내고 있습니다.');
      count--;
      if (count == 0) {
        print('더 이상 알맹이가 없습니다');
        state = SOLD_OUT;
      } else {
        state = NO_QUARTER;
      }
    } else if (state == NO_QUARTER) {
      print('동전을 넣어 주세요.');
    } else if (state == SOLD_OUT) {
      print('매진입니다.');
    } else if (state == HAS_QUARTER) {
      print('알맹이를 내보낼 수 없습니다.');
    }
  }

  @override
  String toString() {
    return '\n주식회사 왕뽑기\n다트로 돌아가는 최신형 뽑기 기계\n남은 개수: $count개\n$stateString\n';
  }
}
