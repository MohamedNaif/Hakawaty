import 'package:flutter/material.dart';

import '../../../../../const.dart';

class AudioPlayerButtons extends StatefulWidget {
  const AudioPlayerButtons({
    super.key,
  });

  @override
  State<AudioPlayerButtons> createState() => _AudioPlayerButtonsState();
}

class _AudioPlayerButtonsState extends State<AudioPlayerButtons> {
  bool isRun = false ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_double_arrow_left,
            size: kAudioToolSize,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            isRun ? Icons.pause_circle : Icons.play_circle_fill,
            size: kAudioToolSize,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_double_arrow_right,
            size: kAudioToolSize,
          ),
        ),
      ],
    );
  }
}