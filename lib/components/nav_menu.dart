import 'package:flutter/material.dart';
import 'package:scent_wiz/constants.dart';
import 'package:scent_wiz/views/home_screen.dart';


class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 117.0,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: themeColor,
              ),
              child: const Center(
                child: Text(
                  'Main Menu',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
          ListTile(
            iconColor: themeColor,
            leading: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Dashboard',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}