import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/features/auth/presentation/view/widgets/screen_title.dart';

import 'widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ScreenTitle(title: 'Register'),
          Gap(15),
          Expanded(child: RegisterViewBody()),
        ],
      ),
    );
  }
}
