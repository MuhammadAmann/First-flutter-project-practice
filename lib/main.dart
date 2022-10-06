// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: (Colors.teal),
      ),
      darkTheme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomeRoutes,
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.HomeRoutes: (context) => const Home(),
        MyRoutes.LoginRoutes: (context) => const Loginpage(),
      },
    );
  }
}
