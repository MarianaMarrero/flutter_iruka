import 'package:flutter/material.dart';

class EventsList extends StatefulWidget {
  @override
  _EventsListState createState() => new _EventsListState();
}

class _EventsListState extends State<EventsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: Text("Soy un listado"),
      ),
    );
  }
}
