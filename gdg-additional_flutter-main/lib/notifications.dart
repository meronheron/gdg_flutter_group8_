import 'package:additional_flutter/facebook.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  void _navigateToFacebookPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FacebookHomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = 3;
    final List<Widget> items = [
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade200,
                child: const Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 177, 198, 236),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'New',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 177, 198, 236),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/pro-5.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Darell Trividi has a new story up.'),
                      Text('Whats your reaction?'),
                      Text(
                        '2 hours ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 177, 198, 236),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/pro-6.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Darell Trividi has a new story up.'),
                      Text('Whats your reaction?'),
                      Text(
                        '2 hours ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 177, 198, 236),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/pro-5.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Darell Trividi has a new story up.'),
                      Text('Whats your reaction?'),
                      Text(
                        '2 hours ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 210, 223, 248),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/pro-6.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Darell Trividi has a new story up.'),
                      Text('Whats your reaction?'),
                      Text(
                        '2 hours ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
        ),
      ),
      // "Earlier" section header.
      Container(
        color: const Color.fromARGB(255, 177, 198, 236),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Earlier',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 207, 219, 241),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/pro-5.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Darell Trividi has a new story up.'),
                      Text('Whats your reaction?'),
                      Text(
                        '2 hours ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 177, 198, 236),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/pro-6.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Darell Trividi has a new story up.'),
                      Text('Whats your reaction?'),
                      Text(
                        '2 hours ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 177, 198, 236),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/pro-5.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Darell Trividi has a new story up.'),
                      Text('Whats your reaction?'),
                      Text(
                        '2 hours ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 177, 198, 236),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/pro-6.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Darell Trividi has a new story up.'),
                      Text('Whats your reaction?'),
                      Text(
                        '2 hours ago',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: Material(
            elevation: 0,
            shadowColor: Colors.transparent,
            color: Colors.white,
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blueAccent,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: currentIndex,
              // onTap: (index) {},
              onTap: (index) {
                if (index == 0) {
                  _navigateToFacebookPage(context);
                }
              },
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: '',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.ondemand_video),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                    color: currentIndex == 3 ? Colors.blueAccent : Colors.grey,
                  ),
                  label: '',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index];
        },
      ),
    );
  }
}
