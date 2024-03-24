import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomInputData extends StatelessWidget {
  const CustomInputData({
    super.key,
    required this.hint,
    this.validator,
    this.onTap,
    this.obscureText = false,
    this.isShow = false,
    required this.input,
  });
  final String hint;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final bool obscureText;
  final bool isShow;
  final TextEditingController input;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: input,
      validator: validator,
      obscureText: obscureText,
      cursorColor: AppColor.kPrimaryColor,
      decoration: InputDecoration(
          fillColor: AppColor.kFillColor,
          filled: true,
          hintStyle: AppStyles.textStyle14W500.copyWith(
            color: AppColor.kFieldColor,
          ),
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: const Icon(
              Icons.visibility_off_sharp,
            ),
          ),
          suffixIconColor: isShow ? AppColor.kFieldColor : Colors.white,
          hintText: hint,
          enabledBorder: styleCustomTextFormField(AppColor.kBorderColor),
          focusedBorder: styleCustomTextFormField(AppColor.kPrimaryColor),
          border: styleCustomTextFormField(Colors.red)),
    );
  }

  OutlineInputBorder styleCustomTextFormField(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
