import 'package:flutter/material.dart';
import 'package:hakawaty/const.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.buttonColor,
      this.textColor = kDarkColor  ,
      this.isLoading = false});
  final String text;
  final Function() onTap;
  final Color? buttonColor;
  final Color? textColor;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: kThirdColor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: kPrimaryColor,
                  ),
                )
              : Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}
