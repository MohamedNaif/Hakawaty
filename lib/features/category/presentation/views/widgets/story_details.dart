import 'package:flutter/material.dart';

import '../../../../../const.dart';

class StoryDetails extends StatelessWidget {
  const StoryDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenH * 0.3,
      width: screenW - (2.5 * (screenH * 0.3) / 4) - 2 * kHorizontalPadding,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Story Name',
            style: TextStyle(
                fontSize: 18, color: kDarkColor, fontWeight: FontWeight.w600),
          ),
          Text(
            'Author Name',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16, color: kDarkColor, fontWeight: FontWeight.w600),
          ),
          Text(
            'Loves : 10',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'Seen : 526',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16, color: kDarkColor, fontWeight: FontWeight.w600),
          ),
          Text(
            'Price : \$14.99',
            style: TextStyle(
                fontSize: 16, color: kDarkColor, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
