import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidators extends StatelessWidget {
  const PasswordValidators({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
    required this.hasNumber,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  final bool hasNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidatedRow(
          'At least one lowercase letter',
          validateName: hasLowerCase,
        ),
        SizedBox(
          height: 2.h,
        ),
        buildValidatedRow(
          'At least one uppercase letter',
          validateName: hasUpperCase,
        ),
        SizedBox(
          height: 2.h,
        ),
        buildValidatedRow(
          'At least one special character',
          validateName: hasSpecialCharacter,
        ),
        SizedBox(
          height: 2.h,
        ),
        buildValidatedRow(
          'At least one number',
          validateName: hasNumber,
        ),
        SizedBox(
          height: 2.h,
        ),
        buildValidatedRow(
          'At least 8 character long',
          validateName: hasMinLength,
        ),
      ],
    );
  }

  Widget buildValidatedRow(String text, {required bool validateName}) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.black,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          text,
          style: AppStyles.textStyle12R.copyWith(
            color: AppColor.kTextColor,
            decoration: validateName ? TextDecoration.lineThrough : null,
            decorationThickness: 2,
            decorationColor: validateName ? Colors.green : null,
          ),
        ),
      ],
    );
  }
}
