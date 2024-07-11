import 'package:gof_flutter/facade_pattern/amplifier.dart';
import 'package:gof_flutter/facade_pattern/popcorn_popper.dart';
import 'package:gof_flutter/facade_pattern/projector.dart';
import 'package:gof_flutter/facade_pattern/screen.dart';
import 'package:gof_flutter/facade_pattern/streaming_player.dart';
import 'package:gof_flutter/facade_pattern/theater_lights.dart';
import 'package:gof_flutter/facade_pattern/tuner.dart';

class HomeTheaterFacade {
  HomeTheaterFacade({
    required this.amp,
    required this.tuner,
    required this.player,
    required this.projector,
    required this.lights,
    required this.screen,
    required this.popper,
  });

  final Amplifier amp;
  final Tuner tuner;
  final StreamingPlayer player;
  final Projector projector;
  final TheaterLights lights;
  final Screen screen;
  final PopcornPopper popper;

  void watchMovie(String movie) {
    print('영화 볼 준비중');
    popper.on();
    popper.pop();

    lights.dim(10);

    screen.down();

    projector.on();
    projector.wideScreenMode();
    projector.setInput(player);

    amp.on();
    amp.setStreamingPlayer(player);
    amp.setSurroundSound();
    amp.setVolume(5);

    player.on();
    player.play(movie);
  }

  void endMovie() {
    print('홈시어터를 끄는 중');

    popper.off();
    lights.on();
    screen.up();
    projector.off();
    amp.off();
    player.stop();
    player.off();
  }

  void listenToRadio() {}

  void endRadio() {}
}
