class AuthState {}

final class AuthInitial extends AuthState {}

// log in
final class SignInLoaded extends AuthState {}

final class SignInLoading extends AuthState {}

final class SignInFailure extends AuthState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

// register
final class SignUpLoaded extends AuthState {}

final class SignUpLoading extends AuthState {}

final class SignUpFailure extends AuthState {}
