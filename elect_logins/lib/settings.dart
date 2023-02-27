import 'package:flutter/material.dart';
import 'dart:ui';
import '/profileScreen.dart';
import 'postsFeed.dart';
import 'log_inScreen.dart';
import 'home_screen.dart';



class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width;
    double femm = MediaQuery.of(context).size.height;
    final PageController controller = PageController();

    return Scaffold(
        backgroundColor: Color(0xff1c1b1f),
        appBar: AppBar(
          title: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Feed()));
              },
              child: Image.asset('electlogo2.png',
              width: double.infinity,
              height: femm / 20,),
            )
          ),
          backgroundColor: Color(0xff1c1b1f),
          elevation: 4.0,
          actions: <Widget>[
            IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ],
        ),
        body: Column(children: [
          SizedBox(height: 25), 
          Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Logins',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: femm / 40,
                ),
              )),
          SizedBox(height: 20), 
          GestureDetector(
            onTap: () {
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LogIn()));
            },
            child: Text(
              'Add Account',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xff6750a4),
                fontSize: femm / 40,
              ),
            )),
           SizedBox(height: 20), 
           GestureDetector(
            onTap: () {
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Homescreen()));
            },
              child: Text(
                'Log Out',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff6750a4),
                  fontSize: femm / 40,
                ),
              )),
         
        ]));
  }
}
