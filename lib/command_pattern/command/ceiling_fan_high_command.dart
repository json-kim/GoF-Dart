import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/ceiling_fan.dart';

class CeilingFanHighCommand implements Command {
  CeilingFanHighCommand({required this.ceilingFan});

  final CeilingFan ceilingFan;
  Speed? previousSpeed;

  @override
  void excute() {
    ceilingFan.high();
    previousSpeed = ceilingFan.speed;
  }

  @override
  void undo() {
    switch (previousSpeed) {
      case Speed.high:
        ceilingFan.high();
        break;
      case Speed.medium:
        ceilingFan.medium();
        break;
      case Speed.low:
        ceilingFan.low();
        break;
      case Speed.zero:
        ceilingFan.off();
        break;
      case null:
        break;
    }
  }
}
