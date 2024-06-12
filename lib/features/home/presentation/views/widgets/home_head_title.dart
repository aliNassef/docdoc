import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class HomeHeadTitle extends StatelessWidget {
  const HomeHeadTitle({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
        title,
          style: AppStyles.textStyle18SB.copyWith(
            color: AppColor.kTermsColor2,
          ),
        ),
        const Spacer(),
        Text(
          'See All',
          style: AppStyles.textStyle12R.copyWith(
            color: AppColor.kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
