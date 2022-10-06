import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imgurl = "assets/Images/profile.jpg";
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // ignore: prefer_const_constructors
                accountName: Text("Shehzad Warraich"),
                // ignore: prefer_const_constructors
                accountEmail: Text("Swservices3642@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imgurl),
                ))),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
            color: Colors.teal,
          ),
          title: Text(
            "Home",
            textScaleFactor: 1.2,
            style: (TextStyle(color: Colors.teal)),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.teal,
          ),
          title: Text(
            "Profile",
            textScaleFactor: 1.2,
            style: (TextStyle(color: Colors.teal)),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.mail,
            color: Colors.teal,
          ),
          title: Text(
            "Email Ne",
            textScaleFactor: 1.2,
            style: (TextStyle(color: Colors.teal)),
          ),
        ),
      ]),
    );
  }
}
