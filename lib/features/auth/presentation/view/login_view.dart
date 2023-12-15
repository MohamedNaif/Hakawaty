import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/features/auth/presentation/view/widgets/screen_title.dart';

import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        ScreenTitle(title: 'Login') ,
        Gap(15),
        Expanded(child: LoginViewBody()) ,
      ],),
    );
  }
}
