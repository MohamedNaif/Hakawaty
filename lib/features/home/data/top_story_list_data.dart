
import 'package:flutter/material.dart';

import '../presentation/view/widgets/top_score_card.dart';

class TopStoryList extends StatelessWidget {
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

   TopStoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topStories.length,
      itemBuilder: (context, index) {
        return TopStoryCard(
          title: topStories[index]['title']!,
          subtitle: topStories[index]['subtitle']!,
          image: topStories[index]['image']!,
        );
      },
    );
  }
}
