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

  final _formkey = GlobalKey<FormState>();

  MovetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoutes);

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Form(
      key: _formkey,
      child: Column(
        children: [
          Image.asset(
            "assets/Images/Login_img.png",
            fit: BoxFit.cover,
            height: 250,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter user name",
                      labelText: "User name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "User name can not be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password can not be empty";
                    } else if (value.length < 6) {
                      return "password should be atleast 6 digit";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 20.0),
                Material(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(changeButton ? 40 : 8),
                  child: InkWell(
                    onTap: () => MovetoHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 40 : 120,
                      height: 40,
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
                                fontSize: 16,
                              ),
                            ),
                    ),
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
      ),
    ));
  }
}
