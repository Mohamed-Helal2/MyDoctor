import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydoctor/core/helper/extension.dart';
import 'package:mydoctor/core/theming/colors.dart';
import 'package:mydoctor/features/login/logic/cubit/login_cubit.dart';
import 'package:mydoctor/features/login/logic/cubit/login_state.dart';

import '../../../../core/routing/routes.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        // listenWhen: (previous, current) =>
        //     current is loginLoading ||
        //     current is loginSucessl ||
        //     current is loginFailure,
        listener: (context, state) {
          if (state is loginLoading) {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ));
              },
            );
          } else if (state is loginSucessl) {
            context.pop();
            context.PushNamed(Routes.homescreen);
          } else if (state is loginFailure) {
            context.pop();
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error_message)));
          }
        },
        child: const SizedBox.shrink());
  }
}
