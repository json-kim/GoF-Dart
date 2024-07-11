import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/command/no_command.dart';

class RemoteControl {
  final onCommands = List<Command>.generate(7, (index) => NoCommand());
  final offCommands = List<Command>.generate(7, (index) => NoCommand());
  Command undoCommand = NoCommand();

  void setCommand(int slot, Command onCommand, Command offCommand) {
    onCommands[slot] = onCommand;
    offCommands[slot] = offCommand;
  }

  void onButtonPushed(int slot) {
    if (onCommands.length < slot + 1) return;

    onCommands[slot].excute();
    undoCommand = onCommands[slot];
  }

  void offButtonPushed(int slot) {
    if (offCommands.length < slot + 1) return;

    offCommands[slot].excute();
    undoCommand = offCommands[slot];
  }

  void undoButtonPushed() {
    undoCommand.undo();
  }

  @override
  String toString() {
    String remoteString = '\n------ 리모컨 ------\n';

    for (int i = 0; i < onCommands.length; i++) {
      remoteString +=
          '[slot $i]\t${onCommands[i].runtimeType}\t${offCommands[i].runtimeType}\n';
    }

    return remoteString;
  }
}
