import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = "dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Tracer"),
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Contact Tracer")
        )
      )
    );
  }
}