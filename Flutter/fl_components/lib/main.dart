import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NAVIGATOR',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      //onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
