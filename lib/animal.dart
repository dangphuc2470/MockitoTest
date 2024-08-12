import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  String makeSound() => "Some sound";
  Future<String> fetchFood(String foodType) async => "Fetching $foodType";
  bool isHungry() => true;
}