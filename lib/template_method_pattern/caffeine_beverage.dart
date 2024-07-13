abstract class CaffeineBeverage {
  void prepareRecipie() {
    boilWater();
    brew();
    pourInCup();
    addCondiments();
  }

  void brew();

  void addCondiments();

  void boilWater() {
    print('물 끓이는 중');
  }

  void pourInCup() {
    print('컵에 따르는 중');
  }
}
