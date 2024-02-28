import 'package:flutter/material.dart';
import 'package:mydoctor/core/theming/styling.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
          style: TextStyles.Fons17blacknormal,
          text: "Already have an account yet? ",
          children: [
            TextSpan(style: TextStyles.Fons17bluenormal, text: "Sign Up"),
          ]),
    );
  }
}
