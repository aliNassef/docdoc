import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doctor_blue_container.dart';
import 'doctor_specialist_items.dart';
import 'home_head_title.dart';
import 'home_top_bar.dart';
import 'recommended_doctor_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          const HomeTopBar(),
          const DoctorBlueContainer(),
          SizedBox(
            height: 24.h,
          ),
          const HomeHeadTitle(
            title: 'Doctor Speciality',
          ),
          SizedBox(
            height: 16.h,
          ),
          const DoctorSpecialistItems(),
          SizedBox(
            height: 23.h,
          ),
          const HomeHeadTitle(
            title: 'Recommendation Doctor',
          ),
          SizedBox(
            height: 12.h,
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const RecommendedDoctorItem(),
              separatorBuilder: (context, index) => SizedBox(
                height: 16.h,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
