import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/light.dart';

class LightOnCommand implements Command {
  LightOnCommand({required this.light});

  final Light light;

  @override
  void excute() {
    light.on();
  }

  @override
  void undo() {
    light.off();
  }
}
