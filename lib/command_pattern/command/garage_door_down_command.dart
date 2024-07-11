import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/garage_door.dart';

class GarageDoorDownCommand implements Command {
  GarageDoorDownCommand({required this.garageDoor});

  final GarageDoor garageDoor;

  @override
  void excute() {
    garageDoor.lightOff();
    garageDoor.down();
  }

  @override
  void undo() {
    garageDoor.lightOn();
    garageDoor.up();
  }
}
