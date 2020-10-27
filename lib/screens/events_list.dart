import 'package:flutter/material.dart';
import 'package:poc_iruka_flutter/widgets/appbar.dart';
import 'package:poc_iruka_flutter/widgets/bottom_navigation_bar.dart';
import 'package:poc_iruka_flutter/widgets/drawer.dart';

class EventsList extends StatefulWidget {
  @override
  _EventsListState createState() => new _EventsListState();
}

class _EventsListState extends State<EventsList> {
  String title;
  List<dynamic> events;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    if (arguments != null) {
      title = arguments['name'];
      events = arguments['events'];
      print(events);
    }
    return Scaffold(
        appBar: appBar(title),
        drawer: DrawerApp(),
        body: GridView.count(
          crossAxisCount: 1,
          children: events.map((event) {
            return Container(
              child: Text(event['description']),
            );
          }).toList(),
        ),
        bottomNavigationBar: BottomNavigator());
  }
}
