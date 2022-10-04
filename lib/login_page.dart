import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/Images/Login_img.png",
          fit: BoxFit.cover,
        ),
        const Text(
          "Welcome",
          style: TextStyle(
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
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text("Login"),
                style: TextButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: () {
                  print(
                      "Congrats Shehzad your 1st Page(Login_Page) is completed of with flutter code");
                },
              ),
            ],
          ),
        )
      ],
    ));
  }
}
