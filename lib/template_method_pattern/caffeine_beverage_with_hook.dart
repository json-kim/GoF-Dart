abstract class CaffeineBeverageWithHook {
  void prepareRecipe() {
    boilWater();
    brew();
    pourInCup();
    if (customerWantsCondiments()) {
      addCondiments();
    }
  }

  void brew();

  void addCondiments();

  void boilWater() {
    print('물 끓이는 중');
  }

  void pourInCup() {
    print('컵에 따르는 중');
  }

  bool customerWantsCondiments() {
    return true;
  }
}
