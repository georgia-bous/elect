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
        body: Column(children: [
          Container(
            height: 250.0,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            width: MediaQuery.of(context).size.width,
            color: Color(0xff25232a),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  margin:
                      EdgeInsets.only(top: 30, right: 80, bottom: 30, left: 80),
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
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 40),
                )
              ],
            ),
          ),
          Container(
              height: 150.0,
              margin: EdgeInsets.only(top: 20.0, right: 10, left: 10),
              child: Row(children: [
                Container(
                    width: MediaQuery.of(context).size.width / 2 - 15.0,
                    color: Color(0xff25232a),
                    child: Column(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50,
                          margin: EdgeInsets.only(top: 30),
                          //width: 15.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/gemlogo-1.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          margin: EdgeInsets.only(top: 15),
                          child: Text(
                            '259',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
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
                        Container(
                          height: 50.0,
                          width: 50,
                          margin: EdgeInsets.only(top: 30),
                          //width: 15.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Followers.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          margin: EdgeInsets.only(top: 15),
                          child: Text(
                            '170',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
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
                  fontSize: 18.0,
                ),
              ),
              margin:
                  EdgeInsets.only(top: 15, right: 10, bottom: 15, left: 10)),
          Container(
              height: 240.0,
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Row(children: [
                Container(
                    width: MediaQuery.of(context).size.width / 2 - 20.0,
                    color: Color(0xff25232a),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              height: 80.0,
                              width: 80,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/dilemma1.jpg'),
                                ),
                              ),
                            )),
                        Container(
                          height: 40.0,
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Add Resolution',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2 - 20.0,
                    margin: EdgeInsets.only(left: 20),
                    color: Color(0xff25232a),
                    child: Column(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50,
                          margin: EdgeInsets.only(top: 30),
                          //width: 15.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Upload.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          margin: EdgeInsets.only(top: 15),
                          child: Text(
                            'New Dilemma',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ))
              ]))
        ]));
  }
}
