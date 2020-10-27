import 'package:flutter/material.dart';
import 'package:poc_iruka_flutter/app.dart';
import 'package:poc_iruka_flutter/screens/calendar.dart';
import 'package:poc_iruka_flutter/screens/events_list.dart';
import 'package:poc_iruka_flutter/screens/help.dart';
import 'package:poc_iruka_flutter/screens/home.dart';
import 'package:poc_iruka_flutter/screens/login.dart';

void main() {
  runApp(new MaterialApp(
    home: App(),
    routes: {
      "/inicio": (BuildContext context) => Home(),
      "/login": (BuildContext context) => Login(),
      "/events_list": (BuildContext context) => EventsList(),
      "/help": (BuildContext context) => Help(),
      "/calendar": (BuildContext context) => Calendar(),
    },
  ));
}
