 import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account yet? ',
              style: AppStyles.textStyle11R,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: text,
              style: AppStyles.textStyle11R.copyWith(
                color: AppColor.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
