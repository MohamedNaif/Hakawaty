import 'package:flutter/material.dart';

import '../../../../../const.dart';
import '../register_view.dart';

class HaveNoAccount extends StatelessWidget {
  const HaveNoAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'don\'t have an account ',
          style: TextStyle(fontSize: 13, color: kThirdColor),
        ),
        InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterView(),
                ),
                (route) => false);
          },
          child: const Text(
            '  Register',
            style: TextStyle(fontSize: 13, color: kThirdColor),
          ),
        )
      ],
    );
  }
}
