import 'package:flutter/material.dart';
import '/sign_inScreen.dart';
//import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 600;
    double baseHeight = 800;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double femm = MediaQuery.of(context).size.height / baseHeight;
    double ffem = fem * 0.97;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(25 * fem, 120 * femm, 20 * fem, 10 * femm),
      color: Color(0xff1c1b1f),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
          Widget>[
        Container(
            margin:
                EdgeInsets.fromLTRB(140 * fem, 30 * femm, 52 * fem, 50 * femm),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      70 * fem, 70 * femm, 70 * fem, 60 * femm),
                  child: Text(
                    'Welcome!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 45 * ffem,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff)),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * femm, 0 * fem, 15 * femm),
                  child: Text(
                    'Getting started!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 22 * ffem,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    68 * fem, 0 * femm, 60 * fem, 55 * femm),
                child: TextButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => SignIn()))
                  },
                  child: Container(
                    height: 60 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff6750a4),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * femm, 0 * fem, 15 * femm),
                  child: Text(
                    'Already have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 22 * ffem,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(68 * fem, 0 * femm, 68 * fem, 0 * femm),
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 60 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff6750a4),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Log In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]))
      ]),
    ));
  }
}
