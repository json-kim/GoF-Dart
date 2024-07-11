import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/hottub.dart';

class HottubOnCommand implements Command {
  HottubOnCommand({required this.hottub});

  final Hottub hottub;

  @override
  void excute() {
    hottub.on();
  }

  @override
  void undo() {
    hottub.off();
  }
}
