import 'package:flutter/material.dart';
import 'package:mydoctor/core/theming/styling.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
          style: TextStyles.fons_13_Lightgreyregular,
          text: "By logging, you agree to our",
          children: [
            TextSpan(
                style: TextStyles.font_14_blackmedium,
                text: "Terms & Conditions"),
            TextSpan(
                style:
                    TextStyles.fons_13_Lightgreyregular.copyWith(height: 1.5),
                text: " and "),
            TextSpan(
                style: TextStyles.font_14_blackmedium, text: 'PrivacyPolicy')
          ]),
    );
  }
}
