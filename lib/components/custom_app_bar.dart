import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  customAppBar({
    required this.iconR,
    required this.onPressedR,
  });

  final IconData iconR;
  final VoidCallback onPressedR;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 85.0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Builder(
            builder: (context) => GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Icon(Icons.menu,
                color: Colors.white,
                size: 45.0,
              ),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Image(image: AssetImage('assets/images/willow_logo.png'),
              height: 60.0,
            ),
          ),
          GestureDetector(
            onTap: onPressedR,
            child: Icon(
              iconR,
              color: Colors.white,
              size: 45.0,
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}