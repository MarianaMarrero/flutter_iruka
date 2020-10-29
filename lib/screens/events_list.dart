import 'package:flutter/cupertino.dart';
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
        appBar: appBar(title.toUpperCase()),
        drawer: DrawerApp(),
        body: GridView.count(
          crossAxisSpacing: 0,
          mainAxisSpacing: 1,
          crossAxisCount: 1,
          childAspectRatio: (7),
          children: events.map((event) {
            return Container(
              child: _buildItem(event['description']),
            );
          }).toList(),
        ),
        persistentFooterButtons: [
          _buildRaisedButton("HISTORIAL"),
          _buildRaisedButton("AGENDAR")
        ],
        bottomNavigationBar: BottomNavigator());
  }

  RaisedButton _buildRaisedButton(String textButton) {
    return new RaisedButton(
      onPressed: () {},
      child: new Text(textButton,
          style: TextStyle(fontSize: 16, color: Colors.white)),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Color.fromRGBO(0, 83, 118, 1.0),
    );
  }

  Widget _buildItem(String textTitle) {
    return new ListTile(
      title: new Text(textTitle),
      leading: new Container(
        color: Colors.grey,
        child: new IconButton(
            icon: new Icon(Icons.event, color: Colors.white), onPressed: null),
      ),
      onTap: () {
        print(textTitle);
      },
    );
  }
}
