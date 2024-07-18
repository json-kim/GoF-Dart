import 'package:gof_flutter/pattern_complex/duck/abstract_duck_factory.dart';
import 'package:gof_flutter/pattern_complex/duck/flock.dart';
import 'package:gof_flutter/pattern_complex/duck/goose.dart';
import 'package:gof_flutter/pattern_complex/duck/goose_adapter.dart';
import 'package:gof_flutter/pattern_complex/duck/quack_counter.dart';
import 'package:gof_flutter/pattern_complex/duck/quackable.dart';
import 'package:gof_flutter/pattern_complex/duck/quackologist.dart';

class DuckSimulator {
  void simulate(AbstractDuckFactory duckFactory) {
    Quackable redheadDuck = duckFactory.createRedheadDuck();
    Quackable duckCall = duckFactory.createDuckCall();
    Quackable rubberDuck = duckFactory.createRubberDuck();
    Quackable gooseAdapter = GooseAdapter(goose: Goose());

    print('오리 시뮬레이션 게임');

    final flockOfDucks = Flock();

    flockOfDucks.add(redheadDuck);
    flockOfDucks.add(duckCall);
    flockOfDucks.add(rubberDuck);
    flockOfDucks.add(gooseAdapter);

    final flockOfMallards = Flock();

    Quackable mallardDuck1 = duckFactory.createMallardDuck();
    Quackable mallardDuck2 = duckFactory.createMallardDuck();
    Quackable mallardDuck3 = duckFactory.createMallardDuck();
    Quackable mallardDuck4 = duckFactory.createMallardDuck();

    flockOfMallards.add(mallardDuck1);
    flockOfMallards.add(mallardDuck2);
    flockOfMallards.add(mallardDuck3);
    flockOfMallards.add(mallardDuck4);

    flockOfDucks.add(flockOfMallards);

    final quackologist = Quackologist();
    flockOfDucks.registerObserver(quackologist);

    simulateDuck(flockOfDucks);

    print('오리가 소리 낸 횟수 : ${QuackCounter.numberOfQuacks}');
  }

  void simulateDuck(Quackable duck) {
    duck.quack();
  }
}
