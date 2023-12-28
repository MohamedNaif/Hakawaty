import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/core/utils/styles.dart';
import 'package:hakawaty/features/audio/presentation/views/widgets/audio_slider.dart';

import 'audio_player_buttons.dart';
import 'book_cover_music.dart';

class AudioViewBody extends StatefulWidget {
  const AudioViewBody({super.key});

  @override
  State<AudioViewBody> createState() => _AudioViewBodyState();
}

class _AudioViewBodyState extends State<AudioViewBody> {
  double val = 0;
  bool isRun = false;
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(20),
        BookCoverMusic(
          bookCover: 'assets/images/story1.jpg',
          heightRatioFromScreenHeight: 0.45,
        ),
        Gap(20),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Story Name',
              style: Style.textStyle22,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Story description',
              style: Style.textStyle16,
            ),
          ),
        ),
        Gap(40),
        AudioSlider(),
        Gap(20),
        AudioPlayerButtons(),
      ],
    );
  }
}
