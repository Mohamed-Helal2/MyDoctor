import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mydoctor/core/helper/spacing.dart';
import 'package:mydoctor/core/theming/styling.dart';
import 'package:mydoctor/features/login/data/model/login_request_body.dart';
import 'package:mydoctor/features/login/logic/cubit/login_cubit.dart';
import 'package:mydoctor/features/login/ui/widget/already_have_account.dart';
import 'package:mydoctor/features/login/ui/widget/login_bloc_listner.dart';
import 'package:mydoctor/features/login/ui/widget/terms_and_condition_text.dart';

import '../../../core/widget/app_text_button.dart';
import 'widget/email_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const EmailAndPassword(),
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
                  onPressed: () {
                    // print(
                    //     '___________________________________${context.read<LoginCubit>().emailcontroller.text}');
                    // print(
                    //     '___________________________________${context.read<LoginCubit>().passwordcontroller.text}');
                    // context.read<LoginCubit>().Logiin(LoginrequestBody(
                    //     email: context.read<LoginCubit>().emailcontroller.text,
                    //     password: context
                    //         .read<LoginCubit>()
                    //         .passwordcontroller
                    //         .text));
                    ValidateThenLogin(context);
                  },
                  text: 'Login',
                  textstyle: TextStyles.font_16_whitemedium,
                ),
                verticalSpace(20),
                const TermsAndConditionText(),
                verticalSpace(19),
                const AlreadyHaveAccount(),
                const LoginBlocListner()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ValidateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().FormKey.currentState!.validate()) {
      context.read<LoginCubit>().Logiin(LoginrequestBody(
          email: context.read<LoginCubit>().emailcontroller.text,
          password: context.read<LoginCubit>().passwordcontroller.text));
    }
  }
}
