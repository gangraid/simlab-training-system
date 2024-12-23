import 'first.dart';
import 'third.dart';
import 'second.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Dr. Vinith'),
            accountEmail: Text('ILoveYashodaHospitals@gmail.com'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset(
                'images/Vinth.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            )
                // backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(
                  'images/background.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const ProfilePage();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_sharp),
            title: const Text('Progress'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const FirstPage();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
