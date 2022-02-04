import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginEventEmailChanged extends LoginEvent {
  String? email;

  LoginEventEmailChanged({this.email});

  @override
  List<Object?> get props => [email];

  @override
  String toString() {
    return 'Email changed: $email';
  }
}

class LoginEventPasswordChanged extends LoginEvent {
  String? password;

  LoginEventPasswordChanged({this.password});

  @override
  List<Object?> get props => [password];

  @override
  String toString() {
    return 'Password changed: $password';
  }
}

class LoginEventWithGooglePressed extends LoginEvent {}

class LoginEventWithEmailAndPasswordPressed extends LoginEvent {
  String email;
  String password;

  LoginEventWithEmailAndPasswordPressed(
      {required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];

  @override
  String toString() {
    return 'LoginEventWithEmailAndPasswordPressed :>> "email": "$email", "password": "$password"';
  }
}
