import 'package:gof_flutter/facade_pattern/amplifier.dart';
import 'package:gof_flutter/facade_pattern/home_theater_facade.dart';
import 'package:gof_flutter/facade_pattern/popcorn_popper.dart';
import 'package:gof_flutter/facade_pattern/projector.dart';
import 'package:gof_flutter/facade_pattern/screen.dart';
import 'package:gof_flutter/facade_pattern/streaming_player.dart';
import 'package:gof_flutter/facade_pattern/theater_lights.dart';
import 'package:gof_flutter/facade_pattern/tuner.dart';

void runHomeTheaterTestDrive() {
  final amp = Amplifier();
  final tuner = Tuner();
  final player = StreamingPlayer();
  final projector = Projector();
  final screen = Screen();
  final lights = TheaterLights();
  final popper = PopcornPopper();

  final homeTheater = HomeTheaterFacade(
      amp: amp,
      tuner: tuner,
      player: player,
      projector: projector,
      lights: lights,
      screen: screen,
      popper: popper);

  homeTheater.watchMovie('인디아나 존스:레이더스');
  homeTheater.endMovie();
}
