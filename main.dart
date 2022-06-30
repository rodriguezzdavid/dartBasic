void main() {
  final wolverine = Heroe(nombre: 'Logan', poder: 'Regeneracion');
  final vision = Heroe(nombre: 'Vision', poder: 'Rayos X');

  print(wolverine);
  print(vision);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({required this.nombre, required this.poder});

  String toString() {
    return 'Heroe: nombre: ${this.nombre} poder: ${this.poder}';
  }
}
