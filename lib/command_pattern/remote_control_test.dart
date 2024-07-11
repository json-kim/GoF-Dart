import 'package:gof_flutter/command_pattern/command/garage_door_open_command.dart';
import 'package:gof_flutter/command_pattern/command/light_on_command.dart';
import 'package:gof_flutter/command_pattern/invoker/simple_remote_control.dart';
import 'package:gof_flutter/command_pattern/reciever/garage_door.dart';
import 'package:gof_flutter/command_pattern/reciever/light.dart';

void runRemoteControlTest() {
  final remote = SimpleRemoteControl();
  final light = Light(spot: '거실');
  final lightOn = LightOnCommand(light: light);
  final garageDoor = GarageDoor();
  final garageOpen = GarageDoorOpenCommand(garageDoor: garageDoor);

  remote.slot = lightOn;
  remote.buttonWasPressed();
  remote.slot = garageOpen;
  remote.buttonWasPressed();
}
