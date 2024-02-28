import 'package:flutter/material.dart';
import 'package:mydoctor/core/helper/extension.dart';
import 'package:mydoctor/core/routing/routes.dart';
import 'package:mydoctor/core/theming/colors.dart';

import '../../../core/theming/styling.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: () {
        context.PushNamed(Routes.loginscreen);
      },
      style: ButtonStyle(
        
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 52)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text(
        'Get Started',
        style: TextStyles.font_16_whitemedium,
      ),
    );
  }
}
