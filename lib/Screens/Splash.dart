import 'package:flutter/material.dart';
import 'dart:async';

//screens
import 'main_home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Main_home())));

  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor
      ),

      child: Center(
        child: Image(image: AssetImage("images/logo.png"),width:100 ,),
      ),
    );
  }
}
