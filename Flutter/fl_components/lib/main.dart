import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

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
        title: 'MATERIAL APP TOOL.KIT',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Listview1Screen());
  }
}
