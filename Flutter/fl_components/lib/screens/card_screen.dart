import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              
              children: const [
                ListTile(
                  leading: Icon( Icons.house, color: AppTheme.primaryColor),
                  title: Text('Ordenar la casa'),
                  subtitle: Text('Acomodar dispensa, escritorio'),
                ),
                Divider(),
                ListTile(
                  leading: Icon( Icons.clean_hands, color: AppTheme.primaryColor),
                  title: Text('Limpiar muebles'),
                  subtitle: Text('Pasar limpiador muebles, espejo y w40 bici, '),
                ),
                Divider(),
                ListTile(
                  leading: Icon( Icons.wallet, color: AppTheme.primaryColor),
                  title: Text('Piso'),
                  subtitle: Text('Desinfectante, palo piso'),
                ),Divider(),
                ListTile(
                  leading: Icon( Icons.window, color: AppTheme.primaryColor),
                  title: Text('Yoga'),
                  subtitle: Text('....'),
                ),
              ],)
          )
        ]),
    );
  }
}
