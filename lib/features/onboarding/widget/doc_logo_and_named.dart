import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mydoctor/core/theming/styling.dart';

class DocLogoAndNamed extends StatelessWidget {
  const DocLogoAndNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg/doctor_Logo.svg'),
        SizedBox(
          width: 10.w,
        ),
        
        Text("Docdoc", style: TextStyles.font24Black700weight)
      ],
    );
  }
}
