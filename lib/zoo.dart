import 'animal.dart';

class Zoo
{
  List<Animal> animals = [];
  void addAnimal(Animal animal)
  {
    animals.add(animal);
  }
  void removeAnimal(Animal animal)
  {
    animals.remove(animal);
  }
  void feedAnimals()
  {
    for (var animal in animals)
    {
      animal.fetchFood("meat");
    }
  }
  void makeAnimalsMakeSound()
  {
    for (var animal in animals)
    {
      animal.makeSound();
    }
  }
  void makeAnimalsHungry()
  {
    for (var animal in animals)
    {
      animal.isHungry();
    }
  }
  int totalAnimals()
  {
    return animals.length;
  }

  void getAnimal(int index)
  {
    animals[index];
  }

  void setAnimal(int index, Animal animal)
  {
    animals[index] = animal;
  }
}