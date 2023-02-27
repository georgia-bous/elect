import 'package:flutter/material.dart';
import 'dart:ui';
import 'settings.dart';

class Followers extends StatefulWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    //double baseWidth = 600;
    //double baseHeight = 800;
    double fem = MediaQuery.of(context).size.width;
    double femm = MediaQuery.of(context).size.height;
    //double ffem = fem * 0.97;
    final PageController controller = PageController();

    return Scaffold(
      backgroundColor: Color(0xff1c1b1f),
      appBar: AppBar(
        title: Center(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/electlogo2.png'),
            ),
          ),
          width: double.infinity,
          height: femm / 20,
        )),
        backgroundColor: Color(0xff1c1b1f),
        elevation: 4.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Settings()));
            }
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(fontSize: 16, color: Color.fromARGB(255, 157, 157, 157)),
            filled: true,
            fillColor: Color(0xff25212e),
            prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 157, 157, 157),),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 157, 157, 157)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2.5, color: Color.fromARGB(255, 130, 46, 156)),
            ),
          ),
        )
      )
    );
  }
}
