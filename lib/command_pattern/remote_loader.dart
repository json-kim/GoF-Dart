import 'package:gof_flutter/command_pattern/command/ceiling_fan_high_command.dart';
import 'package:gof_flutter/command_pattern/command/ceiling_fan_off_command.dart';
import 'package:gof_flutter/command_pattern/command/garage_door_down_command.dart';
import 'package:gof_flutter/command_pattern/command/garage_door_open_command.dart';
import 'package:gof_flutter/command_pattern/command/hottub_off_command.dart';
import 'package:gof_flutter/command_pattern/command/hottub_on_command.dart';
import 'package:gof_flutter/command_pattern/command/light_off_command.dart';
import 'package:gof_flutter/command_pattern/command/light_on_command.dart';
import 'package:gof_flutter/command_pattern/command/macro_command.dart';
import 'package:gof_flutter/command_pattern/command/stereo_off_command.dart';
import 'package:gof_flutter/command_pattern/command/stereo_on_with_cd_command.dart';
import 'package:gof_flutter/command_pattern/command/tv_off_command.dart';
import 'package:gof_flutter/command_pattern/command/tv_on_command.dart';
import 'package:gof_flutter/command_pattern/invoker/remote_control.dart';
import 'package:gof_flutter/command_pattern/reciever/ceiling_fan.dart';
import 'package:gof_flutter/command_pattern/reciever/garage_door.dart';
import 'package:gof_flutter/command_pattern/reciever/hottub.dart';
import 'package:gof_flutter/command_pattern/reciever/light.dart';
import 'package:gof_flutter/command_pattern/reciever/stereo.dart';
import 'package:gof_flutter/command_pattern/reciever/tv.dart';

void runRemoteLoader() {
  final remote = RemoteControl();

  final livingRoomLight = Light(spot: 'Living Room');
  final kitchenLight = Light(spot: 'Kitchen');
  final livingRoomCeilingFan = CeilingFan(spot: 'Living Room');
  final garageDoor = GarageDoor();
  final stereo = Stereo(spot: 'Living Room');
  final tv = Tv(spot: 'Living Room');
  final hottub = Hottub(spot: 'Bathroom');

  final livingRoomLightOn = LightOnCommand(light: livingRoomLight);
  final livingRoomLightOff = LightOffCommand(light: livingRoomLight);
  final kitchenLightOn = LightOnCommand(light: kitchenLight);
  final kitchenLightOff = LightOffCommand(light: kitchenLight);

  final livingRoomCeilingFanHigh =
      CeilingFanHighCommand(ceilingFan: livingRoomCeilingFan);
  final livingRoomCeilingFanOff =
      CeilingFanOffCommand(ceilingFan: livingRoomCeilingFan);

  final garageDoorUp = GarageDoorOpenCommand(garageDoor: garageDoor);
  final garageDoorDown = GarageDoorDownCommand(garageDoor: garageDoor);

  final stereoOnWithCd = StereoOnWithCdCommand(stereo: stereo);
  final stereoOff = StereoOffCommand(stereo: stereo);

  final livingRoomTvOn = TvOnCommand(tv: tv);
  final livingRoomTvOff = TvOffCommand(tv: tv);

  final hottubOn = HottubOnCommand(hottub: hottub);
  final hottubOff = HottubOffCommand(hottub: hottub);

  final partyOn = [livingRoomLightOn, stereoOnWithCd, livingRoomTvOn, hottubOn];
  final partyOff = [livingRoomLightOff, stereoOff, livingRoomTvOff, hottubOff];

  final partyOnMacro = MacroCommand(commands: partyOn);
  final partyOffMacro = MacroCommand(commands: partyOff);

  remote.setCommand(0, livingRoomLightOn, livingRoomLightOff);
  remote.setCommand(1, kitchenLightOn, kitchenLightOff);
  remote.setCommand(2, livingRoomCeilingFanHigh, livingRoomCeilingFanOff);
  remote.setCommand(3, garageDoorUp, garageDoorDown);
  remote.setCommand(4, stereoOnWithCd, stereoOff);
  remote.setCommand(5, partyOnMacro, partyOffMacro);

  print(remote);

  remote.onButtonPushed(0);
  remote.offButtonPushed(0);
  remote.onButtonPushed(1);
  remote.offButtonPushed(1);
  remote.onButtonPushed(2);
  remote.offButtonPushed(2);
  remote.onButtonPushed(3);
  remote.offButtonPushed(3);
  remote.onButtonPushed(4);
  remote.offButtonPushed(4);
  remote.onButtonPushed(5);
  remote.offButtonPushed(5);
}
