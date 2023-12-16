import 'package:flutter/material.dart';
import 'package:hakawaty/const.dart';
import 'package:hakawaty/features/auth/presentation/view/register_view.dart';

// import 'features/home/presentation/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: kDarkColor,
        ),
        home: const RegisterView(),
      ),
    );
  }
}
