import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int steps = 0;
  int km = 0;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Giro de Italia - Steps', style: fontSize30),
            Text('$steps', style: fontSize30),
            Text('Tour de Francia - Km', style: fontSize30),
            Text('$km', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            hoverElevation: 50,
            child: const Icon(Icons.data_exploration),
            onPressed: () {
              steps -= 1;
              km -= 165;
              setState(() {});
              print('object $steps - $km');
            },
          ),
          FloatingActionButton(
            hoverElevation: 50,
            child: const Icon(Icons.pedal_bike_rounded),
            onPressed: () {
              steps++;
              km += 165;
              setState(() {});
              print('object $steps - $km');
            },
          ),
          FloatingActionButton(
            hoverElevation: 50,
            child: const Icon(Icons.woo_commerce_outlined),
            onPressed: () {
              steps = 0;
              km = 0;
              setState(() {});
              print('object $steps - $km');
            },
          ),
        ],
      ),
    );
  }
}
