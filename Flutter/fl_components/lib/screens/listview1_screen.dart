import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'RagnarOk',
    'La casa de papel',
    'Sex Education',
    'Rick & Morty',
    'Stranger Things',
    'Pablo Escobar',
    'DAHMER',
    'Disenchantment',
    'F•R•I•E•N•D•S',
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
          Text('Series'),
          Divider(),
          Text('Genero'),
        ]));
  }
}
