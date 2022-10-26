import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
       builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Titulo'),
            content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
               Text('Alert - context'),
               SizedBox(height: 10),
               FlutterLogo()
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar', style: TextStyle( color: Colors.red ),)),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok')),
            ],
          );
       });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Alert showed!'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
               Text('Alert - context'),
               SizedBox(height: 10),
               FlutterLogo()
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar', style: TextStyle( color: Colors.red ),)),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok'))
            ],
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child: ElevatedButton(
            child: const Padding(
              padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15 ),
              child: Text('Mostrar alerta', style: TextStyle( fontSize: 16 ),),
            ),
            onPressed: () => 
              Platform.isWindows 
                ? displayDialogIOS(context)
                : displayDialogAndroid(context)
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
