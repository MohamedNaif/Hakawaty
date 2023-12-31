import 'package:flutter/material.dart';

class AudioSlider extends StatefulWidget {
  const AudioSlider({super.key});

  @override
  State<AudioSlider> createState() => _AudioSliderState();
}

class _AudioSliderState extends State<AudioSlider> {
  double val = 0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.blue,
      min: 0,
      max: 100,
      value: val,
      onChanged: (value) {
        setState(
          () {
            val = value;
          },
        );
      },
    );
  }
}
