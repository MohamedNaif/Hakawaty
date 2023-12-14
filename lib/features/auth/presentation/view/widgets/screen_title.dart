import 'package:flutter/material.dart';

import '../../../../../const.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          const TextStyle(fontSize: 40, color: kThirdColor, letterSpacing: 2.5),
    );
  }
}
