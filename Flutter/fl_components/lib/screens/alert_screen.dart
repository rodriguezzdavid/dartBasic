import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child: ElevatedButton(
            child: const Padding(
              padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15 ),
              child: Text('Mostrar alerta', style: TextStyle( fontSize: 16 ),),
            ),
            onPressed: () {}
            ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.sports_gymnastics ),
        onPressed: () {
          Navigator.pop(context);
        }),
    );
  }
}
