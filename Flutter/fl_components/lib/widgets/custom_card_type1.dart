import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon( Icons.house, color: AppTheme.primaryColor),
            title: Text('Ordenar la casa, \nLimpiar muebles'),
            subtitle: Text('Acomodar dispensa, escritorio \nPasar limpiador muebles, espejo y w40 bici.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok')
                )
              ],
            ),
          ),
        ],)
    );
  }
}