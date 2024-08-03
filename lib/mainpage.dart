import 'package:flutter/material.dart';
import 'package:task1_flutter/page/defaultwidget.dart';
import 'package:task1_flutter/page/homepage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _loadWidgets(int index) {
    var nameWidgets = "Home";
    switch (index) {
      case 0:
        {
          return HomePage();
        }
      case 1:
        nameWidgets = "Contact: 0797119050";
        break;
      case 2:
        nameWidgets = "Info";
        break;
      default:
        nameWidgets = "None";
        break;
    }
    return defaultwidget(title: nameWidgets); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nguyễn An Quốc Thái"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 40,
                   backgroundImage: AssetImage('assets/images/thai1.jpg'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('QuocThai'),
                  Text('craikaizer@gmail.com'),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); 
                _onItemTapped(0); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(1); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_location_alt),
              title: const Text('Nearby'),
              onTap: () {
                Navigator.pop(context); 
                _onItemTapped(2); 
              },
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text('Bookmark'),
              onTap: () {
                Navigator.pop(context); 
                _onItemTapped(3); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notification'),
              onTap: () {
                Navigator.pop(context); 
                _onItemTapped(3); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.message_outlined),
              title: const Text('Message'),
              onTap: () {
                Navigator.pop(context); 
                _onItemTapped(3); 
              },
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {
                Navigator.pop(context); 
                _onItemTapped(3); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                Navigator.pop(context); 
                _onItemTapped(3); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log out'),
              onTap: () {
                Navigator.pop(context); 
                _onItemTapped(0); 
              },
            )
          ],
        ),
      ),
      body: _loadWidgets(_selectedIndex),
    );
  }
}
