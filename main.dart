void main() {
  print('Inicio');

  httpGet('https:api.food.com/pizza').then((data) {
    print(data.toLowerCase());
  });

  print('Fin');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 2), () => 'Hola MUNDOOO - 2 seg');
}
