import 'package:docdoc/core/api/end_ponits.dart';
import 'package:docdoc/core/api/service_locator.dart';
import 'package:docdoc/core/cache/cache_helper.dart';
import 'package:docdoc/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getIt.get<CacheHelper>().getData(key: ApiKey.token) == null
          ? const OnBoardingViewBody()
          : const HomeView(),
    );
  }
}
