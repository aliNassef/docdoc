import 'package:docdoc/core/shared/widgets/app_regex.dart';
import 'package:docdoc/features/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/widgets/custom_input_data.dart';
import 'password_validateors.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController passController;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;
  @override
  void initState() {
    super.initState();
    passController = context.read<AuthCubit>().signInPass;
    setupPassControllerListner();
  }

  void setupPassControllerListner() {
    passController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passController.text);
        hasMinLength = AppRegex.hasMinLength(passController.text);
        hasNumber = AppRegex.hasNumber(passController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(passController.text);
        hasUpperCase = AppRegex.hasUpperCase(passController.text);
      });
    });
  }

  bool ishide = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKey,
      child: Column(
        children: [
          CustomInputData(
            input: context.read<AuthCubit>().signInEmail,
            validator: (val) {
              if (val == null || val.isEmpty || !AppRegex.isEmailValid(val)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            hint: 'Email',
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomInputData(
            input: context.read<AuthCubit>().signInPass,
            validator: (val) {
              if (val == null ||
                  val.isEmpty ||
                  !AppRegex.isPasswordValid(
                    passController.text,
                  )) {
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
          PasswordValidators(
            hasLowerCase: hasLowerCase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasUpperCase: hasUpperCase,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passController.dispose();
    super.dispose();
  }
}
