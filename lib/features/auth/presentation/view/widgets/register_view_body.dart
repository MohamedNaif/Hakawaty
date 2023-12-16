import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/features/auth/presentation/view/widgets/custom_button.dart';

import '../login_view.dart';
import 'already_have_account.dart';
import 'custom_text_form_field.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
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
                  hintText: 'name',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                const Gap(20),
                CustomTextFormField(
                  hintText: 'Phone',
                  keyboardType: TextInputType.phone ,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                const Gap(20),
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Field is required';
                    }
                    return null;
                  },
                  hintText: 'age',
                  keyboardType: TextInputType.number,
                ),
                const Gap(20),
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Field is required';
                    }
                    return null;
                  },
                  hintText: 'kind',
                ),
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
                const Gap(20),
                CustomTextFormField(
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Field is required';
                    }
                    return null;
                  },
                  hintText: 'Confirm password',
                ),
                const Gap(20),
                CustomButton(
                  text: 'Register',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ),
                          (route) => false);
                    }
                  },
                ),
                const Gap(3),
                const AlreadyHaveAccount(),
                const Gap(60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
