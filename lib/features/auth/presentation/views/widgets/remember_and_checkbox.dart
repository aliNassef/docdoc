import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';

class RememberAndCheckBox extends StatefulWidget {
  const RememberAndCheckBox({super.key});

  @override
  State<RememberAndCheckBox> createState() => _RememberAndCheckBoxState();
}

class _RememberAndCheckBoxState extends State<RememberAndCheckBox> {
  bool mark = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(
            color: AppColor.kCheckBoxColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          activeColor: AppColor.kPrimaryColor,
          value: mark,
          onChanged: (isMarked) {
            mark = isMarked!;
            setState(() {});
          },
        ),
        Text(
          'Remember me',
          style: AppStyles.textStyle12R.copyWith(
            fontWeight: FontWeight.w400,
            color: const Color(0xff9E9E9E),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.forgetPassView);
          },
          child: Text(
            'Forgot Password?',
            style: AppStyles.textStyle12R.copyWith(
              color: AppColor.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
