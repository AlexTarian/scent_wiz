import 'dart:async';
import 'package:flutter/material.dart';
import 'package:scent_wiz/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomeScreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColorDark,
                Theme.of(context).primaryColorLight,
                Theme.of(context).scaffoldBackgroundColor,
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            // Text('Scent Wizard',
            //   style: TextStyle(
            //     //fontFamily: 'kodchasan',
            //     fontSize: 60.0,
            //   ),
            // ),
            // Text('by Willow Parfums & Cosmetics',
            //   style: TextStyle(
            //     //fontFamily: 'kodchasan',
            //     fontSize: 30.0,
            //   ),
            // ),
            Image(image: AssetImage('assets/images/willow_logo.png')),
            // Text('Story Blueprint App',
            //   style: TextStyle(
            //     //fontFamily: 'kodchasan',
            //     fontSize: 40.0,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}