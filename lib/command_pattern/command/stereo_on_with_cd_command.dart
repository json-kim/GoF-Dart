import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/stereo.dart';

class StereoOnWithCdCommand implements Command {
  StereoOnWithCdCommand({required this.stereo});

  final Stereo stereo;

  @override
  void excute() {
    stereo.on();
    stereo.setCd();
    stereo.setVolume(11);
  }

  @override
  void undo() {
    stereo.off();
  }
}
