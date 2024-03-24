import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class TermsAndCondations extends StatelessWidget {
  const TermsAndCondations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By logging, you agree to our',
              style: AppStyles.textStyle11R.copyWith(
                color: AppColor.kTermsColor1,
              ),
            ),
            TextSpan(
              text: '  Terms & Conditions',
              style: AppStyles.textStyle11R.copyWith(
                color: AppColor.kTermsColor2,
              ),
            ),
            TextSpan(
              text: ' and ',
              style: AppStyles.textStyle11R.copyWith(
                color: AppColor.kTermsColor1,
              ),
            ),
            TextSpan(
              text: 'PrivacyPolicy.',
              style: AppStyles.textStyle11R.copyWith(
                color: AppColor.kTermsColor2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
