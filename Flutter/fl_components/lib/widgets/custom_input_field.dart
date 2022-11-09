import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: ((value) {
        print(value);
      }),
      //PUEDE SER QUE ESTE VALOR SEA REQUERIDO O NO 
      validator: (value) {
        if (value == null ) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo 3 letras' : null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon( suffixIcon ),
        icon: icon == null ? null : Icon( icon ),
        //Icon ( Icons.kitesurfing_sharp)
        //Icon( Icons.sentiment_neutral_sharp)
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}