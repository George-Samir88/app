import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage(
                  'assets/images/splashScreen.png',
              ),
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
  Timer? timer;
  startDelay(){
    timer = Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context,'/second' );
    }
    );
  }
}
