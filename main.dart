void main() async {
  //#1
  print('Inicio');
  // httpGet('https:api.food.com/pizza').then((data) {
  //   print(data.toLowerCase());
  // });

  //#2
  final nombre = await getNombre('20 000 000');
  getNombre('20').then(print);
  print(nombre);

  //#3
  print(await httpGet('https://api.nasa.com/aliens'));

  //#4
  print('Fin');
}

Future<String> getNombre(String id) async {
  return '$id - Fernando';
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 2), () => 'Hola MUNDOOO - 2 SEG');
}
