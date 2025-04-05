import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool bedTimeSwitch = true;
  bool alarmSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(height: 20),

              // 🌟 Greeting and Notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maya Ramon,",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Text(
                            "Good Morning ",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("😊", style: TextStyle(fontSize: 22)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 💤 Sleep Summary with Pink Background (Now on Top)
              Stack(
                clipBehavior: Clip.none, // Allow pink background to overflow
                children: [
                  // Green Card (Main Sleep Summary)
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: "You have slept ",
                              style: const TextStyle(fontSize: 16),
                              children: [
                                const TextSpan(
                                  text: "09:30 ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(text: "that is above your "),
                                TextSpan(
                                  text: "recommendation",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.close, color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                  // Pink Background (Now On Top of Green Card)
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -10, // Moves it to slightly overlap the green card
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 📅 Sleep Calendar
              const Text(
                "Your Sleep Calendar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(6, (index) {
                  int day = 22 + index;
                  return Column(
                    children: [
                      Text(
                        ["Tue", "Wed", "Thu", "Fri", "Sat", "Sun"][index],
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              day == 24 ? Colors.black : Colors.grey.shade200,
                        ),
                        child: Text(
                          "$day",
                          style: TextStyle(
                            color: day == 24 ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),

              const SizedBox(height: 20),

              // 🕒 Sleep Settings (Bedtime & Alarm)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sleepSettingCard(
                    "Bed time",
                    "7H and 28Min",
                    FontAwesomeIcons.bed,
                    Colors.purple,
                    bedTimeSwitch,
                    (value) {
                      setState(() {
                        bedTimeSwitch = value;
                      });
                    },
                  ),
                  sleepSettingCard(
                    "Alarm",
                    "16H and 18Min",
                    FontAwesomeIcons.clock,
                    Colors.orange,
                    alarmSwitch,
                    (value) {
                      setState(() {
                        alarmSwitch = value;
                      });
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 💤 Sleep Consultation
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Have a problem",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          const Text(
                            "Sleeping?",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple.shade200,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Consult an expert",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/image7.png", // Ensure correct path
                      width: 250,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Sleep Setting Card Widget
  Widget sleepSettingCard(
    String title,
    String time,
    IconData icon,
    Color iconColor,
    bool switchValue,
    Function(bool) onChanged,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 5)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FaIcon(icon, color: iconColor),
                const Spacer(),
                Icon(Icons.more_vert, color: Colors.grey.shade400),
              ],
            ),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(time, style: TextStyle(color: Colors.grey.shade600)),
            const SizedBox(height: 10),
            Switch(value: switchValue, onChanged: onChanged),
          ],
        ),
      ),
    );
  }
}
