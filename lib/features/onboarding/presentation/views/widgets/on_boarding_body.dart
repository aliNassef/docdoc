import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import 'custom_onboarding_image.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 22.h,
            ),
            Image.asset(
              AppImages.logo,
              height: 38.h,
              width: 142.w,
            ),
            SizedBox(
              height: 30.h,
            ),
            const CustomonBoardingImage(),
            SizedBox(
              height: 18.h,
            ),
            Text(
              'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
              style: AppStyles.textStyle10R.copyWith(
                color: AppColor.kTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: CustomAppButton(
                onPressed: () => context.go(AppRouter.logIn),
                title: Text(
                  'Get Started',
                  style: AppStyles.textStyle16SB.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
          ],
        ),
      ),
    );
  }
}
