import 'package:gof_flutter/command_pattern/command/command.dart';

class NoCommand implements Command {
  @override
  void excute() {
    print('설정된 명령이 없습니다');
  }

  @override
  void undo() {
    print('설정된 명령이 없습니다');
  }
}
