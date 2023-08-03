import 'package:flutter/material.dart';
import 'package:scent_wiz/components/custom_app_bar.dart';
import 'package:scent_wiz/components/nav_menu.dart';
import 'package:scent_wiz/components/icon_box_button.dart';


class ScentProfileScreen extends StatelessWidget {
  const ScentProfileScreen({
    super.key,
    required this.floralScore,
    required this.freshScore,
    required this.orientalScore,
    required this.woodyScore,
  });

  final double floralScore;
  final double freshScore;
  final double orientalScore;
  final double woodyScore;

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 50.0),
                GestureDetector(
                  child: IconBoxButton(
                    icon: Icons.brightness_7_rounded,
                    text: 'Floral',
                    progress: floralScore/6,
                  ),
                  onTap: () {

                  },
                ),
                const SizedBox(height: 30.0),
                GestureDetector(
                  child: IconBoxButton(
                    icon: Icons.water_drop_rounded,
                    text: 'Fresh',
                    progress: freshScore/6,
                  ),
                  onTap: () {

                  },
                ),
                const SizedBox(height: 30.0),
                GestureDetector(
                  child: IconBoxButton(
                    icon: Icons.local_fire_department,
                    text: 'Oriental',
                    progress: orientalScore/6,
                  ),
                  onTap: () {

                  },
                ),
                const SizedBox(height: 30.0),
                GestureDetector(
                  child: IconBoxButton(
                    icon: Icons.nature,
                    text: 'Woody',
                    progress: woodyScore/6,
                  ),
                  onTap: () {

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}