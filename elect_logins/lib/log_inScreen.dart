import 'package:flutter/material.dart';
import '/sign_inScreen.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 600;
    double baseHeight = 800;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double femm = MediaQuery.of(context).size.height / baseHeight;
    double ffem = fem * 0.97;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.fromLTRB(
                    25 * fem, 120 * femm, 25 * fem, 35 * femm),
                color: Color(0xff1c1b1f),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(
                            52 * fem, 30 * femm, 52 * fem, 180 * femm),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 113.88 * fem,
                              height: 82.39 * fem,
                              child: Image.asset(
                                'assets/gemlogo-1.png',
                              ),
                            ),
                            Container(
                              width: 201.96 * fem,
                              height: 77.42 * fem,
                              child: Image.asset(
                                'assets/electlogo2.png',
                              ),
                            ),
                          ],
                        )),
                    Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Container(
                            width: double.infinity,
                            height: 75 * fem,
                            margin: EdgeInsets.fromLTRB(
                                30 * fem, 10 * femm, 10 * fem, 30 * femm),
                            padding: EdgeInsets.only(
                                left: 20, top: 10, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              color: Color(0xff25232a),
                              borderRadius: BorderRadius.circular(50 * fem),
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Colors.white54,
                                    fontFamily: 'Rubik',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5 * fem,
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Rubik',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.5 * fem)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                30 * fem, 0 * femm, 10 * fem, 20 * femm),
                            //width: double.infinity,
                            height: 75 * fem,
                            padding: EdgeInsets.only(
                                left: 20, top: 10, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              color: Color(0xff25232a),
                              borderRadius: BorderRadius.circular(50 * fem),
                            ),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: 'Rubik',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5 * fem,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ])),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          133 * fem, 0 * femm, 133 * fem, 8 * femm),
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 80 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff6750a4),
                            borderRadius: BorderRadius.circular(100 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Log in',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 27 * ffem,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          100 * fem, 0 * femm, 100 * fem, 5 * femm),
                      child: TextButton(
                        onPressed: () => {
                          Navigator.pop(context),
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => SignIn()))
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'Don\'t have an account? Sign in!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w200,
                                letterSpacing: 0.1 * fem,
                                color: Color(0xff6750a4),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
