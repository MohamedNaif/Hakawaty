

import 'package:flutter/material.dart';

// import '../presentation/view/widget/profile_view_body.dart';
import '../presentation/view/widget/story_card.dart';

class MyStoryList extends StatelessWidget {
  final List<Map<String, String>> topStories = [
    {
      'title': 'Story 1',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg'
    },
    {
      'title': 'Story 1',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg'
    },
    {
      'title': 'Story 1',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg'
    },
    {
      'title': 'Story 1',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg'
    },

    // Add more stories as needed
  ];

   MyStoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topStories.length,
      itemBuilder: (context, index) {
        return StoryCard(
          title: topStories[index]['title']!,
          subtitle: topStories[index]['subtitle']!,
          image: topStories[index]['image']!,
        );
      },
    );
  }
}
