import 'package:flutter/material.dart';
import 'package:hakawaty/core/utils/styles.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Text(
              'Story Name',
              style: Style.textStyle22,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Text(
              'Story description',
              style: Style.textStyle16,
            ),
          ),
        ],
      ),
    );
  }
}
