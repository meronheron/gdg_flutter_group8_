import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get container => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 95, 77, 255),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Ellipse 5.png'),
                    ],
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 316,
                      height: 243,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Profile',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Text(
                              'Name: GDG mentee',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Group number: GDG 8 ',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Fav food: shero ',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ])));
  }
}
