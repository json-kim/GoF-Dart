import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/hottub.dart';

class HottubOffCommand implements Command {
  HottubOffCommand({required this.hottub});

  final Hottub hottub;

  @override
  void excute() {
    hottub.off();
  }

  @override
  void undo() {
    hottub.on();
  }
}
