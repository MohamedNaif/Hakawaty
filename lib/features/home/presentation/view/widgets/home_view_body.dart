import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../const.dart';
import '../../../../category/presentation/views/category_view.dart';
import '../../../../profile/presentation/view/profile.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLightColor,
        centerTitle: true,
        elevation: 0,
        title: SizedBox(
          height: 100,
          width: 120,
          child: Image.asset('assets/images/حكواتي-03.png'),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                // height: 70,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/photo_2023-12-14_16-40-34.jpg',
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: kDarkColor,
              ),
            ),
            const Gap(10),
            CategoryList(),
            const Gap(20),
            const Text(
              'Top Story',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: kDarkColor,
              ),
            ),
            const Gap(10),
            Expanded(child: TopStoryList()),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'title': 'المحتوى الديني',
      'subtitle': 'Subtitle 2',
      'image': 'assets/images/المحتوى الديني.jpeg',
    },
    {
      'title': 'التراث العربي',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg',
    },
    {
      'title': 'محتوى الطفل',
      'subtitle': 'Subtitle 2',
      'image': 'assets/images/محتوى الطفل.jpg',
    },
    {
      'title': 'Category 2',
      'subtitle': 'Subtitle 2',
      'image': 'assets/images/التراث .jpg',
    },
    {
      'title': 'Category 2',
      'subtitle': 'Subtitle 2',
      'image': 'assets/images/التراث .jpg',
    },
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            title: categories[index]['title']!,
            subtitle: categories[index]['subtitle']!,
            image: categories[index]['image']!,
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const CategoryCard(
      {super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoryView()),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: kDarkColor,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  fontWeight: FontWeight.w100, color: kDarkColor),
            ),
          ],
        ),
      ],
    );
  }
}

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

class TopStoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  TopStoryCard(
      {required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Text('Author', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      contentPadding: const EdgeInsets.all(8.0),
      leading: Container(
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const Gap(4),
              // SizedBox(height: 4.0),
              Text(subtitle),
            ],
          ),
        ],
      ),
    );
  }
}
