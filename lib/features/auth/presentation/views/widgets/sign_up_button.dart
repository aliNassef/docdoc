import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../logic/auth_cubit/auth_cubit.dart';
import '../../../logic/auth_cubit/auth_state.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpLoaded) {
          context.go(AppRouter.homeView);
        }
      },
      builder: (context, state) => CustomAppButton(
        onPressed: () {
          if (context.read<AuthCubit>().formKey.currentState!.validate()) {
            context.read<AuthCubit>().signUp();
          }
        },
        title: state is SignUpLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Text(
                'Create Account',
                style: AppStyles.textStyle16SB.copyWith(
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
