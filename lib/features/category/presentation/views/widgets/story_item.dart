import 'package:flutter/material.dart';

import 'story_cover.dart';
import 'story_details.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.storyCover,
  });
  final String storyCover;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const StoryDetails(),
        StoryCover(storyCover: storyCover),
      ],
    );
  }
}
