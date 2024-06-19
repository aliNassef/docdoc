import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../logic/auth_cubit/auth_cubit.dart';
import '../../../logic/auth_cubit/auth_state.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInLoaded) {
          context.go(AppRouter.homeView);
        } else if (state is SignInFailure) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(state.errMessage),
          //   ),
          // );
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) => CustomAppButton(
        onPressed: () {
          if (context.read<AuthCubit>().formKey.currentState!.validate()) {
            context.read<AuthCubit>().logIn();
          }
        },
        title: state is SignInLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Text(
                'Login',
                style: AppStyles.textStyle16SB.copyWith(
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
