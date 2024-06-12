import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/app_images.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: 18.w, top: 12.h),
              width: MediaQuery.sizeOf(context).width,
              height: 167.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AppImages.doctorBackground,
                  ),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book and \nschedule with\nnearest doctor',
                    style: AppStyles.textStyle18M.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 38.h,
                    width: 109.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(48),
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: AppStyles.textStyle12R.copyWith(
                        color: AppColor.kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.sizeOf(context).width * 0.52,
            child: Image.asset(
              fit: BoxFit.fitHeight,
              AppImages.doctora,
              height: 197.h,
              width: 136.w,
            ),
          )
        ],
      ),
    );
  }
}
