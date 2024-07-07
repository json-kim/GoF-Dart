class Singleton {
  Singleton._();

  static Singleton? _uniqueInstance;

  static Singleton get instance {
    _uniqueInstance ??= Singleton._();

    return _uniqueInstance!;
  }
}
