import 'package:fl_components/widgets/widgets.dart';
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
          CustomCardType1(),
          SizedBox( height: 10 ),

          CustomCardType2(imageUrl: 'https://img1.ak.crunchyroll.com/i/spire2/a6e36e575f9d9d38d1cf40d6769980a31651739960_main.jpg', subTitle: 'Rey Pirata'),
          SizedBox( height: 10 ),
          
          CustomCardType2(imageUrl: 'https://ritmosocial.com/wp-content/uploads/2021/05/MSR-2018-Header-adiyogi-1.png', subTitle: 'Isha Yoga'),
          SizedBox( height: 10 ),
          
          CustomCardType2(imageUrl: 'https://as01.epimg.net/meristation/imagenes/2022/05/08/noticias/1651998508_361943_1652017073_noticia_normal.jpg'),
          SizedBox( height: 100 ),
        ]),
    );
  }
}


