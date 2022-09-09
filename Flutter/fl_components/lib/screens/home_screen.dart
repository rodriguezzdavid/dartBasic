import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.access_alarms_outlined),
                  title: const Text('Nombre de ruta'),
                  onTap: () {
                    final route = MaterialPageRoute(
                        builder: (context) => const Listview2Screen());

                    Navigator.pushNamed(context, 'card');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
