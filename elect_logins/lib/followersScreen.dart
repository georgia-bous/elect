import 'package:flutter/material.dart';
import 'dart:ui';

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
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                fillColor: Color(0xff25212e),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  //borderSide: BorderSide(color: Colors.white),
                ),
              ),
            )));
  }
}
