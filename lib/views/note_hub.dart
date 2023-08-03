import 'package:flutter/material.dart';
import 'package:scent_wiz/components/custom_app_bar.dart';
import 'package:scent_wiz/components/nav_menu.dart';
import 'package:scent_wiz/components/icon_box_button.dart';
import 'package:scent_wiz/views/scent_profile_screen.dart';

class NoteHubScreen extends StatelessWidget {
  const NoteHubScreen({
    super.key,
    required this.preferenceData
  });

  final TextEditingController preferenceData;

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
                  child: const IconBoxButton(
                    icon: Icons.check_circle,
                    text: 'Notes You Like',
                  ),
                  onTap: () {
                    
                  },
                ),
                const SizedBox(height: 30.0),
                GestureDetector(
                  child: const IconBoxButton(
                    icon: Icons.do_not_disturb_alt,
                    text: 'Notes You Don\'t Like',
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 30.0),
                GestureDetector(
                  child: const IconBoxButton(
                    icon: Icons.arrow_circle_right,
                    text: 'Go to Summary',
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => ScentProfileScreen(
                      floralScore: 0.0,
                      freshScore: 0.0,
                      orientalScore: 4.0,
                      woodyScore: 2.0,
                    )));
                  },
                ),
                const SizedBox(height: 50),
                Text(preferenceData.text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}