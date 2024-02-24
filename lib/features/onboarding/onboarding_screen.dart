import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styling.dart';
import 'widget/doc_logo_and_named.dart';
import 'widget/doctor_image_and_text.dart';
import 'widget/get_started_button.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.4),
        child: Column(
          children: [
            const DocLogoAndNamed(),
            SizedBox(
              height: 30.h,
            ),
            const DoctorImageAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.font13greyRegular,
                    textAlign: TextAlign.center,
                  ),SizedBox(height: 30.h,),
                  const GetStartedButtom()
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}
