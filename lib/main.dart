import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: (Colors.deepOrange),
      ),
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpage(),
        "/home": (context) => Home(),
        "/login": (context) => Loginpage(),
      },
    );
  }
}
