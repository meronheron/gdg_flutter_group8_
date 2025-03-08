import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodDetails(),
    );
  }
}

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 82, 223),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30), // Adjust the height to move the image lower
            Container(
              width: 300, // Increased width
              height: 300, // Increased height
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/Ellipse 4.png',
                    width: 220, // Increased shadow size for more visibility
                    height: 220,
                    fit: BoxFit.contain, // Ensures full visibility
                    opacity: const AlwaysStoppedAnimation(0.8), // Makes shadow more visible
                  ),
                  Image.asset(
                    'assets/159187-burger-double-cheese-free-png-hq 2.png',
                    width: 200, // Adjusted burger size to avoid cropping
                    height: 200,
                    fit: BoxFit.contain, // Ensures full image visibility
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}