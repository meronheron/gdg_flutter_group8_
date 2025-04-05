import 'package:additional_flutter/facebook.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final text = TextEditingController();
  void _navigateToCameraPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FacebookHomePage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 18),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFF7970B1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintText: ' Search File',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Photos',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'November',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 163 / 105, // Adjusted for fixed width & height
                  children: [
                    for (var image in [
                      'assets/card.png',
                      'assets/card-two.png',
                      'assets/card-three.png',
                      'assets/card-four.png',
                      'assets/card-five.png',
                      'assets/card-six.png',
                      'assets/card-seven.png',
                      'assets/card.png',
                      'assets/card-two.png',
                      'assets/card-three.png',
                      'assets/card-four.png',
                      'assets/card-five.png',
                      'assets/card-six.png',
                      'assets/card-seven.png',
                    ])
                      SizedBox(
                        width: 375,
                        height: 812,
                        child: Image.asset(image, fit: BoxFit.cover),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF7970B1),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          if (index == 1) {
            _navigateToCameraPage(context);
          }
        },
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.preview),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.donut_small),
            label: '',
          ),
        ],
      ),
    );
  }
}
