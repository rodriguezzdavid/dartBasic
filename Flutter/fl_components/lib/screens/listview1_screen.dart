import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'One Piece',
    'Dragon Ball',
    'Ranma 1/2',
    'Naruto',
    'Kimetsu No Yaiba'
  ];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type #1'),
        ),
        body: ListView(children: [
          ...options
              .map((animes) => ListTile(
                    title: Text(animes),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    visualDensity: VisualDensity.standard,
                  ))
              .toList(),
          Divider(),
          Text('Aventura'),
          Divider(),
          Text('Echido'),
        ]));
  }
}
