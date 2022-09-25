import 'dart:async';
import 'package:flutter/material.dart';
import 'package:irbid_app/welcome_page.dart';

void main() {
  runApp(const MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  dynamic animationController;
  dynamic animation;

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    });
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/splash.png'), fit: BoxFit.cover)),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'بلدية إربد الكبرى',
                      style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 16.0,
                          fontFamily: 'Dubai',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'جميع الحقوق محفوظة © 2022',
                      style: TextStyle(
                          fontFamily: 'Dubai',
                          color: Color(0XFFFFFFFF),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  width: animation.value * 250,
                  height: animation.value * 250,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
