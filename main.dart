void main() {
  final rawJson = {'nombre': 'Tony Stark', 'poder': 'Dinero'};
  final ironman =
      new Heroe(nombre: rawJson['nombre']!, poder: rawJson['poder']!);
  //final ironman = Heroe.fromJson( rawJson );
  final iroman = Heroe.fromJson(rawJson);

  print(ironman);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({required this.nombre, required this.poder});

  Heroe.fromJson(Map<String, String> json)
      : this.nombre = json['nombre']!,
        this.poder = json['poder'] ?? 'No tiene poder';

  String toString() {
    return 'Heroe: nombre: ${this.nombre} poder: ${this.poder}';
  }
}
