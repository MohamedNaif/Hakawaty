import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/features/auth/presentation/view/register_view.dart';

import 'custom_button.dart';
import 'custom_text_form_field.dart';
import 'have_no_account.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(20),
                
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Field is required';
                    }
                    return null;
                  },
                  hintText: 'Email',
                ),
                const Gap(20),
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Field is required';
                    }
                    return null;
                  },
                  hintText: 'password',
                ),
                const Gap(50),
                CustomButton(
                  text: 'Login',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterView(),
                          ),
                          (route) => false);
                    }
                  },
                ),
                const Gap(4),
                const HaveNoAccount(),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
