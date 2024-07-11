import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/tv.dart';

class TvOffCommand implements Command {
  TvOffCommand({required this.tv});

  final Tv tv;

  @override
  void excute() {
    tv.off();
  }

  @override
  void undo() {
    tv.on();
  }
}
