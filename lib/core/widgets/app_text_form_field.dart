import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakany/core/theming/colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.suffixIcon,
      this.fillColorBackground,
      this.hintStyle,
      this.obscureText,
      this.controller,
      this.keyboardType,
      required this.hintText,
      this.focusedBorder,
      this.enabledBorder,
      this.validator, this.prefixIcon});
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColorBackground;
  final Widget? suffixIcon;
    final Widget?  prefixIcon;
  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator!(value);
      },
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.none,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
        filled: true,
        fillColor: fillColorBackground ?? ColorManager.white,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.error,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide:  const BorderSide(color: ColorManager.primary)),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide:const   BorderSide(color: ColorManager.primary)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: ColorManager.error, width: 1.3)),
        hintText: hintText,
     //   hintStyle: TextStyleManager.,
        suffixIcon: suffixIcon,
        prefixIcon:  prefixIcon,
      ),
   //   style: TextStyles.font14DarkOrangeMedium,
    );
  }
}