import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 63, 82, 223),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50), // Adjust the height to move the image lower
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Diamond-Shaped White Shadow with Blur
                    Transform.rotate(
                      angle: 0.7854, // 45 degrees in radians (π/4)
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            width: 150, // Adjust size based on image
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 14, 14, 14)
                                  .withOpacity(
                                      0.1), // White background with opacity
                              shape: BoxShape.rectangle,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 252, 246, 246)
                                          .withOpacity(0.01), // Soft shadow
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Burger Image
                    Image.asset(
                      'assets/159187-burger-double-cheese-free-png-hq 2.png',
                      width: 120,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}