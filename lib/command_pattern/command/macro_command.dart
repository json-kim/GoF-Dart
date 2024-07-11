import 'package:gof_flutter/command_pattern/command/command.dart';

class MacroCommand implements Command {
  MacroCommand({required this.commands});

  final List<Command> commands;

  @override
  void excute() {
    for (var command in commands) {
      command.excute();
    }
  }

  @override
  void undo() {
    for (var command in commands) {
      command.undo();
    }
  }
}
