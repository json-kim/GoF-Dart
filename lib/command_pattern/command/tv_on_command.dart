import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/tv.dart';

class TvOnCommand implements Command {
  TvOnCommand({required this.tv});

  final Tv tv;

  @override
  void excute() {
    tv.on();
  }

  @override
  void undo() {
    tv.off();
  }
}
