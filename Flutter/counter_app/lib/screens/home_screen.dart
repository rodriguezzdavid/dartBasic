import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 10,
        //backgroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Giro de Italia',
                style: fontSize30,
              ),
              Text(
                'Tour de Francia',
                style: fontSize30,
              ),
            ],
          ),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        hoverElevation: 50,
        child: Icon(Icons.pedal_bike_rounded),
        onPressed: () {
          print('object');
        },
      ),
    );
  }
}
