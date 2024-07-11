import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/garage_door.dart';

class GarageDoorOpenCommand implements Command {
  GarageDoorOpenCommand({required this.garageDoor});

  final GarageDoor garageDoor;

  @override
  void excute() {
    garageDoor.up();
    garageDoor.lightOn();
  }

  @override
  void undo() {
    garageDoor.down();
    garageDoor.lightOff();
  }
}
