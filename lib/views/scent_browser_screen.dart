import 'package:flutter/material.dart';
import 'package:scent_wiz/components/custom_app_bar.dart';
import 'package:scent_wiz/components/nav_menu.dart';
import 'package:scent_wiz/constants.dart';
import 'package:scent_wiz/components/scent_list.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ScentBrowserScreen extends StatefulWidget {
  const ScentBrowserScreen({
    super.key,
  });

  @override
  State<ScentBrowserScreen> createState() => _ScentBrowserScreenState();
}

class _ScentBrowserScreenState extends State<ScentBrowserScreen> {
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
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(height: 10),
                    itemCount: ScentList().scentList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                        ),
                        child: ListTile(
                          minVerticalPadding: 10.0,
                          leading: GestureDetector(
                            child: Icon(ScentList().scentList.elementAt(index).favorite ? Icons.favorite : Icons.favorite_border),
                            onTap: () {
                              setState(() {
                                ScentList().scentList.elementAt(index).favorite ? ScentList().scentList.elementAt(index).favorite = false : ScentList().scentList.elementAt(index).favorite = true;
                              });
                            },
                          ),
                          title: Text(ScentList().scentList.elementAt(index).name, style: const TextStyle(fontSize: 20.0),),
                          iconColor: Theme.of(context).primaryColor,
                          textColor: Theme.of(context).primaryColor,
                          onTap: () {
                            Alert(
                              context: context,
                              title: '${ScentList().scentList.elementAt(index).name} (${ScentList().scentList.elementAt(index).gender})',
                              desc: 'Top: ${ScentList().scentList.elementAt(index).top}\nHeart: ${ScentList().scentList.elementAt(index).heart}\nBase: ${ScentList().scentList.elementAt(index).base}',
                              buttons: [
                                DialogButton(
                                  color: willowGray,
                                  child: const Text('Cancel',
                                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                DialogButton(
                                  color: willowGray,
                                  child: Text(ScentList().scentList.elementAt(index).favorite ? 'Unfavorite' : 'Favorite',
                                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      ScentList().scentList.elementAt(index).favorite ? ScentList().scentList.elementAt(index).favorite = false : ScentList().scentList.elementAt(index).favorite = true;
                                    });
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ).show();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}