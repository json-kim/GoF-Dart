abstract class MenuComponent {
  String get name => throw UnimplementedError();
  String get description => throw UnimplementedError();
  double get price => throw UnimplementedError();
  bool get vegetarian => throw UnimplementedError();

  void add(MenuComponent menuComponent) => throw UnimplementedError();
  void remove(MenuComponent menuComponent) => throw UnimplementedError();
  MenuComponent getChild(int i) => throw UnimplementedError();
  void printComponent() => throw UnimplementedError();
}
