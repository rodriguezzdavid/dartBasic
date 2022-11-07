import 'package:flutter/material.dart';

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
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: ((value) {
                  print(value);
                }),
                validator: (value) {
                  if (value == null ) return 'Este campo es requerido';
                  return value.length < 3 ? 'Minimo 3 letras' : null;
                },
                decoration: const InputDecoration(
                  hintText: 'User name',
                  labelText: 'Name',
                  helperText: 'Solo letras',
                  suffixIcon: Icon( Icons.sentiment_neutral_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ))
                  ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              )
            ]
            ),),)
    );
  }
}