
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../const.dart';
import 'audio_slider.dart';

class AudioTools extends StatefulWidget {
  const AudioTools({
    super.key,
  });

  @override
  State<AudioTools> createState() => _AudioToolsState();
}

class _AudioToolsState extends State<AudioTools> {
  bool isRun =false ;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const AudioSlider(),
        const Gap(20),
        Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon:  const Icon(
            Icons.keyboard_double_arrow_left,
            size: kAudioToolSize,
          ),
        ),
        IconButton(
          onPressed: () async{
            setState(() {
              isRun = !isRun ;
            });
          },
          icon: Icon(
            isRun ? Icons.pause_circle : Icons.play_circle_fill,
            size: kAudioToolSize,
          ),
        ),
        IconButton(
          onPressed: () async{
            // await player.seek(const Duration(milliseconds: 5000));
          },
          icon:  const Icon(
            Icons.keyboard_double_arrow_right,
            size: kAudioToolSize,
          ),
        ),
      ],
    )
      ],
    );
  }
}
