import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Ao no Exorcist',
    'Kimetsu No Yaiba',
    'One Piece',
    'Dragon Ball',
    'Ranma 1/2',
    'Naruto',
    'Death Note',
    'Bleach',
    'Fairy Tail',
    'Yawamuchi Pedal'
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type #2'),
          elevation: 0,
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              final animes = options[i];
              print(animes);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
