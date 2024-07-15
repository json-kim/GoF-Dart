import 'package:gof_flutter/proxy_pattern/real_subject.dart';
import 'package:gof_flutter/proxy_pattern/subject.dart';

class Proxy implements Subject {
  RealSubject? realSubject;

  @override
  void request() {
    if (realSubject != null) {
      realSubject?.request();
    } else {
      realSubject = RealSubject();
      realSubject?.request();
    }
  }
}
