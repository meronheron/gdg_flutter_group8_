import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthFailure extends AuthState {
  final String message;

  AuthFailure({required this.message});

  @override
  List<Object?> get props => [message];
}

// Store User Input & Password Visibility
class AuthInputState extends AuthState {
  final String email;
  final String password;
  final bool isPasswordVisible;

  AuthInputState({
    required this.email,
    required this.password,
    this.isPasswordVisible = false,
  });

  @override
  List<Object?> get props => [email, password, isPasswordVisible];
}
