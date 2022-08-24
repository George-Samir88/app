import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lavie2/modules/home_screen/home_screen.dart';
import 'package:lavie2/modules/login/login.dart';
import 'package:lavie2/modules/notification_screen/notifiaction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        appBarTheme:const  AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          //color: Colors.white,
          elevation: 0.0,
        ),
      ),
      home: const NotificationScreen(),
    );
  }
}