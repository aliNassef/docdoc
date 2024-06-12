
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class DoctorSpecialistItem extends StatelessWidget {
  const DoctorSpecialistItem(
      {super.key, required this.img, required this.title});
  final String img;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xffF4F8FF),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Container(
            width: 30.w,
            height: 30.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF4F8FF),
              image: DecorationImage(
                image: AssetImage(
                  img,
                ),
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          title,
          style: AppStyles.textStyle12R.copyWith(
            color: const Color(0xff242424),
          ),
        ),
      ],
    );
  }
}
