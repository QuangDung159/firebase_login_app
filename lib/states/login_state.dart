import 'package:meta/meta.dart';

@immutable
class LoginState {
  final bool isValidEmail;
  final bool isValidPassword;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;
  bool get isValidEmailAndAddres => isValidEmail && isValidPassword;

  const LoginState(
      {required this.isValidEmail,
      required this.isValidPassword,
      required this.isSubmitting,
      required this.isSuccess,
      required this.isFailure});

  factory LoginState.initial() {
    return LoginState(
        isValidEmail: true,
        isValidPassword: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false);
  }

  factory LoginState.loading() {
    return LoginState(
        isValidEmail: true,
        isValidPassword: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false);
  }

  factory LoginState.success() {
    return LoginState(
        isValidEmail: true,
        isValidPassword: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false);
  }

  factory LoginState.failure() {
    return LoginState(
        isValidEmail: true,
        isValidPassword: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true);
  }

  LoginState cloneWith(
      {required bool isValidEmail,
      required bool isValidPassword,
      required bool isSubmitting,
      required bool isSuccess,
      required bool isFailure}) {
    return LoginState(
        isValidEmail: isValidEmail,
        isValidPassword: isValidPassword,
        isSubmitting: isSubmitting,
        isSuccess: isSuccess,
        isFailure: isFailure);
  }

  LoginState cloneAndUpdate({
    required bool isValidEmail,
    required bool isValidPassword,
  }) {
    return cloneWith(
        isValidEmail: isValidEmail,
        isValidPassword: isValidPassword,
        isSubmitting: isSubmitting,
        isSuccess: isSuccess,
        isFailure: isFailure);
  }
}
