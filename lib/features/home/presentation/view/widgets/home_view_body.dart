import 'package:flutter/material.dart';

import '../../../../../const.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLightColor,
        centerTitle: true,
        elevation: 0,
        title: SizedBox(
            height: 80,
            width: 120,
            child: Image.asset('assets/images/حكواتي-02.png')),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              width: 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/photo_2023-12-14_16-40-34.jpg'))),

              // backgroundColor: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
