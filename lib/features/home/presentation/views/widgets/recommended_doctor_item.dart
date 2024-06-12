
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class RecommendedDoctorItem extends StatelessWidget {
  const RecommendedDoctorItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/images/demo.png'),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dr. Randy Wigham',
                style: AppStyles.textStyle16B.copyWith(
                  color: const Color(0xff242424),
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'General',
                      style: AppStyles.textStyle12M.copyWith(
                        color: const Color(0xff757575),
                      ),
                    ),
                    TextSpan(
                      text: ' | ',
                      style: AppStyles.textStyle12M.copyWith(
                        color: const Color(0xff757575),
                      ),
                    ),
                    TextSpan(
                      text: 'RSUD Gatot Subroto',
                      style: AppStyles.textStyle12M.copyWith(
                        color: const Color(0xff757575),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_purple500_sharp,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  Text(
                    '4.8',
                    style: AppStyles.textStyle12M.copyWith(
                      color: const Color(
                        0xff757575,
                      ),
                    ),
                  ),
                  Text(
                    ' (4,279 reviews)',
                    style: AppStyles.textStyle12M.copyWith(
                      color: const Color(
                        0xff757575,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
