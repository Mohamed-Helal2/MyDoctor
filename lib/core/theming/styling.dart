import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mydoctor/core/theming/colors.dart';

class TextStyles {
  static TextStyle font24Black700weight = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);

  static TextStyle font24BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.mainBlue);

  static TextStyle font13greyRegular = TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.normal,
      color: ColorsManager.gray);

  static TextStyle font16whitesemibold = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color:   Colors.white);
}
