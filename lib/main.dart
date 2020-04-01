import 'package:flutter/material.dart';

import 'Screens/Splash.dart';
void main() => runApp(

  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Splash() ,

    theme: ThemeData(
      accentColor: Color(0xff50abf1),
    ),
  )
);
