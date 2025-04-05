import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/blocs/events/auth_event.dart';
import 'package:flutter_application_1/blocs/states/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInputState(email: "", password: "", isPasswordVisible: false)) {
    on<SignInRequested>(_onSignIn);
    on<SignUpRequested>(_onSignUp);
    on<TogglePasswordVisibility>(_togglePassword);
  }

  Future<void> _onSignIn(SignInRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    await Future.delayed(const Duration(seconds: 2)); // Simulate API call

    if (event.email == "test@example.com" && event.password == "password") {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure(message: "Invalid email or password"));
    }
  }

  Future<void> _onSignUp(SignUpRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    await Future.delayed(const Duration(seconds: 2)); // Simulate API call

    emit(AuthSuccess());
  }

  void _togglePassword(TogglePasswordVisibility event, Emitter<AuthState> emit) {
  if (state is AuthInputState) {
    final currentState = state as AuthInputState;
    emit(AuthInputState(
      email: currentState.email,
      password: currentState.password,
      isPasswordVisible: !currentState.isPasswordVisible, // Toggling the visibility
    ));
  }
}

}
