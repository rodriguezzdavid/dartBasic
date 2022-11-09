import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Forms'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', helperText: 'Solo letras', icon: Icons.kitesurfing_sharp, suffixIcon: Icons.sentiment_neutral_sharp ),
              SizedBox(height : 20),
              CustomInputField(labelText: 'Ocupacion', hintText: 'Ocupacion', helperText: '', icon: Icons.balcony_sharp, suffixIcon: Icons.temple_hindu_rounded ),
            ]
            ),
          ),
        )
    );
  }
}

