import 'package:flutter/material.dart';

import 'widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'محتوي الطفل',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
            Image.asset('assets/images/حكواتي-03.png',),
        ],
      ),
      body: const CategoryViewBody(),
    );
  }
}
