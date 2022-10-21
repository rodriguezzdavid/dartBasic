import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? subTitle;

  const CustomCardType2({
      super.key,
      required this.imageUrl,
      this.subTitle
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
      elevation: 10,
      shadowColor: AppTheme.primaryColor.withOpacity(0.7),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage( imageUrl ),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),

          ),
          if ( subTitle != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( subTitle ?? 'No title' )
            )
        ]),
    );
  }
}