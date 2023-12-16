import 'package:flutter/material.dart';

import 'widget/profile_view_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileScreenBody(),
    );
  }
}