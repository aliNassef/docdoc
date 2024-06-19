import 'package:docdoc/core/api/service_locator.dart';
import 'package:docdoc/features/home/data/repos/home_repo_impl.dart';
import 'package:docdoc/features/home/presentation/view_model/get_all_specialization_cubit/get_all_specialization_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              GetAllSpecializationCubit(getIt.get<HomeRepoImpl>()),
          child: const HomeViewBody(),
        ),
      ),
    );
  }
}
