import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mokitotest/animal.dart';
import 'package:mokitotest/zoo.dart';
import 'package:test/test.dart';
import 'zoo_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Zoo>()])
@GenerateNiceMocks([MockSpec<Animal>()])


void main()
{
  final mockAminal = MockAnimal();
  late Zoo zoo;

  setUp(() {
    zoo = Zoo();
    zoo.addAnimal(mockAminal);

  });

  test('Zoo should add animals', (){
    zoo.addAnimal(mockAminal);
    expect(zoo.totalAnimals(), 2);
  });

  test('Every test should create a new zoo', (){
    zoo.addAnimal(mockAminal);
    expect(zoo.totalAnimals(), 2);
  });

  test('Aminal is hungry before eat', ()
  {
    zoo.makeAnimalsHungry();
   // expect(zoo.animals[0].isHungry(), false);

    when(mockAminal.fetchFood('meat')).thenAnswer((_) async {
      when(mockAminal.isHungry()).thenReturn(false);
      return 'Fetching meat';
    });

    zoo.feedAnimals();
  //  expect(zoo.animals[0].isHungry(), true);

  });
}