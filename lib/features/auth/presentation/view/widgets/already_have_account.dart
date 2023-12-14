import 'package:flutter/material.dart';

import '../../../../../const.dart';
import '../login_view.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account ',
          style: TextStyle(fontSize: 13, color: kThirdColor),
        ),
        InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ),
                (route) => false);
          },
          child: const Text(
            '  Login',
            style: TextStyle(fontSize: 13, color: kThirdColor),
          ),
        )
      ],
    );
  }
}
