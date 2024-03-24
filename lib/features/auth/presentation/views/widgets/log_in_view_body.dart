import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import 'email_and_password.dart';
import 'have_an_account.dart';
import 'log_in_button.dart';
import 'remember_and_checkbox.dart';
import 'terms_and_condations.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Welcome Back',
                style: AppStyles.textStyle24B.copyWith(
                  color: AppColor.kPrimaryColor,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: AppStyles.textStyle14R.copyWith(
                  color: AppColor.kTextColor,
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              const EmailAndPassword(),
              const RememberAndCheckBox(),
              SizedBox(
                height: 32.h,
              ),
              const LogInButton(),
              SizedBox(
                height: 60.h,
              ),
              const TermsAndCondations(),
              SizedBox(
                height: 24.h,
              ),
              HaveAnAccount(
                text: 'Sign Up',
                onTap: () {
                  context.go(AppRouter.signUp);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
