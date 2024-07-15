import 'package:gof_flutter/proxy_pattern/subject.dart';

class RealSubject implements Subject {
  @override
  void request() {
    print('실제 작업을 처리하는 객체입니다');
  }
}
