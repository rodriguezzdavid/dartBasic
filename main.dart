void main() {
  final nombre = 'Steven';
  //saludar('Greetings', nombre);
  salu2(nombre: nombre);
}

void saludar(String msg, [String persona = '--no name--']) {
  print('$msg $persona');
}

void salu2({String nombre = '--no name--', String? mensaje}) {
  print('$mensaje $nombre');
}
