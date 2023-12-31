import 'package:flutter/material.dart';
import 'package:hakawaty/const.dart';
import 'package:hakawaty/features/home/presentation/view/home_view.dart';


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
          scaffoldBackgroundColor: kLightColor,
          primaryColor: Colors.blue
        ),
        home: const HomeView(),
      ),
    );
  }
}
