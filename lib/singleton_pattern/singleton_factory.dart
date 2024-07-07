class SingletonFactory {
  static SingletonFactory? _uniqueInstance;
  SingletonFactory._();

  factory SingletonFactory() => _uniqueInstance ??= SingletonFactory._();
}
