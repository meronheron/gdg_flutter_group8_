import 'package:additional_flutter/notifications.dart';
import 'package:flutter/material.dart';

class FacebookHomePage extends StatelessWidget {
  const FacebookHomePage({super.key});

  void _navigateToNotificationsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NotificationsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'facebook',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.blueAccent,
            ),
            onPressed: (){},
            color: Colors.black87,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(55),
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
              onTap: (index) {
                if (index == 3) {
                  _navigateToNotificationsPage(context);
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.ondemand_video),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: '',
                ),
              ],
              currentIndex: 0,
              // onTap: (index) {},
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/Profile-image.png'),
              ),
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade200,
                ),
                child: 
                Text(
                  "What's on your mind, mate?",
                  style: TextStyle(
                    color: Colors.black54, fontSize: 16
                    ),
                ),
              ),
              onTap: (){},
              
            ),



            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.play_circle_fill, 
                          color: Colors.black87
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text('Reels', 
                        style: TextStyle(
                          fontSize: 12, color: Colors.black87),)
                    ]
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.video_call, 
                          color: Colors.black87
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text('Room', 
                        style: TextStyle(
                          fontSize: 12, color: Colors.black87),)
                    ]
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.group, 
                          color: Colors.black87
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text('Group', 
                        style: TextStyle(
                          fontSize: 12, color: Colors.black87),)
                    ]
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.videocam, 
                          color: Colors.black87
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text('Live', 
                        style: TextStyle(
                          fontSize: 12, color: Colors.black87),)
                    ]
                  ),
                ],
              ),
            ),
            Container(
              height:8 , 
              color: Colors.grey.shade300
            ),
            //stories

            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                children: [
                  //story 1 
                  SizedBox(
                    width: 100,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/Profile-image.png',
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: AssetImage('assets/Profile-image.png'),
                            ),
                        ),
                        ),
                        
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  SizedBox(
                    width: 100,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/pro-2.png',
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage:
                                  AssetImage('assets/pro-2.png'),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          left: 8,
                          right: 8,
                          child: Text(
                            'Vish Pati',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.black54,
                                  offset: Offset(0.5, 0.5),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  SizedBox(
                    width: 100,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/pro-3.png',
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage:
                                  AssetImage('assets/pro-3.png'),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          left: 8,
                          right: 8,
                          child: Text(
                            'Rakesh Shetty',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.black54,
                                  offset: Offset(0.5, 0.5),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 100,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/pro-4.png',
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage:
                                  AssetImage('assets/pro-4.png'),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          left: 8,
                          right: 8,
                          child: Text(
                            'Akash Boire',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.black54,
                                  offset: Offset(0.5, 0.5),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(height: 8, color: Colors.grey.shade300),

            //post
            Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/Profile-image.png'),
                  ),
                  title: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                      children: [
                        TextSpan(
                          text: 'Deven mestry ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'is with ',
                        ),
                        TextSpan(
                          text: 'Mahesh Joshi.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Row(
                    children: const [
                      Text('1h • Mumbai, Maharashtra'),
                      SizedBox(width: 4),
                      Icon(Icons.public, size: 14, color: Colors.grey),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: const Text(
                    'Old is Gold..!! \u{1F60D} \u{1F60D}',
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ),
                Image.asset(
                  'assets/car.png',
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.thumb_up,
                            color: Colors.white, size: 12),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Liked by Sachin Kamble and 159 others',
                        style:
                            TextStyle(color: Colors.black54, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up_alt_outlined,
                            color: Colors.grey.shade700, size: 18),
                        label: Text('Like',
                            style:
                                TextStyle(color: Colors.grey.shade700)),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.mode_comment_outlined,
                            color: Colors.grey.shade700, size: 18),
                        label: Text('Comment',
                            style:
                                TextStyle(color: Colors.grey.shade700)),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.share_outlined,
                            color: Colors.grey.shade700, size: 18),
                        label: Text('Share',
                            style:
                                TextStyle(color: Colors.grey.shade700)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






































