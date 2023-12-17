import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../const.dart';
// import '../../../../category/presentation/views/category_view.dart';
import '../../../../profile/presentation/view/profile.dart';
import '../../../data/category_list_data.dart';
// import 'category_card.dart';
import '../../../data/top_story_list_data.dart';
// import 'top_score_card.dart';

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


