import 'package:flutter/material.dart';

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
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(height: 100), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Ellipse 1.png'),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enjoy\n Your Food',
                   textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Button padding
                  decoration: BoxDecoration(
                    color: Colors.white, // White background
                    borderRadius: BorderRadius.circular(30), // Curved edges
                  ),
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 78, 63, 173), // Text color
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
