// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/Images/Login_img.png",
          fit: BoxFit.cover,
        ),
        Text(
          "Welcome $name",
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter user name",
                    labelText: "User name",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  }),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              const SizedBox(height: 20.0),
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.HomeRoutes);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 50 : 120,
                  height: 50,
                  alignment: Alignment.center,
                  // ignore: prefer_const_constructors, sort_child_properties_last
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      // shape: changeButton
                      // ? BoxShape.circle
                      // : BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8)),
                ),
              ),

              // ElevatedButton(
              //   // ignore: sort_child_properties_last
              //   child: const Text("Login"),
              //   style: TextButton.styleFrom(
              //       minimumSize: Size(130, 40), backgroundColor: Colors.teal),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.HomeRoutes);
              //   },
              // ),
            ],
          ),
        )
      ],
    ));
  }
}
