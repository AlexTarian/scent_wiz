import 'package:flutter/material.dart';
import 'package:scent_wiz/components/custom_app_bar.dart';
import 'package:scent_wiz/components/nav_menu.dart';
import 'package:scent_wiz/components/icon_box_button.dart';
import 'package:scent_wiz/views/scent_profile_screen.dart';
import 'package:scent_wiz/services/word_count.dart';

class NoteHubScreen extends StatelessWidget {
  NoteHubScreen({
    super.key,
    required this.preferenceData
  });

  final TextEditingController preferenceData;
  int floralCount = 0;
  int freshCount = 0;
  int orientalCount = 0;
  int woodyCount = 0;

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
                    // Count word instances
                    Map<String, int> wordFrequency = countWords(preferenceData.text);

                    // Retrieve word counts or default to 0 if the word is not found
                    floralCount = wordFrequency['floral'] ?? 0;
                    freshCount = wordFrequency['fresh'] ?? 0;
                    orientalCount = wordFrequency['oriental'] ?? 0;
                    woodyCount = wordFrequency['woody'] ?? 0;

                    // Navigate to ScentProfileScreen with the calculated word counts
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScentProfileScreen(
                          floralScore: floralCount.toDouble(),
                          freshScore: freshCount.toDouble(),
                          orientalScore: orientalCount.toDouble(),
                          woodyScore: woodyCount.toDouble(),
                        ),
                      ),
                    );
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