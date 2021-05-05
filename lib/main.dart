import 'package:flutter/material.dart';
import 'package:villaflor_mobdev/pages/login.dart';
import 'package:villaflor_mobdev/routes.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.purple,
      accentColor: Colors.deepPurple,
      textTheme: TextTheme(
        headline5: TextStyle(
          fontSize: 72.0,
          fontWeight: FontWeight.bold,
        ),
        headline6: TextStyle(
          fontSize: 36.0,
          fontStyle: FontStyle.italic,
        ),
        bodyText2: TextStyle(
          fontSize: 18.0,
        ),
      )
    ),
    routes: routes,
    home: Login(),
  ));
}