import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/shared/widgets/custom_input_data.dart';
import '../../../../../core/shared/widgets/input_phone_number.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../logic/cubit/auth_cubit.dart';
import 'have_an_account.dart';
import 'sign_up_button.dart';
import 'terms_and_condations.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool ishide = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Form(
            key: context.read<AuthCubit>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Create Account',
                  style: AppStyles.textStyle24B.copyWith(
                    color: AppColor.kPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppStyles.textStyle14R.copyWith(
                    color: AppColor.kTextColor,
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
                CustomInputData(
                  input: context.read<AuthCubit>().signUpEmail,
                  validator: (val) {
                    if (val == null || !val.contains('@gmail.com')) {
                      return 'the email must contain @gmail.com';
                    }
                    return null;
                  },
                  hint: 'Email',
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomInputData(
                  input: context.read<AuthCubit>().signUpPass,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'the pass must contain value';
                    }
                    return null;
                  },
                  isShow: true,
                  hint: 'Password',
                  obscureText: ishide,
                  onTap: () {
                    setState(() {
                      ishide = !ishide;
                    });
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                InputPhoneNumber(
                  controller: context.read<AuthCubit>().signUpPhone,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const SignUpButton(),
                SizedBox(
                  height: 60.h,
                ),
                const TermsAndCondations(),
                SizedBox(
                  height: 24.h,
                ),
                HaveAnAccount(
                  onTap: () {
                    context.go(AppRouter.logIn);
                  },
                  text: 'Sign In',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
