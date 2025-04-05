import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/blocs/auth/auth_bloc.dart'; // Import the AuthBloc
import 'screens/Sign_in.dart';
import 'screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      // Wrap the entire app in BlocProvider
      home: BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(), // Initialize the AuthBloc
        child: const SignIn(), // The starting screen
      ),
      routes: {
        '/Home': (context) => HomeScreen(username: '',), // Define HomeScreen route
      },
    );
  }
}
