import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomonBoardingImage extends StatelessWidget {
  const CustomonBoardingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(AppImages.background),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [.10, .4],
            ),
          ),
          child: Image.asset(
            AppImages.doctor,
          ),
        ),
        Positioned(
          top: 430.h,
          child: Text(
            'Best Doctor\n Appointment App',
            style: AppStyles.textStyle32B.copyWith(
              color: AppColor.kPrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
