import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

  const SliderScreen({Key? key}) : super(key: key);
  
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders & CheckBox')
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.primaryColor,
            onChanged: _sliderEnabled ? (value){
              _sliderValue = value;
              setState(() {});
            }: null,
          ),
          Expanded(
            child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: const NetworkImage('https://img1.ak.crunchyroll.com/i/spire2/a6e36e575f9d9d38d1cf40d6769980a31651739960_main.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                  ),
                const SizedBox(height: 10,),
                Image(
                  image: const NetworkImage('https://img1.ak.crunchyroll.com/i/spire2/a6e36e575f9d9d38d1cf40d6769980a31651739960_main.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
                const SizedBox(height: 10,),
                Image(
                  image: const NetworkImage('https://img1.ak.crunchyroll.com/i/spire2/a6e36e575f9d9d38d1cf40d6769980a31651739960_main.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
                const SizedBox(height: 20,)
              ],
            ),
              
            ),
          ),  
          const SizedBox(height: 50),
          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) => setState(() {
          //     _sliderEnabled = value ?? true;
          //   }),
          // ),
          // Switch(
          //   value: _sliderEnabled,
          //   onChanged: (value) => setState(() {
          //     _sliderEnabled = value;
          //   })
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          )
        ],)
    );
  }
}