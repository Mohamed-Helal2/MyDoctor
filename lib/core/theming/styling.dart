import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mydoctor/core/theming/colors.dart';

import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font_24_BlackBold = TextStyle(
      fontSize: 24.sp, fontWeight: FontWightHelper.bold, color: Colors.black);

  static TextStyle font24BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWightHelper.bold,
      color: ColorsManager.mainBlue);

  static TextStyle font13greyRegular = TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWightHelper.Regular,
      color: ColorsManager.gray);

  static TextStyle font_16_whitemedium = TextStyle(
      fontSize: 20.sp, fontWeight: FontWightHelper.medium, color: Colors.white);

  static TextStyle Fons24BlueBold = TextStyle(
      fontWeight: FontWightHelper.bold,
      fontSize: 24.sp,
      color: Color(0xff247CFF));

  static TextStyle Fons14GreyRegular = TextStyle(
      fontWeight: FontWightHelper.Regular,
      fontSize: 14.sp,
      color: ColorsManager.gray);

  static TextStyle fons14Lightgreyregular = TextStyle(
      fontWeight: FontWightHelper.Regular,
      fontSize: 14.sp,
      color: ColorsManager.lightgrey);

  static TextStyle font14darkbluemedium = TextStyle(
      fontWeight: FontWightHelper.medium,
      fontSize: 14.sp,
      color: ColorsManager.darkblue);

  static TextStyle font_13_blurreglar = TextStyle(
      fontWeight: FontWightHelper.medium,
      fontSize: 13.sp,
      color: ColorsManager.mainBlue);
  static TextStyle font_16_semiboldwhite = TextStyle(
      fontWeight: FontWightHelper.semibold,
      fontSize: 16.sp,
      color: Colors.white);

  static TextStyle font_14_blackmedium = TextStyle(
      fontWeight: FontWightHelper.medium, fontSize: 14.sp, color: Colors.black);

  static TextStyle fons_13_Lightgreyregular = TextStyle(
      fontWeight: FontWightHelper.Regular,
      fontSize: 12.sp,
      color: ColorsManager.lightgrey);

  static TextStyle Fons20Bluesemibold = TextStyle(
      fontWeight: FontWightHelper.semibold,
      fontSize: 18.sp,
      color: Color(0xff247CFF));

  static TextStyle Fons17blacknormal = TextStyle(
      fontWeight: FontWightHelper.Regular,
      fontSize: 15.sp,
      color: Colors.black);

  static TextStyle Fons17bluenormal = TextStyle(
      fontWeight: FontWightHelper.semibold,
      fontSize: 15.sp,
      color: ColorsManager.mainBlue);
}
