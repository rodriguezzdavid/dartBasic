//import 'dart:math' as math;

void main() {
  final perro = new Perro();
  final gato = new Gato();
  final pato = new Pato();

  sonidoAnimal(perro);
  sonidoAnimal(gato);
  sonidoAnimal(pato);
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

abstract class Animal {
  int? patas;
  Animal();

  void emitirSonido();
}

class Perro implements Animal {
  int? patas;
  void emitirSonido() => print('Guauuuu');
}

class Gato implements Animal {
  int? patas;
  int? cola;
  void emitirSonido() => print('Miauu');
}

class Pato implements Animal {
  int? patas;
  int? alas;
  int? pico;
  void emitirSonido() => print('Kuuuack');
}
