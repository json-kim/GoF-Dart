import 'package:gof_flutter/command_pattern/command/command.dart';
import 'package:gof_flutter/command_pattern/reciever/stereo.dart';

class StereoOffCommand implements Command {
  StereoOffCommand({required this.stereo});

  final Stereo stereo;
  StereoMode? previousMode;
  int? previousVolume;

  @override
  void excute() {
    previousMode = stereo.mode;
    previousVolume = stereo.volume;
    stereo.off();
  }

  @override
  void undo() {
    stereo.on();
    switch (previousMode) {
      case StereoMode.cd:
        stereo.setCd();
        break;
      case StereoMode.dvd:
        stereo.setDvd();
        break;
      case StereoMode.radio:
        stereo.setRadio();
        break;
      case StereoMode.none:
        stereo.mode = StereoMode.none;
        break;
      case null:
        break;
    }
    if (previousVolume != null) {
      stereo.setVolume(previousVolume!);
    }
  }
}
