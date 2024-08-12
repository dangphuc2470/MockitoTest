import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';


// Real class
class Cat {
  var dog = Dog();
  String sound() => "Meow";
  Future<String> getType(String color)async{
    return dog.getType(color);
  }

  Future<String> getLoai(String color) async
  {
    return dog.getLoai(color);
  }
  bool eatFood(String food, {bool? hungry}) => true;
  Future<void> chew() async => print("Chewing...");
  int walk(List<String> places) => 7;
  void sleep() {}
  void hunt(String place, String prey) {}
  int lives = 9;

}

class Dog {
  String sound() => "Meow";
  Future<String> getType(String color) async {
    switch (color) {
      case "black":
        return "Meo mun";
      case "white":
        return "Meo trang";
      case "orange":
        return "Meo cam";
      case "lot of colors":
        return "Meo tam the";
      default:
        return "Unknown";
    }
  }

  Future<String> getLoai(String color) async{
    switch (color) {
      case "black":
        return "Meo mun";
      case "white":
        return "Meo trang";
      case "orange":
        return "Meo cam";
      case "lot of colors":
        return "Meo tam the";
      default:
        return "Unknown";
    }
  }
  bool eatFood(String food, {bool? hungry}) => true;
  Future<void> chew() async => print("Chewing...");
  int walk(List<String> places) => 7;
  void sleep() {}
  void hunt(String place, String prey) {}
  int lives = 9;
}

