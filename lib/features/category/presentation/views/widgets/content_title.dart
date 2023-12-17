import 'package:flutter/material.dart';

import '../../../../../const.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Contents',
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w600, color: kPrimaryColor),
    );
  }
}
