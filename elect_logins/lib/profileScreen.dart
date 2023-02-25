import 'package:flutter/material.dart';
import 'dart:ui';
import '/followersScreen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        body: Column(children: [
          Container(
            height: femm / 5,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            width: MediaQuery.of(context).size.width,
            color: Color(0xff25232a),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(
                      top: femm / 60, right: 80, bottom: femm / 70, left: 80),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/profile1.png'),
                    ),
                  ),
                )),
                Container(
                  child: Text(
                    'Billy Joel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: femm / 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: femm / 60),
                )
              ],
            ),
          ),
          Container(
              height: femm / 9,
              margin: EdgeInsets.only(top: femm / 50, right: 10, left: 10),
              child: Row(children: [
                Container(
                    width: MediaQuery.of(context).size.width / 2 - 15.0,
                    color: Color(0xff25232a),
                    child: Column(
                      children: [
                        Container(
                          height: femm / 20,
                          width: 50,
                          margin: EdgeInsets.only(top: femm / 80),
                          //width: 15.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/gemlogo-1.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: femm / 35,
                          margin: EdgeInsets.only(top: femm / 80),
                          child: Text(
                            '259',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: femm / 45,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2 - 15.0,
                    color: Color(0xff25232a),
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Followers()));
                          },
                          child: Container(
                            height: femm / 20,
                            width: 50,
                            margin: EdgeInsets.only(top: femm / 80),
                            //width: 15.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Followers.png'),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: femm / 35,
                          margin: EdgeInsets.only(top: femm / 80),
                          child: Text(
                            '170',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: femm / 45,
                            ),
                          ),
                        ),
                      ],
                    )),
              ])),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Current Dilemmas:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: femm / 40,
                ),
              ),
              margin: EdgeInsets.only(
                  top: femm / 50, right: 10, bottom: femm / 90, left: 10)),
          Container(
              height: femm / 6,
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Row(children: [
                Container(
                    width: MediaQuery.of(context).size.width / 2 - 20.0,
                    color: Color(0xff25232a),
                    padding: EdgeInsets.only(top: femm / 70),
                    child: Column(
                      children: [
                        Container(
                          height: femm / 11,
                          //width: femm / 11,
                          //margin: EdgeInsets.only(top: femm / 150),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/dilemma1.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          height: femm / 20,
                          margin: EdgeInsets.only(top: femm / 150),
                          child: Text(
                            'Add Resolution',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: femm / 40,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2 - 20.0,
                    margin: EdgeInsets.only(left: 20),
                    color: Color(0xff25232a),
                    padding: EdgeInsets.only(top: femm / 70),
                    child: Column(
                      children: [
                        Container(
                          height: femm / 11,
                          //width: 50,
                          //margin: EdgeInsets.only(top: 30),
                          //width: 15.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Upload.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: femm / 20,
                          margin: EdgeInsets.only(top: femm / 150),
                          child: Text(
                            'New Dilemma',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: femm / 40,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ))
              ])),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Previous Dilemmas:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: femm / 40,
                ),
              ),
              margin: EdgeInsets.only(
                  top: femm / 50, right: 10, bottom: femm / 90, left: 10)),
          Container(
              height: femm / 5,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                controller: controller,
                children: <Widget>[
                  /*Container(
                      width: fem / 3,
                      margin: EdgeInsets.only(left: femm / 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff25232a),
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: femm / 7,
                              width: fem / 5,
                              margin: EdgeInsets.only(
                                  top: femm / 60,
                                  right: fem / 40,
                                  bottom: femm / 90,
                                  left: fem / 40),
                              /*
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/snow.jpg'),
                              ),
                            ),*/
                              child: Stack(children: [
                                Image.asset('assets/profile1.png'),
                                Positioned(
                                    bottom: femm / 14,
                                    left: fem / 13,
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(fem / 20),
                                        child: Image.asset("assets/snow.jpg",
                                            height: femm / 10, width: fem / 8)))
                              ])),
                          Container(
                              height: femm / 15,
                              width: fem / 3,
                              padding: EdgeInsets.only(left: fem / 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: femm / 18,
                                    width: fem / 15,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/gemlogo-1.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: fem / 60),
                                      child: Text(
                                        "99",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: femm / 40,
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      )),*/
                  Container(
                      width: fem / 3,
                      margin: EdgeInsets.only(left: femm / 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff25232a),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: femm / 9,
                            width: fem / 5,
                            margin: EdgeInsets.only(
                                top: femm / 80,
                                right: fem / 40,
                                //bottom: femm / 150,
                                left: fem / 40),
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/snow.jpg'),
                              ),
                            ),
                          ),
                          Container(
                              height: femm / 15,
                              width: fem / 3,
                              padding: EdgeInsets.only(left: fem / 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: femm / 10,
                                    width: fem / 13,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/gemlogo-1.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: fem / 60),
                                      child: Text(
                                        "99",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: femm / 35,
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      )),
                  Container(
                      width: fem / 3,
                      margin: EdgeInsets.only(left: femm / 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff25232a),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: femm / 9,
                            width: fem / 5,
                            margin: EdgeInsets.only(
                                top: femm / 80,
                                right: fem / 40,
                                //bottom: femm / 150,
                                left: fem / 40),
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/snow.jpg'),
                              ),
                            ),
                          ),
                          Container(
                              height: femm / 15,
                              width: fem / 3,
                              padding: EdgeInsets.only(left: fem / 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: femm / 10,
                                    width: fem / 13,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/gemlogo-1.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: fem / 60),
                                      child: Text(
                                        "54",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: femm / 35,
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      )),
                  Container(
                      width: fem / 3,
                      margin: EdgeInsets.only(left: femm / 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff25232a),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: femm / 9,
                            width: fem / 5,
                            margin: EdgeInsets.only(
                                top: femm / 80,
                                right: fem / 40,
                                //bottom: femm / 150,
                                left: fem / 40),
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/snow.jpg'),
                              ),
                            ),
                          ),
                          Container(
                              height: femm / 15,
                              width: fem / 3,
                              padding: EdgeInsets.only(left: fem / 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: femm / 10,
                                    width: fem / 13,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/gemlogo-1.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: fem / 60),
                                      child: Text(
                                        "60",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: femm / 35,
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      )),
                  Container(
                      width: fem / 3,
                      margin: EdgeInsets.only(left: femm / 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff25232a),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: femm / 9,
                            width: fem / 5,
                            margin: EdgeInsets.only(
                                top: femm / 80,
                                right: fem / 40,
                                //bottom: femm / 150,
                                left: fem / 40),
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/snow.jpg'),
                              ),
                            ),
                          ),
                          Container(
                              height: femm / 15,
                              width: fem / 3,
                              padding: EdgeInsets.only(left: fem / 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: femm / 10,
                                    width: fem / 13,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/gemlogo-1.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: fem / 60),
                                      child: Text(
                                        "46",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: femm / 35,
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      )),
                ],
              ))
        ]));
  }
}
