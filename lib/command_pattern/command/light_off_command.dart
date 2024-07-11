import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/light.dart';

class LightOffCommand implements Command {
  LightOffCommand({required this.light});

  final Light light;

  @override
  void excute() {
    light.off();
  }

  @override
  void undo() {
    light.on();
  }
}
