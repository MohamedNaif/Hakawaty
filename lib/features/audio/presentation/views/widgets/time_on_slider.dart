import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TimeOnSlider extends StatelessWidget {
  const TimeOnSlider({
    super.key,
    required Duration position,
    required Duration duration,
  })  : _position = position,
        _duration = duration;

  final Duration _position;
  final Duration _duration;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          _position.toString().split(".")[0],
          style: Style.textStyle16,
        ),
        const Spacer(),
        Text(
          _duration.toString().split(".")[0],
          style: Style.textStyle16,
        ),
      ],
    );
  }
}
