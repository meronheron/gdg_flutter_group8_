// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart'; // Ensure this is present
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_app/pages/Home_screen.dart';
import 'package:form_app/pages/create_acc.dart';
import 'package:form_app/pages/sign_in.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAw2Zqq8GowypQWpfezsewC-dHc5enwjFc", 
      appId: "1:730490693947:android:ee334efb8a21e0d438ef1e", 
      messagingSenderId: "730490693947", 
      projectId: "form-app-f5b1a")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routes: {
        '/sign_in': (context) => SignIn(),
        '/create_account': (context) => CreateAcc(),
        '/home': (context) => HomeScreen(),
      },
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Scaffold(body: Center(child: Text("Error initializing Firebase!")));
          }
          return AuthWrapper();
        },
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        print("Auth State Changed: ${snapshot.connectionState}, Has Data: ${snapshot.hasData}");

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          print("User logged in: ${snapshot.data?.email}");
          return HomeScreen();
        } else {
          print("User not logged in");
          return SignIn();
        }
      },
    );
  }
}