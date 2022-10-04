import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final int days = 1;
  final String date = "29th September";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Project Application")),
      body: Center(
        child: Container(
          child: Text(
              "Welcome to my Application number $days -> Today date is - $date when I started "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
