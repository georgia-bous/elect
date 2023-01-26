import 'package:flutter/material.dart';
import '/sign_inScreen.dart';
//import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 600;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(20 * fem, 132 * fem, 20 * fem, 20 * fem),
      color: Color(0xff1c1b1f),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
          Widget>[
        Container(
            margin:
                EdgeInsets.fromLTRB(140 * fem, 50 * fem, 52 * fem, 80 * fem),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 103.53 * fem,
                  height: 74.9 * fem,
                  child: Image.asset(
                    'assets/gemlogo-1.png',
                  ),
                ),
                Container(
                  width: 183.6 * fem,
                  height: 70.38 * fem,
                  child: Image.asset(
                    'assets/electlogo2.png',
                  ),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.fromLTRB(
                68.18 * fem, 63.86 * fem, 69.82 * fem, 170 * fem),
            color: Color(0xff1c1b1f),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 68.36 * fem),
                      child: Text(
                        'Welcome!',
                        textAlign: TextAlign.center,
                        style: /*GoogleFonts.getFont('Roboto',*/
                            TextStyle(
                                fontSize: 45 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.1555555556 * ffem / fem,
                                color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 21.5 * fem),
                      child: Text(
                        'Getting started!',
                        textAlign: TextAlign.center,
                        style: /*GoogleFonts.getFont(
                          'Roboto',*/
                            TextStyle(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2727272727 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        18.96 * fem, 0 * fem, 15.72 * fem, 58.5 * fem),
                    child: TextButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignIn()))
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
                            style: /*GoogleFonts.getFont(
                              'Roboto',*/
                                TextStyle(
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
                          0 * fem, 0 * fem, 0 * fem, 21.5 * fem),
                      child: Text(
                        'Already have an account?',
                        textAlign: TextAlign.center,
                        style: /*GoogleFonts.getFont(
                          'Roboto',*/
                            TextStyle(
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        18.96 * fem, 0 * fem, 15.72 * fem, 0 * fem),
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
                            style: /*GoogleFonts.getFont(
                              'Roboto',*/
                                TextStyle(
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286 * ffem / fem,
                              letterSpacing: 0.1000000015 * fem,
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
