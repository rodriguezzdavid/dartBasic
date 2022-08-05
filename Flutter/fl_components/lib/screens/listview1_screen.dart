import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type #1'),
        ),
        body: ListView(
          children: [
            Text('Vamos despacio que tengo prisa'),
            Text('Fernando Herrera'),
            Text('Listview'),
            Text('Scott'),
            Text('Asad0'),
            Text('TOOL'),
            Text('Eminem'),
            Text('Giant'),
          ],
        ));
  }
}
