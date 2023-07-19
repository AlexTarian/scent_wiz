import 'package:flutter/material.dart';
import 'package:scent_wiz/components/custom_app_bar.dart';
import 'package:scent_wiz/components/nav_menu.dart';
import 'package:scent_wiz/components/icon_box_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      drawerEnableOpenDragGesture: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85.0),
        child: Builder(builder: (context) {
          return customAppBar(iconR: Icons.help, onPressedR: () {});
        }),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColorDark,
              Theme.of(context).primaryColorLight,
              Theme.of(context).scaffoldBackgroundColor,
            ],
          )),
          child: SafeArea(
            minimum: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20.0),
                const Text(
                  'SCENT WIZARD',
                  style: TextStyle(
                    //fontFamily: 'PermanentMarker',
                    fontSize: 50.0,
                  ),
                ),
                const SizedBox(height: 50.0),
                GestureDetector(
                  child: const IconBoxButton(
                    icon: Icons.person,
                    text: 'Scent Profile',
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 30.0),
                GestureDetector(
                  child: const IconBoxButton(
                    icon: Icons.search,
                    text: 'Find a Scent',
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 30.0),
                GestureDetector(
                  child: const IconBoxButton(
                    icon: Icons.list,
                    text: 'Browse Scents',
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 30.0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
