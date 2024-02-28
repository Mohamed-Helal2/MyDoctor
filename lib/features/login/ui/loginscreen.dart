import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mydoctor/core/helper/spacing.dart';
import 'package:mydoctor/core/theming/styling.dart';
import 'package:mydoctor/features/login/ui/widget/already_have_account.dart';
import 'package:mydoctor/features/login/ui/widget/terms_and_condition_text.dart';

import '../../../core/widget/app_text_button.dart';
import '../../../core/widget/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FormKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.Fons24BlueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.Fons14GreyRegular.copyWith(height: 1.5),
                ),
                verticalSpace(36),
                Form(
                  key: FormKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'Email',
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                          hintText: 'Password',
                          isobscureText: isObscure,
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              },
                              icon: Icon(
                                isObscure == false
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 32,
                              ))),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password',
                          style: TextStyles.font_13_blurreglar,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        onPressed: () {},
                        text: 'Login',
                        textstyle: TextStyles.font_16_whitemedium,
                      ),
                      verticalSpace(16),
                      const TermsAndConditionText(),
                      verticalSpace(50),
                      const AlreadyHaveAccount()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
