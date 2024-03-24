import 'package:docdoc/features/auth/data/repo/auth_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());
  final AuthRepo authRepo;
  // shared
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // logIn
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPass = TextEditingController();
  logIn() async {
    emit(SignInLoading());
    final data = await authRepo.logIn(
      email: signInEmail.text,
      pass: signInPass.text,
    );
    debugPrint(signInEmail.text);
    debugPrint(signInPass.text);
    data.fold(
      (l) => emit(SignInLoaded()),
      (r) => emit(SignInFailure(
        errMessage: r,
      )),
    );
  }

  // signUp
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPass = TextEditingController();
  TextEditingController signUpPhone = TextEditingController();
  signUp() async {
    emit(SignUpLoading());
    final data = await authRepo.signUp(
      email: signUpEmail.text,
      pass: signUpPass.text,
      gender: '',
      name: '',
      passCon: signUpPass.text,
      phone: signUpPhone.text,
    );
    debugPrint(signUpEmail.text);
    debugPrint(signUpPass.text);
    data.fold(
      (l) => emit(SignUpLoaded()),
      (r) => emit(SignUpFailure()),
    );
  }
}
