import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styling.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/docdoc_logo.dart.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.15, 0.4])),
          child: Image.asset('assets/images/onboardingdoctor.png'),
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              "Best Doctor\n Appointment App",
              textAlign: TextAlign.center,
              style: TextStyles.font24BlueBold.copyWith(height: 1.2),
            ))
      ],
    );
  }
}
