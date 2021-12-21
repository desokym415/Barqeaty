import 'package:barkeaty/stateful/sign_in.dart';
import 'package:barkeaty/stateless/about_app.dart';
import 'package:flutter/material.dart';
import 'stateless/whoAreWe.dart';
import 'package:barkeaty/stateful/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: sign_in(),

    );
  }
}


