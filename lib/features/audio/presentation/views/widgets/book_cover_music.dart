import 'package:flutter/material.dart';

class BookCoverMusic extends StatelessWidget {
  const BookCoverMusic({super.key, required this.bookCover, required this.heightRatioFromScreenHeight});
  final String bookCover ;
  final double heightRatioFromScreenHeight ;
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height ;
    return SizedBox(
        height: screenH * heightRatioFromScreenHeight,
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(bookCover),
              ),
            ),
          ),
        ),
      );
  }
}