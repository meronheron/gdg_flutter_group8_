import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Sign In Event
class SignInRequested extends AuthEvent {
  final String email;
  final String password;

  SignInRequested({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

// Sign Up Event
class SignUpRequested extends AuthEvent {
  final String fullName;
  final String email;
  final String password;
  final String phone;

  SignUpRequested({
    required this.fullName,
    required this.email,
    required this.password,
    required this.phone,
  });

  @override
  List<Object?> get props => [fullName, email, password, phone];
}

// Toggle Password Visibility
class TogglePasswordVisibility extends AuthEvent {}
