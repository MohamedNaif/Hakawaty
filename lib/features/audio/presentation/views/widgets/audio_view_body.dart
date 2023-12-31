import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/const.dart';

import 'audio_tools.dart';
import 'book_cover_music.dart';
import 'book_details.dart';

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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal : kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(20),
          BookCoverMusic(
            bookCover: 'assets/images/story1.jpg',
            heightRatioFromScreenHeight: 0.45,
          ),
          Gap(20),
          BookDetails(),
          Gap(40),
          AudioTools(),
        ],
      ),
    );
  }
}
