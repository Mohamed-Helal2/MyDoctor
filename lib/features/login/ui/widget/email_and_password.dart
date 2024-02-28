import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydoctor/core/helper/app_regex.dart';
import 'package:mydoctor/features/login/logic/cubit/login_cubit.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widget/app_text_form_field.dart';
import 'password_validation.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;
  late TextEditingController passwordcontroller;
  bool haslowercase = false;
  bool hasUppercase = false;
  bool number = false;
  bool hasSpecialCharacter = false;
  bool hasminuimlenght = false;
  @override
  void initState() {
    passwordcontroller = context.read<LoginCubit>().passwordcontroller;
    setupPasswordControllerListner();
    super.initState();
  }

  @override
  void dispose() {
    passwordcontroller.dispose();
    super.dispose();
  }

  setupPasswordControllerListner() {
    passwordcontroller.addListener(() {
      setState(() {
        haslowercase = AppRegex.haslowercase(passwordcontroller.text);
        hasUppercase = AppRegex.hasuppercase(passwordcontroller.text);
        number = AppRegex.hasNumber(passwordcontroller.text);
        hasSpecialCharacter =
            AppRegex.hasspecialcharater(passwordcontroller.text);
        hasminuimlenght = AppRegex.hasminlilenght(passwordcontroller.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().FormKey,
      child: Column(
        children: [
          AppTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValidated(value)) {
                return 'Please Enter a Valid Email';
              }
            },
            controller: context.read<LoginCubit>().emailcontroller,
            hintText: 'Email',
          ),
          verticalSpace(18),
          AppTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.haslowercase(value) ||
                  !AppRegex.hasNumber(value)) {
                return 'Please Enter a Valid Password';
              }
            },
            controller: context.read<LoginCubit>().passwordcontroller,
            hintText: 'Password',
            isobscureText: isObscure,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: Icon(
                isObscure == false ? Icons.visibility : Icons.visibility_off,
                size: 32,
              ),
            ),
          ),
          verticalSpace(24),
          PsswordVlidation(
            hasSpecialCharacter: hasSpecialCharacter,
            hasUppercase: hasUppercase,
            haslowercase: haslowercase,
            hasminuimlenght: hasminuimlenght,
            number: number,
          )
        ],
      ),
    );
  }
}
