import 'package:type_handler/type_handler.dart';

part 'base.g.dart';

main() {
  print(FruitHandler.fruitHandler((apple) {
    return 1;
  }, (orange) {
    return 2;
  })(Apple()));
}

class MyFruitHandler extends FruitHandler<int> {
  @override
  int apple(Apple apple) {
    // TODO: implement apple
    return null;
  }

  @override
  int orange(Orange orange) {
    // TODO: implement orange
    return null;
  }
}

@Subtype()
class Fruit {}

class Apple extends Fruit {}

@Subtype()
class Orange extends Fruit {}

class A extends Orange {}

@Subtype()
class X {}

class Y extends X {}
