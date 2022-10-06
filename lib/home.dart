// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'Widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final int days = 1;
  final String date = "29th September";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Project Application")),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text(
              "Welcome to my Application number $days -> Today date is - $date when I started "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
