import 'package:flutter/material.dart';
class CustomTextFormFild extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final Color?  fillColor;
  final bool? filled;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focuseBorder;
  final InputBorder? border;
  final TextStyle? hinStyleColor;
  final TextStyle? lebaleStyleColor;
  final String? Function(String?)? validator;

  final String? labelText;
  const CustomTextFormFild({
    super.key,
    this.hintText,
    this.controller,
    this.prefixIcon,
    this.sufixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.hinStyleColor,
    this.labelText,
    this.enabledBorder,
    this.errorBorder,
    this.focuseBorder,
    this.border,
    this.fillColor,
    this.filled,
    this.lebaleStyleColor,
    this.validator,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: lebaleStyleColor,
        fillColor: fillColor ,
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: sufixIcon,
        prefixIconColor: prefixIconColor,
        hintText: hintText,
        hintStyle:hinStyleColor ,
        focusedBorder: focuseBorder,
        enabledBorder: enabledBorder,
        errorBorder: errorBorder,
        border: border,
      ),
    );
  }
}
