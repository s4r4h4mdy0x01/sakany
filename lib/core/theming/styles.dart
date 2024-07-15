import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakany/core/const/string_maneger.dart';
import 'package:sakany/core/theming/colors.dart';
import 'package:sakany/core/theming/font_weight.dart';

class TextStyManager {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    color: Colors.black,
  );
  static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.white,
 
  );
  static TextStyle font70WhiteRegular = TextStyle(
    fontSize: 70.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.white,

  );

  static TextStyle font16PrimaryBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.primary,
 
  );
   static TextStyle font20PrimaryBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorManager.textPrimary,
    
  );
    static TextStyle font16PrimarySemBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.primary,
  
  );
}
