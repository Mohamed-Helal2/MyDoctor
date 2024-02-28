import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppTextButton extends StatelessWidget {
  final void Function() onPressed;
  final double? borderradius;
  final String text;
  final TextStyle textstyle;
  final Color? backgroundcolor;
  final double? buttonwidth;
  final double? buttonheight;
  final double? horizontalpadding;
  final double? verticalpadding;

  AppTextButton({
    super.key,
    required this.onPressed,
    this.borderradius,
    required this.text,
    required this.textstyle,
    this.backgroundcolor,
    this.buttonwidth,
    this.buttonheight,
    this.horizontalpadding,
    this.verticalpadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: MaterialStateProperty.all(
              backgroundcolor ?? ColorsManager.mainBlue),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
                horizontal: horizontalpadding?.w ?? 12.w,
                vertical: verticalpadding?.h ?? 9.h),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderradius ?? 16)),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(buttonwidth?.w ?? double.maxFinite, buttonheight?.h ?? 50.h),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textstyle,
        ));
  }
}
