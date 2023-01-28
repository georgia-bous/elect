import 'package:flutter/material.dart';
import '/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Homescreen()));
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 600;
    double baseHeight = 800;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double femm = MediaQuery.of(context).size.height / baseHeight;
    return Scaffold(
        body: Center(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      120 * fem, 100 * femm, 120 * fem, 90 * femm),
                  child: Image.asset('assets/gemlogo-1.png'),
                ))));
  }
}
