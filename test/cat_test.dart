// Annotation which generates the cat.mocks.dart library and the MockCat class.
@GenerateNiceMocks([MockSpec<Cat>()])
@GenerateNiceMocks([MockSpec<Dog>()])
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mokitotest/cat.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'cat_test.mocks.dart';



void main() {
  // Create mock object.
  final mockDog = MockDog();
  test('mockito test', () async {
    Cat realCat = Cat();
    realCat.dog = mockDog;
    when(mockDog.getType("Black")).thenAnswer((_) async => "Cho muc");
    String result = await realCat.getType("Black");
    expect(result, "Cho muc");
    // Stub the mock method
    // when(cat.sound()).thenReturn('Purr');
    // // Verify the mock method
    // expect(cat.sound(), 'Purr');
    //
    // when
    //
    // expect(realCat.getType("black"), "nigga");
    // expect(realCat.sound(), 'Meow');

  });

  test("test meo trang", () async
  {
    Cat realCat = Cat();
    realCat.dog = mockDog;


    when(mockDog.getLoai("Black")).thenAnswer((_) async => "Cho muc");
    String result = await realCat.getLoai("Black");
    expect(result, "Cho muc");

    expect(realCat.lives, 9);
    expect(realCat.eatFood("Dog"), true);
    await realCat.chew();
    expect(realCat.walk(["Viettel"]), 7);
    realCat.hunt("Viettek", "Security");
  });


}
