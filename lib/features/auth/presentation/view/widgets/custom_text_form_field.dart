import 'package:flutter/material.dart';

import '../../../../../const.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.contentPadding,
    this.maxLines,
    this.onSaved, this.controller,
  });
  final Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final TextEditingController? controller ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: kThirdColor),
      controller: controller ,
      validator: validator,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        
        hintText: hintText,
        errorStyle: const TextStyle(color: Colors.red),
        contentPadding: contentPadding,
        hintStyle: const TextStyle(color: kThirdColor, fontSize: 15),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kThirdColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kThirdColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
