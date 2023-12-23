import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../const.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/category_list_data.dart';
import '../../../data/top_story_list_data.dart';
import 'profile_image.dart';

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
        actions: const [ProfileImage()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Categories', style: Style.textStyle22),
            const Gap(10),
            CategoryList(),
            const Gap(20),
            const Text('Top Story', style: Style.textStyle22),
            const Gap(10),
            Expanded(child: TopStoryList()),
          ],
        ),
      ),
    );
  }
}
