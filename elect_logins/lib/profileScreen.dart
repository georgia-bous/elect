import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 600;
    double baseHeight = 800;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double femm = MediaQuery.of(context).size.height / baseHeight;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0xff1c1b1f),
      appBar: AppBar(
        title: Center(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/electlogo2.png'),
              //fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: 40,
        )),
        backgroundColor: Color(0xff1c1b1f),
        elevation: 4.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // handle more options action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 200.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: MediaQuery.of(context).size.width,
              color: Color(0xff25232a),
              child: Container(
                  //width: 150,
                  //height: 15.0,
                  padding:
                      EdgeInsets.only(top: 50, right: 30, bottom: 20, left: 30),
                  color: Colors.red,
                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/profile1.png'),
                      ),
                    ),
                  ))),
          //fit: BoxFit.cover,
          // Add more widgets here
        ],
      ),
    );
  }
}
