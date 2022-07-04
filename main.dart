abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volar {
  void volar() => print('Puedo volar');
}

abstract class Caminar {
  void caminar() => print('Puedo caminar');
}

abstract class Nadar {
  void nadar() => print('Puedo nadar');
}

class Delfin extends Mamifero with Nadar {}

class Murcielago extends Mamifero with Nadar, Caminar {}

class Gato extends Mamifero with Caminar {}

class Paloma extends Ave with Caminar, Volar {}

class Pato extends Ave with Nadar, Caminar, Volar {}

class Tiburon extends Ave with Nadar {}

class PezVolador extends Ave with Nadar, Volar {}

void main() {
  final flipper = new Delfin();
  flipper.nadar();

  final donal = new Pato();
  donal.caminar();
  donal.volar();
  donal.nadar();

  final espantaTiburon = new Tiburon();
  espantaTiburon.nadar();
}
