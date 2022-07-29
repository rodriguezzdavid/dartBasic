import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int steps = 0;
  int km = 0;

  void increse() {
    steps++;
    km += 165;
    setState(() {});
  }

  void decrease() {
    steps--;
    km -= 165;
    setState(() {});
  }

  void reset() {
    steps = 0;
    km = 0;
    setState(() {});
  }

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increseFn: increse,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          hoverElevation: 50,
          child: const Icon(Icons.self_improvement_rounded),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
            hoverElevation: 50,
            child: const Icon(Icons.pedal_bike_rounded),
            onPressed: () => increseFn()),
        FloatingActionButton(
          hoverElevation: 50,
          child: const Icon(Icons.delete_forever_outlined),
          onPressed: () => resetFn(),
        ),
      ],
    );
  }
}
