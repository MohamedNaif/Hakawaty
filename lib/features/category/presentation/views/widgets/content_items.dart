import 'package:flutter/material.dart';

import '../../../../../const.dart';

class ContentItems extends StatelessWidget {
  const ContentItems({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    const List<String> contentsName = [
      'قصص علمية وتعليمية',
      'قصص مصورة',
      'قصص اسلامية'
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0 ; i < contentsName.length ; i++)
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: i == 1 ? kPrimaryColor : kSecondaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  contentsName[i],
                  style: const TextStyle(
                    fontSize: 14,
                    color: kDarkColor,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}