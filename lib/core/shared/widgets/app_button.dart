import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    this.onPressed,
    required this.title,
  });
  final void Function()? onPressed;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 52.h,
      minWidth: double.maxFinite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      onPressed: onPressed,
      color: AppColor.kPrimaryColor,
      child: title,
    );
  }
}
