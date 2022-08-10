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
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
