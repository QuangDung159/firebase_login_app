import 'package:meta/meta.dart';

@immutable
class RegisterState {
  final bool isValidEmail;
  final bool isValidPassword;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;
  bool get isValidEmailAndAddres => isValidEmail && isValidPassword;

  const RegisterState(
      {required this.isValidEmail,
      required this.isValidPassword,
      required this.isSubmitting,
      required this.isSuccess,
      required this.isFailure});

  factory RegisterState.initial() {
    return RegisterState(
        isValidEmail: true,
        isValidPassword: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false);
  }

  factory RegisterState.loading() {
    return RegisterState(
        isValidEmail: true,
        isValidPassword: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false);
  }

  factory RegisterState.success() {
    return RegisterState(
        isValidEmail: true,
        isValidPassword: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false);
  }

  factory RegisterState.failure() {
    return RegisterState(
        isValidEmail: true,
        isValidPassword: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true);
  }

  RegisterState cloneWith(
      {required bool isValidEmail,
      required bool isValidPassword,
      required bool isSubmitting,
      required bool isSuccess,
      required bool isFailure}) {
    return RegisterState(
        isValidEmail: isValidEmail,
        isValidPassword: isValidPassword,
        isSubmitting: isSubmitting,
        isSuccess: isSuccess,
        isFailure: isFailure);
  }

  RegisterState cloneAndUpdate({
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
