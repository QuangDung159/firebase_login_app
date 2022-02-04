import 'package:equatable/equatable.dart';

class RegisterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class RegisterEventEmailChanged extends RegisterEvent {
  String? email;

  RegisterEventEmailChanged({this.email});

  @override
  List<Object?> get props => [email];

  @override
  String toString() {
    return 'Email changed: $email';
  }
}

class RegisterEventPasswordChanged extends RegisterEvent {
  String? password;

  RegisterEventPasswordChanged({this.password});

  @override
  List<Object?> get props => [password];

  @override
  String toString() {
    return 'Password changed: $password';
  }
}

class RegisterEventWithGooglePressed extends RegisterEvent {}

class RegisterEventPressed extends RegisterEvent {
  String email;
  String password;

  RegisterEventPressed(
      {required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];

  @override
  String toString() {
    return 'RegisterEventPressed :>> "email": "$email", "password": "$password"';
  }
}
