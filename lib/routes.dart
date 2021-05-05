import 'package:flutter/cupertino.dart';
import 'package:villaflor_mobdev/pages/dashboard.dart';
import 'package:villaflor_mobdev/pages/login.dart';
import 'package:villaflor_mobdev/pages/registration.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (BuildContext context) => Login(),
  Registration.routeName: (BuildContext context) => Registration(), 
  Dashboard.routeName: (BuildContext context) => Dashboard(),
};