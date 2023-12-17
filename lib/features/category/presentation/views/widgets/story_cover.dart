import 'package:flutter/material.dart';

class StoryCover extends StatelessWidget {
  const StoryCover({
    super.key,
    required this.storyCover,
  });

  final String storyCover;
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: screenH * 0.3,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(storyCover),
                ),
              ),
            ),
          ),
        ),
        // IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp, size: 28, color: Colors.red,))
      ],
    );
  }
}
