import 'package:gof_flutter/command_pattern/command/command.dart';

class SimpleRemoteControl {
  Command? slot;

  void buttonWasPressed() {
    slot?.excute();
  }
}
