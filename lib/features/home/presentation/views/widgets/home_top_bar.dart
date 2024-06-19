import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Ali!',
              style: AppStyles.textStyle18B.copyWith(
                color: const Color(0xff242424),
              ),
            ),
            Text(
              'How Are you Today?',
              style: AppStyles.textStyle11R.copyWith(
                color: const Color(0xff616161),
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: 48.h,
          width: 48.w,
          decoration: const BoxDecoration(
            color: Color(0xffF5F5F5),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: const Icon(
            Icons.notifications_none_outlined,
          ),
        ),
      ],
    );
  }
}
