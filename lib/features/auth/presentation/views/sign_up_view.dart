import 'package:docdoc/core/api/service_locator.dart';
import 'package:docdoc/features/auth/data/repo/auth_repo_impl.dart';
import 'package:docdoc/features/auth/logic/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(
          getIt.get<AuthRepoImpl>(),
        ),
        child: const SignUpViewBody(),
      ),
    );
  }
}
