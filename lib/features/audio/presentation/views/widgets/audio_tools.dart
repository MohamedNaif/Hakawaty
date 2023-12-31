import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../const.dart';
import 'time_on_slider.dart';

class AudioTools extends StatefulWidget {
  const AudioTools({
    super.key,
  });

  @override
  State<AudioTools> createState() => _AudioToolsState();
}

class _AudioToolsState extends State<AudioTools> {
  final AudioPlayer advancedPlayer = AudioPlayer();
  Duration _duration = const Duration();
  Duration _position = const Duration();
  String audioPath = 'https://server6.mp3quran.net/abkr/001.mp3';

  bool isPlaying = false;
  bool isLoop = false;
  @override
  void initState() {
    advancedPlayer.onDurationChanged.listen(
      (d) {
        setState(
          () {
            _duration = d;
          },
        );
      },
    );
    advancedPlayer.onPositionChanged.listen(
      (p) {
        setState(
          () {
            _position = p;
          },
        );
      },
    );
    advancedPlayer.setSourceUrl(audioPath);
    super.initState();
  }
  void changeToSecond ( int second){
    Duration newPosition = Duration(seconds: second) ;
    advancedPlayer.seek(newPosition) ;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TimeOnSlider(position: _position, duration: _duration),
        Slider(
      activeColor: Colors.blue,
      min: 0.0,
      max: _duration.inSeconds.toDouble(),
      value: _position.inSeconds.toDouble(),
      onChanged: (value) {
        setState(
          () {
            changeToSecond(value.toInt()) ;
          },
        );
      },
    ),
        const Gap(20),
        Row(
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
              onPressed: () async {
                if (isPlaying == false) {
                  advancedPlayer.play(UrlSource(audioPath));
                } else {
                  advancedPlayer.pause();
                }
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
              icon: Icon(
                isPlaying ? Icons.pause_circle : Icons.play_circle_fill,
                size: kAudioToolSize,
              ),
            ),
            IconButton(
              onPressed: () async {
                // await player.seek(const Duration(milliseconds: 5000));
              },
              icon: const Icon(
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


