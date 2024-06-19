import 'package:docdoc/core/api/service_locator.dart';
import 'package:docdoc/features/auth/data/repo/auth_repo_impl.dart';
import 'package:docdoc/features/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/log_in_view_body.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(
          getIt.get<AuthRepoImpl>(),
        ),
        child: const LogInViewBody(),
      ),
    );
  }
}
