//import 'dart:math' as math;

void main() {
  final iroman = new Heroe('Tony Stark');
  final spiderman = new Heroe('Peter Parker');
  final tanos = new Villano('Tanos');

  print(iroman.nombre);
  print(spiderman.nombre);
  print(tanos.maldad);
}

abstract class Personaje {
  String? poder;
  String? nombre;

  Personaje(this.nombre);

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 110;
  Heroe(String nombre) : super(nombre);
}

class Villano extends Personaje {
  int maldad = 100;
  Villano(String nombre) : super(nombre);
}
