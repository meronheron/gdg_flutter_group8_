import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart'; // Make sure to add this package in pubspec.yaml

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(username: "Maya Ramon"), // Pass the username here
    );
  }
}

class HomeScreen extends StatefulWidget {
  final String username;
  const HomeScreen({super.key, required this.username});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool bedTimeSwitch = true;
  bool alarmSwitch = true;
  int selectedDayIndex = 2; // Default selected day index

  @override
  Widget build(BuildContext context) {
    List<DateTime> weekDays = _generateWeekDays();
    List<String> dayNames = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.username},",
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Row(
                        children: const [
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

              // 💤 Sleep Summary
              Stack(
                clipBehavior: Clip.none,
                children: [
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
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -10,
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
                children: List.generate(weekDays.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDayIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          dayNames[index],
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selectedDayIndex == index
                                ? Colors.black
                                : Colors.grey.shade200,
                          ),
                          child: Text(
                            DateFormat('d').format(weekDays[index]),
                            style: TextStyle(
                              color: selectedDayIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                    Image.asset("assets/images/image7.png", width: 250),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DateTime> _generateWeekDays() {
    DateTime today = DateTime.now();
    return List.generate(7, (index) => today.add(Duration(days: index - today.weekday + 1)));
  }

  Widget sleepSettingCard(String title, String time, IconData icon, Color iconColor, bool switchValue, Function(bool) onChanged) {
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
              children: [FaIcon(icon, color: iconColor), const Spacer(), Icon(Icons.more_vert, color: Colors.grey.shade400)],
            ),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(time, style: TextStyle(color: Colors.grey.shade600)),
            const SizedBox(height: 10),
            Switch(value: switchValue, onChanged: onChanged),
          ],
        ),
      ),
    );
  }
}
