import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Cicle Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5 ),
            child: CircleAvatar(
              child: const Text('OS'),
              backgroundColor: Colors.orange[900],
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://i.pinimg.com/736x/53/9b/06/539b067e7d8609ac5776a25a3eb54978--one-piece-comic-book.jpg'),)
      ),
    );
  }
}